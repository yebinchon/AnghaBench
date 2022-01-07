
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int emsg ;
typedef int code ;


 int BUFSIZ ;
 int TS_CLOSED ;
 int atoi (char*) ;
 int errno ;
 int msg (char*,char const*,...) ;
 int rmtconnaborted (int ) ;
 int rmtgets (char*,int) ;
 int rmtstate ;
 int strlen (char*) ;

__attribute__((used)) static int
rmtreply(const char *cmd)
{
 char *cp;
 char code[30], emsg[BUFSIZ];

 rmtgets(code, sizeof (code));
 if (*code == 'E' || *code == 'F') {
  rmtgets(emsg, sizeof (emsg));
  msg("%s: %s", cmd, emsg);
  errno = atoi(code + 1);
  if (*code == 'F')
   rmtstate = TS_CLOSED;
  return (-1);
 }
 if (*code != 'A') {

  cp = code + strlen(code);
  if (cp > code && *--cp == '\n')
   *cp = '\0';

  msg("Protocol to remote tape server botched (code \"%s\").\n",
      code);
  rmtconnaborted(0);
 }
 return (atoi(code + 1));
}
