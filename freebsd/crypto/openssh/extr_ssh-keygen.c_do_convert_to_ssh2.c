
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshkey {int dummy; } ;
struct passwd {char* pw_name; } ;
typedef int comment ;


 char* SSH_COM_PUBLIC_BEGIN ;
 char* SSH_COM_PUBLIC_END ;
 int dump_base64 (int ,int *,size_t) ;
 int exit (int ) ;
 int fatal (char*,int ) ;
 int fprintf (int ,char*,char*) ;
 int free (int *) ;
 char* hostname ;
 int snprintf (char*,int,char*,int,char*,char*,char*) ;
 int ssh_err (int) ;
 int sshkey_free (struct sshkey*) ;
 int sshkey_size (struct sshkey*) ;
 int sshkey_to_blob (struct sshkey*,int **,size_t*) ;
 char* sshkey_type (struct sshkey*) ;
 int stdout ;

__attribute__((used)) static void
do_convert_to_ssh2(struct passwd *pw, struct sshkey *k)
{
 size_t len;
 u_char *blob;
 char comment[61];
 int r;

 if ((r = sshkey_to_blob(k, &blob, &len)) != 0)
  fatal("key_to_blob failed: %s", ssh_err(r));

 snprintf(comment, sizeof(comment),
     "%u-bit %s, converted by %s@%s from OpenSSH",
     sshkey_size(k), sshkey_type(k),
     pw->pw_name, hostname);

 fprintf(stdout, "%s\n", SSH_COM_PUBLIC_BEGIN);
 fprintf(stdout, "Comment: \"%s\"\n", comment);
 dump_base64(stdout, blob, len);
 fprintf(stdout, "%s\n", SSH_COM_PUBLIC_END);
 sshkey_free(k);
 free(blob);
 exit(0);
}
