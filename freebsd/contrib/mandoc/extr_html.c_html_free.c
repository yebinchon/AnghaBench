
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 int html_reset_internal (void*) ;

void
html_free(void *p)
{
 html_reset_internal(p);
 free(p);
}
