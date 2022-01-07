
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;


 int NSDB_GROUP ;
 int NS_SUCCESS ;
 int _nsdispatch (struct group**,int ,int ,char*,int ,struct group*,char*,size_t,int*) ;
 int defaultsrc ;
 int getgrent_r_dtab ;

int
getgrent_r(struct group *grp, char *buffer, size_t bufsize,
    struct group **result)
{
 int rv, ret_errno;

 ret_errno = 0;
 *result = ((void*)0);
 rv = _nsdispatch(result, getgrent_r_dtab, NSDB_GROUP, "getgrent_r", defaultsrc,
     grp, buffer, bufsize, &ret_errno);
 if (rv == NS_SUCCESS)
  return (0);
 else
  return (ret_errno);
}
