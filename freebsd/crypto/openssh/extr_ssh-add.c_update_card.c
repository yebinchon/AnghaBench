
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RP_ALLOW_STDIN ;
 int confirm ;
 int fprintf (int ,char*,char*,char const*,...) ;
 int free (char*) ;
 int lifetime ;
 char* read_passphrase (char*,int ) ;
 char* ssh_err (int) ;
 int ssh_update_card (int,int,char const*,char*,int ,int ) ;
 int stderr ;

__attribute__((used)) static int
update_card(int agent_fd, int add, const char *id)
{
 char *pin = ((void*)0);
 int r, ret = -1;

 if (add) {
  if ((pin = read_passphrase("Enter passphrase for PKCS#11: ",
      RP_ALLOW_STDIN)) == ((void*)0))
   return -1;
 }

 if ((r = ssh_update_card(agent_fd, add, id, pin == ((void*)0) ? "" : pin,
     lifetime, confirm)) == 0) {
  fprintf(stderr, "Card %s: %s\n",
      add ? "added" : "removed", id);
  ret = 0;
 } else {
  fprintf(stderr, "Could not %s card \"%s\": %s\n",
      add ? "add" : "remove", id, ssh_err(r));
  ret = -1;
 }
 free(pin);
 return ret;
}
