
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int conn_t ;


 int DEBUGF (char*,char const*) ;
 int asprintf (char**,char*,char const*,char const*) ;
 int free (char*) ;
 char* http_base64 (char*) ;
 int http_cmd (int *,char*,char const*,char*) ;

__attribute__((used)) static int
http_basic_auth(conn_t *conn, const char *hdr, const char *usr, const char *pwd)
{
 char *upw, *auth;
 int r;

 DEBUGF("basic: usr: [%s]\n", usr);
 DEBUGF("basic: pwd: [%s]\n", pwd);
 if (asprintf(&upw, "%s:%s", usr, pwd) == -1)
  return (-1);
 auth = http_base64(upw);
 free(upw);
 if (auth == ((void*)0))
  return (-1);
 r = http_cmd(conn, "%s: Basic %s", hdr, auth);
 free(auth);
 return (r);
}
