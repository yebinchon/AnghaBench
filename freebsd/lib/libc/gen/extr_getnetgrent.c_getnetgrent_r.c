
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NSDB_NETGROUP ;
 int NS_SUCCESS ;
 int _nsdispatch (int *,int ,int ,char*,int ,char**,char**,char**,char*,size_t,int*) ;
 int defaultsrc ;
 int errno ;
 int getnetgrent_dtab ;

int
getnetgrent_r(char **hostp, char **userp, char **domp, char *buf, size_t bufsize)
{
 int rv, ret_errno;

 ret_errno = 0;
 rv = _nsdispatch(((void*)0), getnetgrent_dtab, NSDB_NETGROUP, "getnetgrent_r",
     defaultsrc, hostp, userp, domp, buf, bufsize, &ret_errno);
 if (rv == NS_SUCCESS) {
  return (1);
 } else {
  errno = ret_errno;
  return (0);
 }
}
