
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct _region {int dummy; } ;
struct _citrus_mapper_std_rowcol_info_compat_x {int rcx_src_col_end; int rcx_src_col_begin; int rcx_src_row_end; int rcx_src_row_begin; int rcx_src_col_bits; int rcx_dst_unit_bits; int rcx_dst_invalid; } ;
struct _citrus_mapper_std_rowcol {int rc_src_rowcol_bits; int rc_src_rowcol_mask; int rc_src_rowcol_len; struct _citrus_mapper_std_linear_zone* rc_src_rowcol; void* rc_dst_unit_bits; void* rc_dst_invalid; } ;
struct _citrus_mapper_std_linear_zone {int dummy; } ;


 int ENOMEM ;
 struct _citrus_mapper_std_rowcol_info_compat_x* _region_head (struct _region*) ;
 void* be32toh (int ) ;
 int free (struct _citrus_mapper_std_linear_zone*) ;
 struct _citrus_mapper_std_linear_zone* malloc (int) ;
 int set_linear_zone (struct _citrus_mapper_std_linear_zone*,int,int) ;

__attribute__((used)) static __inline int
rowcol_parse_variable_compat(struct _citrus_mapper_std_rowcol *rc,
    struct _region *r)
{
 const struct _citrus_mapper_std_rowcol_info_compat_x *rcx;
 struct _citrus_mapper_std_linear_zone *lz;
 uint32_t m, n;
 int ret;

 rcx = _region_head(r);

 rc->rc_dst_invalid = be32toh(rcx->rcx_dst_invalid);
 rc->rc_dst_unit_bits = be32toh(rcx->rcx_dst_unit_bits);
 m = be32toh(rcx->rcx_src_col_bits);
 n = 1U << (m - 1);
 n |= n - 1;
 rc->rc_src_rowcol_bits = m;
 rc->rc_src_rowcol_mask = n;

 rc->rc_src_rowcol = malloc(2 *
     sizeof(*rc->rc_src_rowcol));
 if (rc->rc_src_rowcol == ((void*)0))
  return (ENOMEM);
 lz = rc->rc_src_rowcol;
 rc->rc_src_rowcol_len = 1;
 m = be32toh(rcx->rcx_src_row_begin);
 n = be32toh(rcx->rcx_src_row_end);
 if (m + n > 0) {
  ret = set_linear_zone(lz, m, n);
  if (ret != 0) {
   free(rc->rc_src_rowcol);
   rc->rc_src_rowcol = ((void*)0);
   return (ret);
  }
  ++rc->rc_src_rowcol_len, ++lz;
 }
 m = be32toh(rcx->rcx_src_col_begin);
 n = be32toh(rcx->rcx_src_col_end);

 return (set_linear_zone(lz, m, n));
}
