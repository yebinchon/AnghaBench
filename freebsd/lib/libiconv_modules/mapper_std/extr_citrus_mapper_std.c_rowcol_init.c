
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct _region {int dummy; } ;
struct _citrus_mapper_std_rowcol_ext_ilseq_info_x {int eix_dst_ilseq; int eix_oob_mode; } ;
struct _citrus_mapper_std_rowcol {int rc_src_rowcol_bits; int rc_src_rowcol_len; int rc_dst_unit_bits; struct _region rc_table; struct _citrus_mapper_std_linear_zone* rc_src_rowcol; void* rc_dst_ilseq; void* rc_oob_mode; void* rc_dst_invalid; } ;
struct _citrus_mapper_std_linear_zone {int width; } ;
struct _citrus_mapper_std {int ms_db; struct _citrus_mapper_std_rowcol ms_rowcol; int * ms_uninit; int * ms_convert; } ;


 int EFTYPE ;
 int ENOENT ;
 int UINT32_MAX ;
 void* _CITRUS_MAPPER_STD_OOB_NONIDENTICAL ;


 int _CITRUS_MAPPER_STD_SYM_INFO ;
 int _CITRUS_MAPPER_STD_SYM_ROWCOL_EXT_ILSEQ ;
 int _CITRUS_MAPPER_STD_SYM_TABLE ;
 int _db_lookup_by_s (int ,int ,struct _region*,int *) ;
 struct _citrus_mapper_std_rowcol_ext_ilseq_info_x* _region_head (struct _region*) ;
 int _region_size (struct _region*) ;
 void* be32toh (int ) ;
 int rowcol_convert ;
 int rowcol_parse_variable (struct _citrus_mapper_std_rowcol*,struct _region*) ;
 int rowcol_parse_variable_compat (struct _citrus_mapper_std_rowcol*,struct _region*) ;
 int rowcol_uninit ;

__attribute__((used)) static int
rowcol_init(struct _citrus_mapper_std *ms)
{
 struct _citrus_mapper_std_linear_zone *lz;
 struct _citrus_mapper_std_rowcol *rc;
 const struct _citrus_mapper_std_rowcol_ext_ilseq_info_x *eix;
 struct _region r;
 uint64_t table_size;
 size_t i;
 int ret;

 ms->ms_convert = &rowcol_convert;
 ms->ms_uninit = &rowcol_uninit;
 rc = &ms->ms_rowcol;


 ret = _db_lookup_by_s(ms->ms_db, _CITRUS_MAPPER_STD_SYM_TABLE,
     &rc->rc_table, ((void*)0));
 if (ret) {
  if (ret == ENOENT)
   ret = EFTYPE;
  return (ret);
 }


 ret = _db_lookup_by_s(ms->ms_db, _CITRUS_MAPPER_STD_SYM_INFO, &r, ((void*)0));
 if (ret) {
  if (ret == ENOENT)
   ret = EFTYPE;
  return (ret);
 }
 switch (_region_size(&r)) {
 case 129:
  ret = rowcol_parse_variable_compat(rc, &r);
  break;
 case 128:
  ret = rowcol_parse_variable(rc, &r);
  break;
 default:
  return (EFTYPE);
 }
 if (ret != 0)
  return (ret);

 switch (rc->rc_src_rowcol_bits) {
 case 8: case 16: case 32:
  if (rc->rc_src_rowcol_len <= 32 / rc->rc_src_rowcol_bits)
   break;

 default:
  return (EFTYPE);
 }


 rc->rc_oob_mode = _CITRUS_MAPPER_STD_OOB_NONIDENTICAL;
 rc->rc_dst_ilseq = rc->rc_dst_invalid;
 ret = _db_lookup_by_s(ms->ms_db,
     _CITRUS_MAPPER_STD_SYM_ROWCOL_EXT_ILSEQ, &r, ((void*)0));
 if (ret && ret != ENOENT)
  return (ret);
 if (_region_size(&r) < sizeof(*eix))
  return (EFTYPE);
 if (ret == 0) {
  eix = _region_head(&r);
  rc->rc_oob_mode = be32toh(eix->eix_oob_mode);
  rc->rc_dst_ilseq = be32toh(eix->eix_dst_ilseq);
 }


 i = rc->rc_src_rowcol_len;
 lz = &rc->rc_src_rowcol[--i];
 table_size = lz->width;
 while (i > 0) {
  lz = &rc->rc_src_rowcol[--i];
  table_size *= lz->width;
 }
 table_size *= rc->rc_dst_unit_bits/8;

 if (table_size > UINT32_MAX ||
     _region_size(&rc->rc_table) < table_size)
  return (EFTYPE);

 return (0);
}
