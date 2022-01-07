
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DTRACE_PRIV_USER ;
 int GID_WHEEL ;
 int UID_ROOT ;
 scalar_t__ dtrace_register (char*,int *,int ,int *,int *,int *,int *) ;
 int make_dev (int *,int ,int ,int ,int,char*) ;
 int prototype_attr ;
 int prototype_cdev ;
 int prototype_cdevsw ;
 int prototype_id ;
 int prototype_pops ;

__attribute__((used)) static void
prototype_load(void *dummy)
{

 prototype_cdev = make_dev(&prototype_cdevsw, 0, UID_ROOT, GID_WHEEL, 0600,
     "dtrace/prototype");

 if (dtrace_register("prototype", &prototype_attr, DTRACE_PRIV_USER,
     ((void*)0), &prototype_pops, ((void*)0), &prototype_id) != 0)
  return;
}
