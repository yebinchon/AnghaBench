
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fpn {int* fp_mant; int fp_sticky; int fp_sign; } ;
struct fpemu {int fe_fsr; int fe_cx; } ;


 int FPU_ADDC (int,int,int ) ;
 int FPU_ADDCS (int,int,int ) ;
 int FPU_ADDS (int,int,int) ;
 int FP_NG ;
 int FSR_GET_RD (int ) ;
 int FSR_NX ;





__attribute__((used)) static int
fpround(struct fpemu *fe, struct fpn *fp)
{
 u_int m0, m1, m2, m3;
 int gr, s;

 m0 = fp->fp_mant[0];
 m1 = fp->fp_mant[1];
 m2 = fp->fp_mant[2];
 m3 = fp->fp_mant[3];
 gr = m3 & 3;
 s = fp->fp_sticky;


 m3 = (m3 >> FP_NG) | (m2 << (32 - FP_NG));
 m2 = (m2 >> FP_NG) | (m1 << (32 - FP_NG));
 m1 = (m1 >> FP_NG) | (m0 << (32 - FP_NG));
 m0 >>= FP_NG;

 if ((gr | s) == 0)
  goto rounddown;

 fe->fe_cx |= FSR_NX;


 switch (FSR_GET_RD(fe->fe_fsr)) {
 case 131:
 default:





  if ((gr & 2) == 0)
   goto rounddown;
  if ((gr & 1) || fp->fp_sticky || (m3 & 1))
   break;
  goto rounddown;

 case 128:

  goto rounddown;

 case 130:

  if (fp->fp_sign)
   break;
  goto rounddown;

 case 129:

  if (!fp->fp_sign)
   break;
  goto rounddown;
 }


 FPU_ADDS(m3, m3, 1);
 FPU_ADDCS(m2, m2, 0);
 FPU_ADDCS(m1, m1, 0);
 FPU_ADDC(m0, m0, 0);
 fp->fp_mant[0] = m0;
 fp->fp_mant[1] = m1;
 fp->fp_mant[2] = m2;
 fp->fp_mant[3] = m3;
 return (1);

rounddown:
 fp->fp_mant[0] = m0;
 fp->fp_mant[1] = m1;
 fp->fp_mant[2] = m2;
 fp->fp_mant[3] = m3;
 return (0);
}
