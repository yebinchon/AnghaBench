
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
typedef int FILE ;


 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INVALID_FORMAT ;
 int SSH_ERR_SYSTEM_ERROR ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int sshkey_read (struct sshkey*,char**) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strcspn (char*,char*) ;
 char* strdup (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
sshkey_try_load_public(struct sshkey *k, const char *filename, char **commentp)
{
 FILE *f;
 char *line = ((void*)0), *cp;
 size_t linesize = 0;
 int r;

 if (commentp != ((void*)0))
  *commentp = ((void*)0);
 if ((f = fopen(filename, "r")) == ((void*)0))
  return SSH_ERR_SYSTEM_ERROR;
 while (getline(&line, &linesize, f) != -1) {
  cp = line;
  switch (*cp) {
  case '#':
  case '\n':
  case '\0':
   continue;
  }

  if (strncmp(cp, "-----BEGIN", 10) == 0 ||
      strcmp(cp, "SSH PRIVATE KEY FILE") == 0)
   break;

  for (; *cp && (*cp == ' ' || *cp == '\t'); cp++)
   ;
  if (*cp) {
   if ((r = sshkey_read(k, &cp)) == 0) {
    cp[strcspn(cp, "\r\n")] = '\0';
    if (commentp) {
     *commentp = strdup(*cp ?
         cp : filename);
     if (*commentp == ((void*)0))
      r = SSH_ERR_ALLOC_FAIL;
    }
    free(line);
    fclose(f);
    return r;
   }
  }
 }
 free(line);
 fclose(f);
 return SSH_ERR_INVALID_FORMAT;
}
