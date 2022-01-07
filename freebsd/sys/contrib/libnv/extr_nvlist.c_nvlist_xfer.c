
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int nvlist_destroy (int *) ;
 int * nvlist_recv (int,int) ;
 scalar_t__ nvlist_send (int,int *) ;

nvlist_t *
nvlist_xfer(int sock, nvlist_t *nvl, int flags)
{

 if (nvlist_send(sock, nvl) < 0) {
  nvlist_destroy(nvl);
  return (((void*)0));
 }
 nvlist_destroy(nvl);
 return (nvlist_recv(sock, flags));
}
