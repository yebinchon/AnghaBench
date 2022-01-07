
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DTRACE_PRIV_USER ;
 int GID_WHEEL ;
 int UID_ROOT ;
 int dtmalloc_attr ;
 int dtmalloc_cdev ;
 int dtmalloc_cdevsw ;
 int dtmalloc_id ;
 int dtmalloc_pops ;
 int dtrace_malloc_probe ;
 int dtrace_probe ;
 scalar_t__ dtrace_register (char*,int *,int ,int *,int *,int *,int *) ;
 int make_dev (int *,int ,int ,int ,int,char*) ;

__attribute__((used)) static void
dtmalloc_load(void *dummy)
{

 dtmalloc_cdev = make_dev(&dtmalloc_cdevsw, 0, UID_ROOT, GID_WHEEL, 0600,
     "dtrace/dtmalloc");

 if (dtrace_register("dtmalloc", &dtmalloc_attr, DTRACE_PRIV_USER,
     ((void*)0), &dtmalloc_pops, ((void*)0), &dtmalloc_id) != 0)
  return;

 dtrace_malloc_probe = dtrace_probe;
}
