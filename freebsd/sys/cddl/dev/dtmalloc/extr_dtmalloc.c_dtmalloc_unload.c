
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_dev (int ) ;
 int dtmalloc_cdev ;
 int dtmalloc_id ;
 int * dtrace_malloc_probe ;
 int dtrace_unregister (int ) ;

__attribute__((used)) static int
dtmalloc_unload()
{
 int error = 0;

 dtrace_malloc_probe = ((void*)0);

 if ((error = dtrace_unregister(dtmalloc_id)) != 0)
  return (error);

 destroy_dev(dtmalloc_cdev);

 return (error);
}
