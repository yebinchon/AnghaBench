
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_SPIN ;
 int mtx_init (int *,char*,int *,int ) ;
 int pcicfg_mtx ;

__attribute__((used)) static void
mv_pcib_hw_cfginit(void)
{
 static int opened = 0;

 if (opened)
  return;

 mtx_init(&pcicfg_mtx, "pcicfg", ((void*)0), MTX_SPIN);
 opened = 1;
}
