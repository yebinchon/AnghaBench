
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct fpemu {int fe_cx; int fe_fsr; } ;


 int FSR_AEXC_SHIFT ;
 int FSR_CEXC_SHIFT ;
 int FSR_FTT (int ) ;
 int FSR_FTT_IEEE ;
 int FSR_FTT_MASK ;
 int FSR_NV ;
 int FSR_TEM_SHIFT ;
 int SIGFPE ;

__attribute__((used)) static int
__fpu_cmpck(struct fpemu *fe)
{
 u_long fsr;
 int cx;





 cx = fe->fe_cx;
 fsr = fe->fe_fsr | (cx << FSR_CEXC_SHIFT);
 if (cx != 0) {
  if (fsr & (FSR_NV << FSR_TEM_SHIFT)) {
   fe->fe_fsr = (fsr & ~FSR_FTT_MASK) |
       FSR_FTT(FSR_FTT_IEEE);
   return (SIGFPE);
  }
  fsr |= FSR_NV << FSR_AEXC_SHIFT;
 }
 fe->fe_fsr = fsr;
 return (0);
}
