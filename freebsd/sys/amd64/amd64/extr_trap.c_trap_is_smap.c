
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_err; int tf_rflags; } ;


 int CPUID_STDEXT_SMAP ;
 int PGEX_I ;
 int PGEX_P ;
 int PGEX_RSV ;
 int PGEX_U ;
 int PSL_AC ;
 int cpu_stdext_feature ;

__attribute__((used)) static bool
trap_is_smap(struct trapframe *frame)
{
 return ((cpu_stdext_feature & CPUID_STDEXT_SMAP) != 0 &&
     (frame->tf_err & (PGEX_P | PGEX_U | PGEX_I | PGEX_RSV)) ==
     PGEX_P && (frame->tf_rflags & PSL_AC) == 0);
}
