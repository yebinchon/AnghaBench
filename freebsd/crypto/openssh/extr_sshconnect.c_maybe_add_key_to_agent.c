
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sshkey {int dummy; } ;
struct TYPE_2__ {int add_keys_to_agent; } ;


 int ask_permission (char*,char*,char*) ;
 int close (int) ;
 int debug (char*,char*,...) ;
 int debug3 (char*) ;
 TYPE_1__ options ;
 int ssh_add_identity_constrained (int,struct sshkey const*,char*,int ,int,int ) ;
 int ssh_get_authentication_socket (int*) ;

void
maybe_add_key_to_agent(char *authfile, const struct sshkey *private,
    char *comment, char *passphrase)
{
 int auth_sock = -1, r;

 if (options.add_keys_to_agent == 0)
  return;

 if ((r = ssh_get_authentication_socket(&auth_sock)) != 0) {
  debug3("no authentication agent, not adding key");
  return;
 }

 if (options.add_keys_to_agent == 2 &&
     !ask_permission("Add key %s (%s) to agent?", authfile, comment)) {
  debug3("user denied adding this key");
  close(auth_sock);
  return;
 }

 if ((r = ssh_add_identity_constrained(auth_sock, private, comment, 0,
     (options.add_keys_to_agent == 3), 0)) == 0)
  debug("identity added to agent: %s", authfile);
 else
  debug("could not add identity to agent: %s (%d)", authfile, r);
 close(auth_sock);
}
