
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tss_t ;


 void* pthread_getspecific (int ) ;

void *
tss_get(tss_t key)
{

 return (pthread_getspecific(key));
}
