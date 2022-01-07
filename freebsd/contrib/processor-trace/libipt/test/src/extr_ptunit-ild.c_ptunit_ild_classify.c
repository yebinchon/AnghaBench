
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ptunit_result {int dummy; } ;
struct pt_insn_ext {int mode; int iclass; int size; int raw; } ;
struct pt_insn {int mode; int iclass; int size; int raw; } ;
typedef int pti_inst_enum_t ;
typedef int insn ;
typedef int iext ;
typedef enum pt_exec_mode { ____Placeholder_pt_exec_mode } pt_exec_mode ;


 int memcpy (int ,int *,int ) ;
 int memset (struct pt_insn_ext*,int ,int) ;
 int pt_ild_decode (struct pt_insn_ext*,struct pt_insn_ext*) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int ,int ) ;

__attribute__((used)) static struct ptunit_result ptunit_ild_classify(uint8_t *raw, uint8_t size,
      enum pt_exec_mode mode,
      pti_inst_enum_t iclass)
{
 struct pt_insn_ext iext;
 struct pt_insn insn;
 int errcode;

 memset(&iext, 0, sizeof(iext));
 memset(&insn, 0, sizeof(insn));

 memcpy(insn.raw, raw, size);
 insn.size = size;
 insn.mode = mode;

 errcode = pt_ild_decode(&insn, &iext);
 ptu_int_eq(errcode, 0);

 ptu_uint_eq(insn.size, size);
 ptu_int_eq(iext.iclass, iclass);

 return ptu_passed();
}
