
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * password; int * user; int * realm; int * scheme; } ;
typedef TYPE_1__ http_auth_params_t ;


 int clean_http_auth_params (TYPE_1__*) ;
 int fetch_syserr () ;
 int free (char*) ;
 char* strchr (char*,char) ;
 void* strdup (char const*) ;

__attribute__((used)) static int
http_authfromenv(const char *p, http_auth_params_t *parms)
{
 int ret = -1;
 char *v, *ve;
 char *str = strdup(p);

 if (str == ((void*)0)) {
  fetch_syserr();
  return (-1);
 }
 v = str;

 if ((ve = strchr(v, ':')) == ((void*)0))
  goto out;

 *ve = 0;
 if ((parms->scheme = strdup(v)) == ((void*)0)) {
  fetch_syserr();
  goto out;
 }
 v = ve + 1;

 if ((ve = strchr(v, ':')) == ((void*)0))
  goto out;

 *ve = 0;
 if ((parms->realm = strdup(v)) == ((void*)0)) {
  fetch_syserr();
  goto out;
 }
 v = ve + 1;

 if ((ve = strchr(v, ':')) == ((void*)0))
  goto out;

 *ve = 0;
 if ((parms->user = strdup(v)) == ((void*)0)) {
  fetch_syserr();
  goto out;
 }
 v = ve + 1;


 if ((parms->password = strdup(v)) == ((void*)0)) {
  fetch_syserr();
  goto out;
 }
 ret = 0;
out:
 if (ret == -1)
  clean_http_auth_params(parms);
 if (str)
  free(str);
 return (ret);
}
