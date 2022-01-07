
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef scalar_t__ u_char ;
struct ssh {int * authctxt; } ;
typedef int Authctxt ;


 int debug (char*,char*) ;
 int fatal (char*) ;
 int free (char*) ;
 int pubkey_reset (int *) ;
 int sshpkt_get_cstring (struct ssh*,char**,int *) ;
 int sshpkt_get_end (struct ssh*) ;
 int sshpkt_get_u8 (struct ssh*,scalar_t__*) ;
 int userauth (int *,char*) ;
 int verbose (char*) ;

int
input_userauth_failure(int type, u_int32_t seq, struct ssh *ssh)
{
 Authctxt *authctxt = ssh->authctxt;
 char *authlist = ((void*)0);
 u_char partial;
 int r;

 if (authctxt == ((void*)0))
  fatal("input_userauth_failure: no authentication context");

 if ((r = sshpkt_get_cstring(ssh, &authlist, ((void*)0))) != 0 ||
     (r = sshpkt_get_u8(ssh, &partial)) != 0 ||
     (r = sshpkt_get_end(ssh)) != 0)
  goto out;

 if (partial != 0) {
  verbose("Authenticated with partial success.");

  pubkey_reset(authctxt);
 }
 debug("Authentications that can continue: %s", authlist);

 userauth(authctxt, authlist);
 authlist = ((void*)0);
 out:
 free(authlist);
 return 0;
}
