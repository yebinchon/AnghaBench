
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct sshkey {int dummy; } ;
struct passwd {int dummy; } ;
typedef int line ;
typedef int encoded ;
typedef int blob ;
typedef int FILE ;


 char* SSH_COM_PRIVATE_BEGIN ;
 int __progname ;
 struct sshkey* do_convert_private_ssh2_from_blob (int *,int) ;
 int errno ;
 int fatal (char*,...) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int get_line (int *,char*,int) ;
 int identity_file ;
 int ssh_err (int) ;
 int sshkey_from_blob (int *,int,struct sshkey**) ;
 int strerror (int ) ;
 int strlcat (char*,char*,int) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int * strstr (char*,char*) ;
 int uudecode (char*,int *,int) ;

__attribute__((used)) static void
do_convert_from_ssh2(struct passwd *pw, struct sshkey **k, int *private)
{
 int r, blen, escaped = 0;
 u_int len;
 char line[1024];
 u_char blob[8096];
 char encoded[8096];
 FILE *fp;

 if ((fp = fopen(identity_file, "r")) == ((void*)0))
  fatal("%s: %s: %s", __progname, identity_file, strerror(errno));
 encoded[0] = '\0';
 while ((blen = get_line(fp, line, sizeof(line))) != -1) {
  if (blen > 0 && line[blen - 1] == '\\')
   escaped++;
  if (strncmp(line, "----", 4) == 0 ||
      strstr(line, ": ") != ((void*)0)) {
   if (strstr(line, SSH_COM_PRIVATE_BEGIN) != ((void*)0))
    *private = 1;
   if (strstr(line, " END ") != ((void*)0)) {
    break;
   }

   continue;
  }
  if (escaped) {
   escaped--;

   continue;
  }
  strlcat(encoded, line, sizeof(encoded));
 }
 len = strlen(encoded);
 if (((len % 4) == 3) &&
     (encoded[len-1] == '=') &&
     (encoded[len-2] == '=') &&
     (encoded[len-3] == '='))
  encoded[len-3] = '\0';
 blen = uudecode(encoded, blob, sizeof(blob));
 if (blen < 0)
  fatal("uudecode failed.");
 if (*private)
  *k = do_convert_private_ssh2_from_blob(blob, blen);
 else if ((r = sshkey_from_blob(blob, blen, k)) != 0)
  fatal("decode blob failed: %s", ssh_err(r));
 fclose(fp);
}
