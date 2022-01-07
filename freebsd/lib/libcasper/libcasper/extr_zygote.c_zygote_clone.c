
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvlist_t ;


 int ENXIO ;
 int errno ;
 int nvlist_add_number (int *,char*,int ) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;
 scalar_t__ nvlist_exists_number (int *,char*) ;
 scalar_t__ nvlist_get_number (int *,char*) ;
 int nvlist_take_descriptor (int *,char*) ;
 int * nvlist_xfer (int,int *,int ) ;
 int zygote_sock ;

int
zygote_clone(uint64_t funcidx, int *chanfdp, int *procfdp)
{
 nvlist_t *nvl;
 int error;

 if (zygote_sock == -1) {

  errno = ENXIO;
  return (-1);
 }

 nvl = nvlist_create(0);
 nvlist_add_number(nvl, "funcidx", funcidx);
 nvl = nvlist_xfer(zygote_sock, nvl, 0);
 if (nvl == ((void*)0))
  return (-1);
 if (nvlist_exists_number(nvl, "error")) {
  error = (int)nvlist_get_number(nvl, "error");
  nvlist_destroy(nvl);
  errno = error;
  return (-1);
 }

 *chanfdp = nvlist_take_descriptor(nvl, "chanfd");
 *procfdp = nvlist_take_descriptor(nvl, "procfd");

 nvlist_destroy(nvl);
 return (0);
}
