
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;
 size_t NGRP_STORAGE_INITIAL ;
 size_t NGRP_STORAGE_MAX ;
 int NSDB_NETGROUP ;
 int NS_SUCCESS ;
 int _nsdispatch (int *,int ,int ,char*,int ,char**,char**,char**,char*,size_t,int*) ;
 int defaultsrc ;
 int errno ;
 int free (char*) ;
 int getnetgrent_dtab ;
 char* malloc (size_t) ;
 char* reallocf (char*,size_t) ;

int
getnetgrent(char **hostp, char **userp, char **domp)
{
 static char *ngrp_storage;
 static size_t ngrp_storage_size;
 int ret_errno, rv;

 if (ngrp_storage == ((void*)0)) {
  ngrp_storage_size = NGRP_STORAGE_INITIAL;
  ngrp_storage = malloc(ngrp_storage_size);
  if (ngrp_storage == ((void*)0))
   return (0);
 }

 do {
  ret_errno = 0;
  rv = _nsdispatch(((void*)0), getnetgrent_dtab, NSDB_NETGROUP,
      "getnetgrent_r", defaultsrc, hostp, userp, domp,
      ngrp_storage, ngrp_storage_size, &ret_errno);
  if (rv != NS_SUCCESS && ret_errno == ERANGE) {
   ngrp_storage_size *= 2;
   if (ngrp_storage_size > NGRP_STORAGE_MAX) {
    free(ngrp_storage);
    ngrp_storage = ((void*)0);
    errno = ERANGE;
    return (0);
   }
   ngrp_storage = reallocf(ngrp_storage,
       ngrp_storage_size);
   if (ngrp_storage == ((void*)0))
    return (0);
  }
 } while (rv != NS_SUCCESS && ret_errno == ERANGE);

 if (rv == NS_SUCCESS) {
  return (1);
 } else {
  errno = ret_errno;
  return (0);
 }
}
