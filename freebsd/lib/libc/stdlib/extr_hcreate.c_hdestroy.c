
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int global_hashtable ;
 int global_hashtable_initialized ;
 int hdestroy_r (int *) ;

void
hdestroy(void)
{


 if (global_hashtable_initialized) {
  hdestroy_r(&global_hashtable);
  global_hashtable_initialized = 0;
 }
}
