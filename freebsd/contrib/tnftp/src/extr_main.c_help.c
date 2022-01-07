
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd {char* c_name; int c_help; int (* c_handler ) (int ,char**) ;scalar_t__ c_proxy; } ;
typedef int cmdbuf ;
typedef int StringList ;


 char* HELPINDENT ;
 int MAX_C_NAME ;
 int UPRINTF (char*,char*) ;
 struct cmd* cmdtab ;
 int fprintf (int ,char*,char*,...) ;
 int ftp_sl_add (int *,int ) ;
 int * ftp_sl_init () ;
 int ftp_strdup (char const*) ;
 struct cmd* getcmd (char*) ;
 int list_vertical (int *) ;
 scalar_t__ proxy ;
 int sl_free (int *,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (char*,char*,int) ;
 int stub1 (int ,char**) ;
 int ttyout ;

void
help(int argc, char *argv[])
{
 struct cmd *c;
 char *nargv[1], *cmd;
 const char *p;
 int isusage;

 cmd = argv[0];
 isusage = (strcmp(cmd, "usage") == 0);
 if (argc == 0 || (isusage && argc == 1)) {
  UPRINTF("usage: %s [command [...]]\n", cmd);
  return;
 }
 if (argc == 1) {
  StringList *buf;

  buf = ftp_sl_init();
  fprintf(ttyout,
      "%sommands may be abbreviated.  Commands are:\n\n",
      proxy ? "Proxy c" : "C");
  for (c = cmdtab; (p = c->c_name) != ((void*)0); c++)
   if (!proxy || c->c_proxy)
    ftp_sl_add(buf, ftp_strdup(p));
  list_vertical(buf);
  sl_free(buf, 1);
  return;
 }



 while (--argc > 0) {
  char *arg;
  char cmdbuf[MAX_C_NAME];

  arg = *++argv;
  c = getcmd(arg);
  if (c == (struct cmd *)-1)
   fprintf(ttyout, "?Ambiguous %s command `%s'\n",
       cmd, arg);
  else if (c == ((void*)0))
   fprintf(ttyout, "?Invalid %s command `%s'\n",
       cmd, arg);
  else {
   if (isusage) {
    (void)strlcpy(cmdbuf, c->c_name, sizeof(cmdbuf));
    nargv[0] = cmdbuf;
    (*c->c_handler)(0, nargv);
   } else
    fprintf(ttyout, "%-*s\t%s\n", ((int) sizeof("disconnect")),
        c->c_name, c->c_help);
  }
 }
}
