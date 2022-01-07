
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ c_type; } ;


 scalar_t__ TS_BITS ;
 scalar_t__ TS_CLRI ;
 int skipfile () ;
 TYPE_1__ spcl ;

void
skipmaps(void)
{

 while (spcl.c_type == TS_BITS || spcl.c_type == TS_CLRI)
  skipfile();
}
