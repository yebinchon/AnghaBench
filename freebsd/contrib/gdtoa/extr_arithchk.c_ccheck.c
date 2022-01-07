
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Akind ;


 int CRAY ;
 char* emptyfmt ;
 scalar_t__ printf (char*,...) ;

__attribute__((used)) static Akind *
ccheck()
{
 union {
  double d;
  long L;
  } u;
 long Cray1;


 Cray1 = printf(emptyfmt) < 0 ? 0 : 4617762;
 if (printf(emptyfmt, Cray1) >= 0)
  Cray1 = 1000000*Cray1 + 693716;
 if (printf(emptyfmt, Cray1) >= 0)
  Cray1 = 1000000*Cray1 + 115456;
 u.d = 1e13;
 if (u.L == Cray1)
  return &CRAY;
 return 0;
 }
