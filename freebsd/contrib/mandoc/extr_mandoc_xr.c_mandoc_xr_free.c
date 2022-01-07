
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int mandoc_xr_clear () ;
 int * xr_hash ;

void
mandoc_xr_free(void)
{
 mandoc_xr_clear();
 free(xr_hash);
 xr_hash = ((void*)0);
}
