
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef union ses_elm_sas_hdr {int dummy; } ses_elm_sas_hdr ;
typedef int uint8_t ;
struct TYPE_10__ {TYPE_2__* ses_types; } ;
typedef TYPE_3__ ses_cache_t ;
typedef int enc_softc_t ;
struct TYPE_11__ {TYPE_3__* private; } ;
typedef TYPE_4__ enc_cache_t ;
struct TYPE_9__ {TYPE_1__* hdr; } ;
struct TYPE_8__ {int etype_elm_type; } ;


 int EIO ;






 int ENC_VLOG (int *,char*,int,int ,...) ;
 int ENODEV ;


 int ses_elm_sas_descr_type (union ses_elm_sas_hdr*) ;
 int ses_get_elm_addlstatus_sas_type0 (int *,TYPE_4__*,int *,int,int,int) ;
 int ses_get_elm_addlstatus_sas_type1 (int *,TYPE_4__*,int *,int,int,int) ;

__attribute__((used)) static int
ses_get_elm_addlstatus_sas(enc_softc_t *enc, enc_cache_t *enc_cache,
      uint8_t *buf, int bufsiz, int eip, int tidx,
      int nobj)
{
 int dtype, err;
 ses_cache_t *ses_cache;
 union ses_elm_sas_hdr *hdr;


 if (bufsiz < sizeof(union ses_elm_sas_hdr)) {
  err = EIO;
  goto out;
 }

 ses_cache = enc_cache->private;

 hdr = (union ses_elm_sas_hdr *)buf;
 dtype = ses_elm_sas_descr_type(hdr);
 switch(dtype) {
 case 128:
  switch(ses_cache->ses_types[tidx].hdr->etype_elm_type) {
  case 134:
  case 135:
   break;
  default:
   ENC_VLOG(enc, "Element %d has Additional Status type 0, "
       "invalid for SES element type 0x%x\n", nobj,
       ses_cache->ses_types[tidx].hdr->etype_elm_type);
   err = ENODEV;
   goto out;
  }
  err = ses_get_elm_addlstatus_sas_type0(enc, enc_cache,
             buf, bufsiz, eip,
      nobj);
  break;
 case 129:
  switch(ses_cache->ses_types[tidx].hdr->etype_elm_type) {
  case 132:
  case 131:
  case 130:
  case 133:
   break;
  default:
   ENC_VLOG(enc, "Element %d has Additional Status type 1, "
       "invalid for SES element type 0x%x\n", nobj,
       ses_cache->ses_types[tidx].hdr->etype_elm_type);
   err = ENODEV;
   goto out;
  }
  err = ses_get_elm_addlstatus_sas_type1(enc, enc_cache, buf,
             bufsiz, eip, nobj);
  break;
 default:
  ENC_VLOG(enc, "Element %d of type 0x%x has Additional Status "
      "of unknown type 0x%x\n", nobj,
      ses_cache->ses_types[tidx].hdr->etype_elm_type, dtype);
  err = ENODEV;
  break;
 }

out:
 return (err);
}
