
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int key_created ;
 int log_lock ;

void* log_get_lock(void)
{
 if(!key_created)
  return ((void*)0);

 return (void*)&log_lock;



}
