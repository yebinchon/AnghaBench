
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pt_insn_ext {int dummy; } ;
struct pt_insn {int size; int truncated; scalar_t__ ip; int * raw; } ;
struct pt_image {int dummy; } ;
struct pt_asid {int dummy; } ;


 int pt_ild_decode (struct pt_insn*,struct pt_insn_ext*) ;
 int pt_image_read (struct pt_image*,int*,int *,int,struct pt_asid const*,scalar_t__) ;
 int pte_bad_insn ;
 int pte_internal ;
 int pte_nomap ;

__attribute__((used)) static int pt_insn_decode_retry(struct pt_insn *insn, struct pt_insn_ext *iext,
    struct pt_image *image,
    const struct pt_asid *asid)
{
 int size, errcode, isid;
 uint8_t isize, remaining;

 if (!insn)
  return -pte_internal;

 isize = insn->size;
 remaining = sizeof(insn->raw) - isize;




 if (!remaining)
  return -pte_bad_insn;


 size = pt_image_read(image, &isid, &insn->raw[isize], remaining, asid,
        insn->ip + isize);
 if (size <= 0) {



  if (!size)
   return -pte_internal;


  if (size == -pte_nomap)
   size = -pte_bad_insn;

  return size;
 }


 insn->size += (uint8_t) size;





 size = insn->size;







 errcode = pt_ild_decode(insn, iext);
 if (errcode < 0) {
  if (errcode != -pte_bad_insn)
   return errcode;




  if (insn->size != (uint8_t) size)
   return errcode;

  return pt_insn_decode_retry(insn, iext, image, asid);
 }
 insn->truncated = 1;

 return errcode;
}
