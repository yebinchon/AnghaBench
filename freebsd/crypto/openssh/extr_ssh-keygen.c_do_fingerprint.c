
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct sshkey {int dummy; } ;
struct passwd {int dummy; } ;
typedef int FILE ;


 int __progname ;
 int ask_filename (struct passwd*,char*) ;
 int debug (char*,char const*,int) ;
 int errno ;
 int exit (int ) ;
 int fatal (char*,char const*,...) ;
 int fclose (int *) ;
 int fingerprint_one_key (struct sshkey*,char*) ;
 int fingerprint_private (char const*) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int have_identity ;
 char* identity_file ;
 int sshkey_free (struct sshkey*) ;
 int * stdin ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strcspn (char*,char*) ;
 int strerror (int ) ;
 int strspn (char*,char*) ;
 int * strstr (char*,char*) ;
 int strtol (char*,char**,int) ;
 struct sshkey* try_read_key (char**) ;

__attribute__((used)) static void
do_fingerprint(struct passwd *pw)
{
 FILE *f;
 struct sshkey *public = ((void*)0);
 char *comment = ((void*)0), *cp, *ep, *line = ((void*)0);
 size_t linesize = 0;
 int i, invalid = 1;
 const char *path;
 u_long lnum = 0;

 if (!have_identity)
  ask_filename(pw, "Enter file in which the key is");
 path = identity_file;

 if (strcmp(identity_file, "-") == 0) {
  f = stdin;
  path = "(stdin)";
 } else if ((f = fopen(path, "r")) == ((void*)0))
  fatal("%s: %s: %s", __progname, path, strerror(errno));

 while (getline(&line, &linesize, f) != -1) {
  lnum++;
  cp = line;
  cp[strcspn(cp, "\n")] = '\0';

  cp = line + strspn(line, " \t");
  if (*cp == '#' || *cp == '\0')
   continue;
  if (lnum == 1 && strcmp(identity_file, "-") != 0 &&
      strstr(cp, "PRIVATE KEY") != ((void*)0)) {
   free(line);
   fclose(f);
   fingerprint_private(path);
   exit(0);
  }






  if ((public = try_read_key(&cp)) == ((void*)0)) {
   i = strtol(cp, &ep, 10);
   if (i == 0 || ep == ((void*)0) ||
       (*ep != ' ' && *ep != '\t')) {
    int quoted = 0;

    comment = cp;
    for (; *cp && (quoted || (*cp != ' ' &&
        *cp != '\t')); cp++) {
     if (*cp == '\\' && cp[1] == '"')
      cp++;
     else if (*cp == '"')
      quoted = !quoted;
    }
    if (!*cp)
     continue;
    *cp++ = '\0';
   }
  }

  if (public == ((void*)0) && (public = try_read_key(&cp)) == ((void*)0)) {
   debug("%s:%lu: not a public key", path, lnum);
   continue;
  }


  for (; *cp == ' ' || *cp == '\t'; cp++)
   ;
  if (*cp != '\0' && *cp != '#')
   comment = cp;

  fingerprint_one_key(public, comment);
  sshkey_free(public);
  invalid = 0;
 }
 fclose(f);
 free(line);

 if (invalid)
  fatal("%s is not a public key file.", path);
 exit(0);
}
