
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int key_created ;
 int logkey ;
 scalar_t__ ub_thread_key_get (int ) ;

int log_thread_get(void)
{
 unsigned int* tid;
 if(!key_created) return 0;
 tid = (unsigned int*)ub_thread_key_get(logkey);
 return (int)(tid?*tid:0);
}
