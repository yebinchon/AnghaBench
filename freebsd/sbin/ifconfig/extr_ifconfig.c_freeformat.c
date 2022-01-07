
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * f_addr ;
 int * f_ether ;
 int * f_inet ;
 int * f_inet6 ;
 int free (int *) ;

__attribute__((used)) static void freeformat(void)
{

 if (f_inet != ((void*)0))
  free(f_inet);
 if (f_inet6 != ((void*)0))
  free(f_inet6);
 if (f_ether != ((void*)0))
  free(f_ether);
 if (f_addr != ((void*)0))
  free(f_addr);
}
