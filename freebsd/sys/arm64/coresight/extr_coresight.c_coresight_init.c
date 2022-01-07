
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_DEF ;
 int TAILQ_INIT (int *) ;
 int cs_devs ;
 int cs_mtx ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static void
coresight_init(void)
{

 mtx_init(&cs_mtx, "ARM Coresight", ((void*)0), MTX_DEF);
 TAILQ_INIT(&cs_devs);
}
