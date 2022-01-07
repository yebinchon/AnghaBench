
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sm_magic; int * f_type; } ;


 int Sm_IO_DidInit ;
 int atexit (int ) ;
 TYPE_1__ empty ;
 int sm_cleanup ;

void
sm_init()
{
 if (Sm_IO_DidInit)
  return;


 empty.f_type = ((void*)0);
 empty.sm_magic = ((void*)0);


 atexit(sm_cleanup);
 Sm_IO_DidInit = 1;
}
