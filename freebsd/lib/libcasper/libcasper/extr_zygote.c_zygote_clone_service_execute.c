
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZYGOTE_SERVICE_EXECUTE ;
 int zygote_clone (int ,int*,int*) ;

int
zygote_clone_service_execute(int *chanfdp, int *procfdp)
{

 return (zygote_clone(ZYGOTE_SERVICE_EXECUTE, chanfdp, procfdp));
}
