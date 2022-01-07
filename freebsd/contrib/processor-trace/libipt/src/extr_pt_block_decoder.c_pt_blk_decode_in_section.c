
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct pt_mapped_section {int dummy; } ;
struct pt_insn_ext {int dummy; } ;
struct pt_insn {scalar_t__ size; int ip; int raw; } ;


 int pt_ild_decode (struct pt_insn*,struct pt_insn_ext*) ;
 int pt_msec_read (struct pt_mapped_section const*,int ,int,int ) ;
 int pte_internal ;

__attribute__((used)) static int pt_blk_decode_in_section(struct pt_insn *insn,
        struct pt_insn_ext *iext,
        const struct pt_mapped_section *msec)
{
 int status;

 if (!insn || !iext)
  return -pte_internal;





 status = pt_msec_read(msec, insn->raw, sizeof(insn->raw), insn->ip);
 if (status < 0)
  return status;




 insn->size = (uint8_t) status;

 return pt_ild_decode(insn, iext);
}
