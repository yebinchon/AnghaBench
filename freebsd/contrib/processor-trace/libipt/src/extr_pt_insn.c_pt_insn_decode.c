
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pt_insn_ext {int dummy; } ;
struct pt_insn {int size; int ip; int raw; int isid; } ;
struct pt_image {int dummy; } ;
struct pt_asid {int dummy; } ;


 int pt_ild_decode (struct pt_insn*,struct pt_insn_ext*) ;
 int pt_image_read (struct pt_image*,int *,int ,int,struct pt_asid const*,int ) ;
 int pt_insn_decode_retry (struct pt_insn*,struct pt_insn_ext*,struct pt_image*,struct pt_asid const*) ;
 int pte_bad_insn ;
 int pte_internal ;

int pt_insn_decode(struct pt_insn *insn, struct pt_insn_ext *iext,
     struct pt_image *image, const struct pt_asid *asid)
{
 int size, errcode;

 if (!insn)
  return -pte_internal;


 size = pt_image_read(image, &insn->isid, insn->raw, sizeof(insn->raw),
        asid, insn->ip);
 if (size < 0)
  return size;




 insn->size = (uint8_t) size;

 errcode = pt_ild_decode(insn, iext);
 if (errcode < 0) {
  if (errcode != -pte_bad_insn)
   return errcode;




  if (insn->size != (uint8_t) size)
   return errcode;

  return pt_insn_decode_retry(insn, iext, image, asid);
 }

 return errcode;
}
