
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DTRACE_PRIV_USER ;
 int GID_WHEEL ;
 int UID_ROOT ;
 scalar_t__ dtrace_register (char*,int *,int ,int *,int *,int *,int *) ;
 int make_dev (int *,int ,int ,int ,int,char*) ;
 int profile_attr ;
 int profile_cdev ;
 int profile_cdevsw ;
 int profile_id ;
 int profile_pops ;

__attribute__((used)) static void
profile_load(void *dummy)
{

 profile_cdev = make_dev(&profile_cdevsw, 0, UID_ROOT, GID_WHEEL, 0600,
     "dtrace/profile");

 if (dtrace_register("profile", &profile_attr, DTRACE_PRIV_USER,
     ((void*)0), &profile_pops, ((void*)0), &profile_id) != 0)
  return;
}
