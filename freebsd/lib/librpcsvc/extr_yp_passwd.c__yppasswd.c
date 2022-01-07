
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct x_passwd {int dummy; } ;
struct yppasswd {char* oldpass; struct x_passwd newpw; } ;


 int IPPORT_RESERVED ;
 int IPPROTO_UDP ;
 int YPPASSWDPROC_UPDATE ;
 int YPPASSWDPROG ;
 int YPPASSWDVERS ;
 int callrpc (char*,int ,int ,int ,int ,char*,int ,char*) ;
 int free (char*) ;
 int getrpcport (char*,int ,int ,int ) ;
 scalar_t__ xdr_int ;
 scalar_t__ xdr_yppasswd ;
 scalar_t__ yp_get_default_domain (char**) ;
 scalar_t__ yp_master (char*,char*,char**) ;

int
_yppasswd(char *oldpass, struct x_passwd *newpw)
{
 char *server;
 char *domain;
 int rval, result;
 struct yppasswd yppasswd;

 yppasswd.newpw = *newpw;
 yppasswd.oldpass = oldpass;

 if (yp_get_default_domain(&domain))
  return (-1);

 if (yp_master(domain, "passwd.byname", &server))
  return(-1);

 rval = getrpcport(server, YPPASSWDPROG,
    YPPASSWDPROC_UPDATE, IPPROTO_UDP);

 if (rval == 0 || rval >= IPPORT_RESERVED) {
  free(server);
  return(-1);
 }

 rval = callrpc(server, YPPASSWDPROG, YPPASSWDVERS, YPPASSWDPROC_UPDATE,
         (xdrproc_t)xdr_yppasswd, (char *)&yppasswd,
         (xdrproc_t)xdr_int, (char *)&result);

 free(server);
 if (rval || result)
  return(-1);
 else
  return(0);
}
