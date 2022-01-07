
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __crt_free (void*) ;

void
free(void *cp)
{

 __crt_free(cp);
}
