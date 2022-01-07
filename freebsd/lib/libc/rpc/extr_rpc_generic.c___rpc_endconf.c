
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct handle {int nhandle; scalar_t__ nflag; } ;


 int endnetconfig (int ) ;
 int endnetpath (int ) ;
 int free (struct handle*) ;

void
__rpc_endconf(void *vhandle)
{
 struct handle *handle;

 handle = (struct handle *) vhandle;
 if (handle == ((void*)0)) {
  return;
 }
 if (handle->nflag) {
  endnetpath(handle->nhandle);
 } else {
  endnetconfig(handle->nhandle);
 }
 free(handle);
}
