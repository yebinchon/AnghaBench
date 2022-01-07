
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct ses_iterator {int global_element_index; int type_index; } ;
struct ses_control_page_hdr {int control_flags; } ;
struct ses_comstat {int dummy; } ;
struct TYPE_10__ {int comstatus; int * comstat; } ;
struct TYPE_8__ {int elm_idx; TYPE_6__ elm_stat; } ;
typedef TYPE_1__ ses_control_request_t ;
struct TYPE_9__ {int enc_cache; } ;
typedef TYPE_2__ enc_softc_t ;
typedef int enc_element_t ;


 int EIO ;
 int ENC_DLOG (TYPE_2__*,char*,int,...) ;
 int ENXIO ;
 int SES_ELEM_INDEX_GLOBAL ;
 int SES_SET_STATUS_MASK ;
 int memcpy (int *,TYPE_6__*,int) ;
 int ses_iter_init (TYPE_2__*,int *,struct ses_iterator*) ;
 int * ses_iter_seek_to (struct ses_iterator*,int,int ) ;

__attribute__((used)) static int
ses_encode(enc_softc_t *enc, uint8_t *buf, int amt, ses_control_request_t *req)
{
 struct ses_iterator iter;
 enc_element_t *element;
 int offset;
 struct ses_control_page_hdr *hdr;

 ses_iter_init(enc, &enc->enc_cache, &iter);
 hdr = (struct ses_control_page_hdr *)buf;
 if (req->elm_idx == -1) {

  if (amt < 2)
   return EIO;
  hdr->control_flags =
      req->elm_stat.comstatus & SES_SET_STATUS_MASK;
  ENC_DLOG(enc, "Set EncStat %x\n", hdr->control_flags);
  return (0);
 }

 element = ses_iter_seek_to(&iter, req->elm_idx, SES_ELEM_INDEX_GLOBAL);
 if (element == ((void*)0))
  return (ENXIO);





 offset = sizeof(struct ses_control_page_hdr)
        + (iter.global_element_index * sizeof(struct ses_comstat));


 if (offset + sizeof(struct ses_comstat) > amt)
  return (EIO);


 memcpy(&buf[offset], &req->elm_stat, sizeof(struct ses_comstat));

 ENC_DLOG(enc, "Set Type 0x%x Obj 0x%x (offset %d) with %x %x %x %x\n",
     iter.type_index, iter.global_element_index, offset,
     req->elm_stat.comstatus, req->elm_stat.comstat[0],
     req->elm_stat.comstat[1], req->elm_stat.comstat[2]);

 return (0);
}
