
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpn {scalar_t__* fp_mant; scalar_t__ fp_sign; int fp_class; } ;
struct fpemu {struct fpn fe_f3; int fe_cx; } ;


 int FPC_QNAN ;
 scalar_t__ FP_1 ;
 int FSR_NV ;

struct fpn *
__fpu_newnan(struct fpemu *fe)
{
 struct fpn *fp;

 fe->fe_cx = FSR_NV;
 fp = &fe->fe_f3;
 fp->fp_class = FPC_QNAN;
 fp->fp_sign = 0;
 fp->fp_mant[0] = FP_1 - 1;
 fp->fp_mant[1] = fp->fp_mant[2] = fp->fp_mant[3] = ~0;
 return (fp);
}
