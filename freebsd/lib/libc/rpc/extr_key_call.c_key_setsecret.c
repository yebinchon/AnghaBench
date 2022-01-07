
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
typedef int u_long ;
typedef scalar_t__ keystatus ;


 scalar_t__ KEY_SET ;
 scalar_t__ KEY_SUCCESS ;
 int debug (char*) ;
 int key_call (int ,int ,void*,int ,scalar_t__*) ;
 scalar_t__ xdr_keybuf ;
 scalar_t__ xdr_keystatus ;

int
key_setsecret(const char *secretkey)
{
 keystatus status;

 if (!key_call((u_long) KEY_SET, (xdrproc_t)xdr_keybuf,
   (void *)secretkey,
   (xdrproc_t)xdr_keystatus, &status)) {
  return (-1);
 }
 if (status != KEY_SUCCESS) {
  debug("set status is nonzero");
  return (-1);
 }
 return (0);
}
