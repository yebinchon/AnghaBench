
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int u_int ;
struct sshkey_cert {int dummy; } ;
struct sshauthopt {int dummy; } ;
struct ssh {int dummy; } ;
typedef int loc ;
typedef int FILE ;


 scalar_t__ check_principals_line (struct ssh*,char*,struct sshkey_cert const*,char*,struct sshauthopt**) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int snprintf (char*,int,char*,char const*,scalar_t__) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int
process_principals(struct ssh *ssh, FILE *f, const char *file,
    const struct sshkey_cert *cert, struct sshauthopt **authoptsp)
{
 char loc[256], *line = ((void*)0), *cp, *ep;
 size_t linesize = 0;
 u_long linenum = 0;
 u_int found_principal = 0;

 if (authoptsp != ((void*)0))
  *authoptsp = ((void*)0);

 while (getline(&line, &linesize, f) != -1) {
  linenum++;

  if (found_principal)
   continue;


  for (cp = line; *cp == ' ' || *cp == '\t'; cp++)
   ;

  if ((ep = strchr(cp, '#')) != ((void*)0))
   *ep = '\0';
  if (!*cp || *cp == '\n')
   continue;

  snprintf(loc, sizeof(loc), "%.200s:%lu", file, linenum);
  if (check_principals_line(ssh, cp, cert, loc, authoptsp) == 0)
   found_principal = 1;
 }
 free(line);
 return found_principal;
}
