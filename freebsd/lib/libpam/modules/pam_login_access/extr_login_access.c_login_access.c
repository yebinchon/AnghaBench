
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






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
 scalar_t__ isspace (char) ;
 scalar_t__ list_match (char*,char const*,int ) ;
 int strlen (char*) ;
 char* strtok (char*,int ) ;
 int syslog (int ,char*,int ,...) ;
 int user_match ;

int
login_access(const char *user, const char *from)
{
    FILE *fp;
    char line[BUFSIZ];
    char *perm;
    char *users;
    char *froms;
    int match = NO;
    int end;
    int lineno = 0;
    if ((fp = fopen(_PATH_LOGACCESS, "r")) != ((void*)0)) {
 while (!match && fgets(line, sizeof(line), fp)) {
     lineno++;
     if (line[end = strlen(line) - 1] != '\n') {
  syslog(LOG_ERR, "%s: line %d: missing newline or line too long",
         _PATH_LOGACCESS, lineno);
  continue;
     }
     if (line[0] == '#')
  continue;
     while (end > 0 && isspace(line[end - 1]))
  end--;
     line[end] = 0;
     if (line[0] == 0)
  continue;
     if (!(perm = strtok(line, fs))
  || !(users = strtok((char *) 0, fs))
  || !(froms = strtok((char *) 0, fs))
  || strtok((char *) 0, fs)) {
  syslog(LOG_ERR, "%s: line %d: bad field count", _PATH_LOGACCESS,
         lineno);
  continue;
     }
     if (perm[0] != '+' && perm[0] != '-') {
  syslog(LOG_ERR, "%s: line %d: bad first field", _PATH_LOGACCESS,
         lineno);
  continue;
     }
     match = (list_match(froms, from, from_match)
       && list_match(users, user, user_match));
 }
 (void) fclose(fp);
    } else if (errno != ENOENT) {
 syslog(LOG_ERR, "cannot open %s: %m", _PATH_LOGACCESS);
    }
    return (match == 0 || (line[0] == '+'));
}
