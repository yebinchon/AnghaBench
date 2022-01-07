
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct suj_ino {struct jtrncrec* si_trunc; } ;
struct jtrncrec {int jt_op; scalar_t__ jt_size; scalar_t__ jt_ino; } ;


 scalar_t__ JOP_SYNC ;
 scalar_t__ debug ;
 struct suj_ino* ino_lookup (scalar_t__,int) ;
 int printf (char*,int,int ,int ) ;

__attribute__((used)) static void
ino_build_trunc(struct jtrncrec *rec)
{
 struct suj_ino *sino;

 if (debug)
  printf("ino_build_trunc: op %d ino %ju, size %jd\n",
      rec->jt_op, (uintmax_t)rec->jt_ino,
      (uintmax_t)rec->jt_size);
 sino = ino_lookup(rec->jt_ino, 1);
 if (rec->jt_op == JOP_SYNC) {
  sino->si_trunc = ((void*)0);
  return;
 }
 if (sino->si_trunc == ((void*)0) || sino->si_trunc->jt_size > rec->jt_size)
  sino->si_trunc = rec;
}
