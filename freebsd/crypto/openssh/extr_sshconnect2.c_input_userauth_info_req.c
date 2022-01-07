
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
typedef scalar_t__ u_int ;
typedef scalar_t__ u_char ;
struct ssh {TYPE_1__* authctxt; } ;
struct TYPE_2__ {int info_req_seen; } ;
typedef TYPE_1__ Authctxt ;


 int RP_ECHO ;
 int SSH2_MSG_USERAUTH_INFO_RESPONSE ;
 int debug2 (char*,...) ;
 int fatal (char*) ;
 int free (char*) ;
 int freezero (char*,scalar_t__) ;
 int logit (char*,char*) ;
 char* read_passphrase (char*,int ) ;
 int sshpkt_add_padding (struct ssh*,int) ;
 int sshpkt_get_cstring (struct ssh*,char**,int *) ;
 int sshpkt_get_end (struct ssh*) ;
 int sshpkt_get_u32 (struct ssh*,scalar_t__*) ;
 int sshpkt_get_u8 (struct ssh*,scalar_t__*) ;
 int sshpkt_put_cstring (struct ssh*,char*) ;
 int sshpkt_put_u32 (struct ssh*,scalar_t__) ;
 int sshpkt_send (struct ssh*) ;
 int sshpkt_start (struct ssh*,int ) ;
 scalar_t__ strlen (char*) ;

int
input_userauth_info_req(int type, u_int32_t seq, struct ssh *ssh)
{
 Authctxt *authctxt = ssh->authctxt;
 char *name = ((void*)0), *inst = ((void*)0), *lang = ((void*)0), *prompt = ((void*)0);
 char *response = ((void*)0);
 u_char echo = 0;
 u_int num_prompts, i;
 int r;

 debug2("input_userauth_info_req");

 if (authctxt == ((void*)0))
  fatal("input_userauth_info_req: no authentication context");

 authctxt->info_req_seen = 1;

 if ((r = sshpkt_get_cstring(ssh, &name, ((void*)0))) != 0 ||
     (r = sshpkt_get_cstring(ssh, &inst, ((void*)0))) != 0 ||
     (r = sshpkt_get_cstring(ssh, &lang, ((void*)0))) != 0)
  goto out;
 if (strlen(name) > 0)
  logit("%s", name);
 if (strlen(inst) > 0)
  logit("%s", inst);

 if ((r = sshpkt_get_u32(ssh, &num_prompts)) != 0)
  goto out;






 if ((r = sshpkt_start(ssh, SSH2_MSG_USERAUTH_INFO_RESPONSE)) != 0 ||
     (r = sshpkt_put_u32(ssh, num_prompts)) != 0)
  goto out;

 debug2("input_userauth_info_req: num_prompts %d", num_prompts);
 for (i = 0; i < num_prompts; i++) {
  if ((r = sshpkt_get_cstring(ssh, &prompt, ((void*)0))) != 0 ||
      (r = sshpkt_get_u8(ssh, &echo)) != 0)
   goto out;
  response = read_passphrase(prompt, echo ? RP_ECHO : 0);
  if ((r = sshpkt_put_cstring(ssh, response)) != 0)
   goto out;
  freezero(response, strlen(response));
  free(prompt);
  response = prompt = ((void*)0);
 }

 if ((r = sshpkt_get_end(ssh)) != 0 ||
     (r = sshpkt_add_padding(ssh, 64)) != 0)
  goto out;
 r = sshpkt_send(ssh);
 out:
 if (response)
  freezero(response, strlen(response));
 free(prompt);
 free(name);
 free(inst);
 free(lang);
 return r;
}
