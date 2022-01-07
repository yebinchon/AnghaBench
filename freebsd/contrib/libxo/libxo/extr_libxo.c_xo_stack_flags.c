
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_xsf_flags_t ;
typedef int xo_xof_flags_t ;


 int XOF_DTRT ;
 int XSF_DTRT ;

__attribute__((used)) static xo_xsf_flags_t
xo_stack_flags (xo_xof_flags_t xflags)
{
    if (xflags & XOF_DTRT)
 return XSF_DTRT;
    return 0;
}
