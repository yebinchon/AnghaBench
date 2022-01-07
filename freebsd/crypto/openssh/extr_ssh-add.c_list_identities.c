
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct ssh_identitylist {size_t nkeys; char** comments; int * keys; } ;


 int SSH_ERR_AGENT_NO_IDENTITIES ;
 int SSH_FP_DEFAULT ;
 int fingerprint_hash ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int printf (char*,...) ;
 char* ssh_err (int) ;
 int ssh_fetch_identitylist (int,struct ssh_identitylist**) ;
 int ssh_free_identitylist (struct ssh_identitylist*) ;
 char* sshkey_fingerprint (int ,int ,int ) ;
 scalar_t__ sshkey_signatures_left (int ) ;
 int sshkey_size (int ) ;
 char* sshkey_type (int ) ;
 int sshkey_write (int ,int ) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static int
list_identities(int agent_fd, int do_fp)
{
 char *fp;
 int r;
 struct ssh_identitylist *idlist;
 u_int32_t left;
 size_t i;

 if ((r = ssh_fetch_identitylist(agent_fd, &idlist)) != 0) {
  if (r != SSH_ERR_AGENT_NO_IDENTITIES)
   fprintf(stderr, "error fetching identities: %s\n",
       ssh_err(r));
  else
   printf("The agent has no identities.\n");
  return -1;
 }
 for (i = 0; i < idlist->nkeys; i++) {
  if (do_fp) {
   fp = sshkey_fingerprint(idlist->keys[i],
       fingerprint_hash, SSH_FP_DEFAULT);
   printf("%u %s %s (%s)\n", sshkey_size(idlist->keys[i]),
       fp == ((void*)0) ? "(null)" : fp, idlist->comments[i],
       sshkey_type(idlist->keys[i]));
   free(fp);
  } else {
   if ((r = sshkey_write(idlist->keys[i], stdout)) != 0) {
    fprintf(stderr, "sshkey_write: %s\n",
        ssh_err(r));
    continue;
   }
   fprintf(stdout, " %s", idlist->comments[i]);
   left = sshkey_signatures_left(idlist->keys[i]);
   if (left > 0)
    fprintf(stdout,
        " [signatures left %d]", left);
   fprintf(stdout, "\n");
  }
 }
 ssh_free_identitylist(idlist);
 return 0;
}
