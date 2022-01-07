
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;
struct login_info {char* from; struct passwd* user; } ;
typedef int line ;
typedef int FILE ;


 int BUFSIZ ;
 scalar_t__ ENOENT ;
 int LOG_ERR ;
 int NO ;
 int _PATH_LOGACCESS ;
 scalar_t__ errno ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (int ,char*) ;
 int from_match ;
 int fs ;
 scalar_t__ isspace (unsigned char) ;
 scalar_t__ list_match (char*,struct login_info*,int ) ;
 int strlen (char*) ;
 char* strtok_r (char*,int ,char**) ;
 int syslog (int ,char*,int ,...) ;
 int user_match ;

int login_access(struct passwd *user, char *from)
{
    struct login_info item;
    FILE *fp;
    char line[BUFSIZ];
    char *perm;
    char *users;
    char *froms;
    int match = NO;
    int end;
    int lineno = 0;
    char *foo;




    item.user = user;
    item.from = from;
    if ((fp = fopen(_PATH_LOGACCESS, "r")) != 0) {
 while (!match && fgets(line, sizeof(line), fp)) {
     lineno++;
     if (line[end = strlen(line) - 1] != '\n') {
  syslog(LOG_ERR, "%s: line %d: missing newline or line too long",
         _PATH_LOGACCESS, lineno);
  continue;
     }
     if (line[0] == '#')
  continue;
     while (end > 0 && isspace((unsigned char)line[end - 1]))
  end--;
     line[end] = 0;
     if (line[0] == 0)
  continue;
     foo = ((void*)0);
     if (!(perm = strtok_r(line, fs, &foo))
  || !(users = strtok_r(((void*)0), fs, &foo))
  || !(froms = strtok_r(((void*)0), fs, &foo))
  || strtok_r(((void*)0), fs, &foo)) {
  syslog(LOG_ERR, "%s: line %d: bad field count",
         _PATH_LOGACCESS,
         lineno);
  continue;
     }
     if (perm[0] != '+' && perm[0] != '-') {
  syslog(LOG_ERR, "%s: line %d: bad first field",
         _PATH_LOGACCESS,
         lineno);
  continue;
     }
     match = (list_match(froms, &item, from_match)
       && list_match(users, &item, user_match));
 }
 fclose(fp);
    } else if (errno != ENOENT) {
 syslog(LOG_ERR, "cannot open %s: %m", _PATH_LOGACCESS);
    }
    return (match == 0 || (line[0] == '+'));
}
