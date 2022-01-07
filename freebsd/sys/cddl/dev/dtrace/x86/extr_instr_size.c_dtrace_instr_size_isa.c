
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar_t ;
typedef int model_t ;


 int DIS_ISIZE_INSTR ;
 int dtrace_dis_isize (int *,int ,int ,int*) ;

int
dtrace_instr_size_isa(uchar_t *instr, model_t model, int *rmindex)
{
 return (dtrace_dis_isize(instr, DIS_ISIZE_INSTR, model, rmindex));
}
