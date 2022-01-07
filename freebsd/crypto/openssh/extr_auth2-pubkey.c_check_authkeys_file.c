
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct sshkey {int dummy; } ;
struct sshauthopt {int dummy; } ;
struct ssh {int dummy; } ;
struct passwd {int dummy; } ;
typedef int loc ;
typedef int FILE ;


 scalar_t__ check_authkey_line (struct ssh*,struct passwd*,struct sshkey*,char*,char*,struct sshauthopt**) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int skip_space (char**) ;
 int snprintf (char*,int,char*,char*,scalar_t__) ;

__attribute__((used)) static int
check_authkeys_file(struct ssh *ssh, struct passwd *pw, FILE *f,
    char *file, struct sshkey *key, struct sshauthopt **authoptsp)
{
 char *cp, *line = ((void*)0), loc[256];
 size_t linesize = 0;
 int found_key = 0;
 u_long linenum = 0;

 if (authoptsp != ((void*)0))
  *authoptsp = ((void*)0);

 while (getline(&line, &linesize, f) != -1) {
  linenum++;

  if (found_key)
   continue;


  cp = line;
  skip_space(&cp);
  if (!*cp || *cp == '\n' || *cp == '#')
   continue;
  snprintf(loc, sizeof(loc), "%.200s:%lu", file, linenum);
  if (check_authkey_line(ssh, pw, key, cp, loc, authoptsp) == 0)
   found_key = 1;
 }
 free(line);
 return found_key;
}
