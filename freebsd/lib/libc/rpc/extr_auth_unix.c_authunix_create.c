
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct timeval {int tv_sec; } ;
struct authunix_parms {char* aup_machname; int aup_uid; int aup_gid; int aup_len; int* aup_gids; int aup_time; } ;
struct TYPE_2__ {int oa_length; struct audata* oa_base; int oa_flavor; } ;
struct audata {TYPE_1__ au_origcred; TYPE_1__ ah_cred; scalar_t__ au_shfaults; int au_shcred; int ah_verf; scalar_t__ ah_private; int ah_ops; } ;
typedef scalar_t__ caddr_t ;
typedef int XDR ;
typedef struct audata AUTH ;


 int AUTH_UNIX ;
 int MAX_AUTH_BYTES ;
 int XDR_ENCODE ;
 int XDR_GETPOS (int *) ;
 int _null_auth ;
 int abort () ;
 int authunix_ops () ;
 int gettimeofday (struct timeval*,int *) ;
 int marshal_new_auth (struct audata*) ;
 void* mem_alloc (int) ;
 int mem_free (struct audata*,int) ;
 int memmove (struct audata*,char*,size_t) ;
 int warnx (char*) ;
 int xdr_authunix_parms (int *,struct authunix_parms*) ;
 int xdrmem_create (int *,char*,int,int ) ;

AUTH *
authunix_create(char *machname, u_int uid, u_int gid, int len, u_int *aup_gids)
{
 struct authunix_parms aup;
 char mymem[MAX_AUTH_BYTES];
 struct timeval now;
 XDR xdrs;
 AUTH *auth;
 struct audata *au;




 au = ((void*)0);
 auth = mem_alloc(sizeof(*auth));

 if (auth == ((void*)0)) {
  warnx("authunix_create: out of memory");
  goto cleanup_authunix_create;
 }

 au = mem_alloc(sizeof(*au));

 if (au == ((void*)0)) {
  warnx("authunix_create: out of memory");
  goto cleanup_authunix_create;
 }

 auth->ah_ops = authunix_ops();
 auth->ah_private = (caddr_t)au;
 auth->ah_verf = au->au_shcred = _null_auth;
 au->au_shfaults = 0;
 au->au_origcred.oa_base = ((void*)0);




 (void)gettimeofday(&now, ((void*)0));
 aup.aup_time = now.tv_sec;
 aup.aup_machname = machname;
 aup.aup_uid = uid;
 aup.aup_gid = gid;
 aup.aup_len = (u_int)len;
 aup.aup_gids = aup_gids;




 xdrmem_create(&xdrs, mymem, MAX_AUTH_BYTES, XDR_ENCODE);
 if (! xdr_authunix_parms(&xdrs, &aup))
  abort();
 au->au_origcred.oa_length = len = XDR_GETPOS(&xdrs);
 au->au_origcred.oa_flavor = AUTH_UNIX;



 if ((au->au_origcred.oa_base = mem_alloc((u_int) len)) == ((void*)0)) {
  warnx("authunix_create: out of memory");
  goto cleanup_authunix_create;
 }

 memmove(au->au_origcred.oa_base, mymem, (size_t)len);




 auth->ah_cred = au->au_origcred;
 marshal_new_auth(auth);
 return (auth);

 cleanup_authunix_create:
 if (auth)
  mem_free(auth, sizeof(*auth));
 if (au) {
  if (au->au_origcred.oa_base)
   mem_free(au->au_origcred.oa_base, (u_int)len);
  mem_free(au, sizeof(*au));
 }
 return (((void*)0));

}
