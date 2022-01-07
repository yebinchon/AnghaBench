
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Giant ;
 int MTX_DEF ;
 int MTX_RECURSE ;
 int mtx_init (int *,char*,int *,int) ;

__attribute__((used)) static void
mtx_system_init(void *arg)
{
 mtx_init(&Giant, "Giant", ((void*)0), MTX_DEF | MTX_RECURSE);
}
