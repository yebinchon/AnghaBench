
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;


 int * key_blob ;
 scalar_t__ key_bloblen ;
 scalar_t__ timingsafe_bcmp (int *,int *,scalar_t__) ;

__attribute__((used)) static int
monitor_allowed_key(u_char *blob, u_int bloblen)
{

 if (key_blob == ((void*)0) || key_bloblen != bloblen ||
     timingsafe_bcmp(key_blob, blob, key_bloblen))
  return (0);
 return (1);
}
