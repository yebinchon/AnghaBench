
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* member_0; int member_1; } ;
typedef TYPE_1__ ns_src ;


 int ERANGE ;
 size_t NGRP_STORAGE_INITIAL ;
 size_t NGRP_STORAGE_MAX ;
 int NSDB_NETGROUP ;
 int NS_NOTFOUND ;
 int NS_RETURN ;
 int NS_SUCCESS ;
 int NS_UNAVAIL ;
 int _nsdispatch (int *,int ,int ,char*,TYPE_1__ const*,...) ;
 int endnetgrent_dtab ;
 int free (char*) ;
 int getnetgrent_dtab ;
 char* malloc (size_t) ;
 char* reallocf (char*,size_t) ;
 int setnetgrent_dtab ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
_innetgr_fallback(void *retval, void *mdata, const char *group, const char *host,
    const char *user, const char *dom)
{
 const ns_src src[] = {
  { mdata, NS_SUCCESS },
  { ((void*)0), 0 },
 };
 char *h, *u, *d;
 char *buf;
 size_t bufsize;
 int rv, ret_errno;

 if (group == ((void*)0) || group[0] == '\0')
  return (NS_RETURN);

 bufsize = NGRP_STORAGE_INITIAL;
 buf = malloc(bufsize);
 if (buf == ((void*)0))
  return (NS_UNAVAIL);

 *(int *)retval = 0;

 (void)_nsdispatch(((void*)0), setnetgrent_dtab, NSDB_NETGROUP, "setnetgrent",
     src, group);

 for (;;) {
  do {
   ret_errno = 0;
   rv = _nsdispatch(((void*)0), getnetgrent_dtab, NSDB_NETGROUP,
       "getnetgrent_r", src, &h, &u, &d, buf, bufsize,
       &ret_errno);
   if (rv != NS_SUCCESS && ret_errno == ERANGE) {
    bufsize *= 2;
    if (bufsize > NGRP_STORAGE_MAX ||
        (buf = reallocf(buf, bufsize)) == ((void*)0))
     goto out;
   }
  } while (rv != NS_SUCCESS && ret_errno == ERANGE);

  if (rv != NS_SUCCESS) {
   if (rv == NS_NOTFOUND && ret_errno == 0)
    rv = NS_SUCCESS;
   break;
  }

  if ((host == ((void*)0) || h == ((void*)0) || strcmp(host, h) == 0) &&
      (user == ((void*)0) || u == ((void*)0) || strcmp(user, u) == 0) &&
      (dom == ((void*)0) || d == ((void*)0) || strcmp(dom, d) == 0)) {
   *(int *)retval = 1;
   break;
  }
 }

out:
 free(buf);
 (void)_nsdispatch(((void*)0), endnetgrent_dtab, NSDB_NETGROUP, "endnetgrent",
     src);
 return (rv);
}
