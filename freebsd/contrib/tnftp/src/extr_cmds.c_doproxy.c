
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd {int (* c_handler ) (int,char**) ;int c_name; scalar_t__ c_conn; int c_proxy; } ;
typedef int sigfunc ;
typedef int cmdbuf ;


 int MAX_C_NAME ;
 int SIGINT ;
 int UPRINTF (char*,char*) ;
 int abortprox ;
 int another (int*,char***,char*) ;
 int code ;
 scalar_t__ connected ;
 int fputs (char*,int ) ;
 struct cmd* getcmd (char*) ;
 scalar_t__ line ;
 int memmove (scalar_t__,scalar_t__,int) ;
 int proxabort ;
 int proxflag ;
 int pswitch (int) ;
 scalar_t__ sigsetjmp (int ,int) ;
 int strcspn (scalar_t__,char*) ;
 int strlcpy (char*,int ,int) ;
 int strlen (scalar_t__) ;
 int stub1 (int,char**) ;
 int ttyout ;
 int xsignal (int ,int ) ;

void
doproxy(int argc, char *argv[])
{
 struct cmd *c;
 int cmdpos;
 sigfunc oldintr;
 char cmdbuf[MAX_C_NAME];

 if (argc == 0 || (argc == 1 && !another(&argc, &argv, "command"))) {
  UPRINTF("usage: %s command\n", argv[0]);
  code = -1;
  return;
 }
 c = getcmd(argv[1]);
 if (c == (struct cmd *) -1) {
  fputs("?Ambiguous command.\n", ttyout);
  code = -1;
  return;
 }
 if (c == 0) {
  fputs("?Invalid command.\n", ttyout);
  code = -1;
  return;
 }
 if (!c->c_proxy) {
  fputs("?Invalid proxy command.\n", ttyout);
  code = -1;
  return;
 }
 if (sigsetjmp(abortprox, 1)) {
  code = -1;
  return;
 }
 oldintr = xsignal(SIGINT, proxabort);
 pswitch(1);
 if (c->c_conn && !connected) {
  fputs("Not connected.\n", ttyout);
  pswitch(0);
  (void)xsignal(SIGINT, oldintr);
  code = -1;
  return;
 }
 cmdpos = strcspn(line, " \t");
 if (cmdpos > 0)
  memmove(line, line + cmdpos + 1, strlen(line) - cmdpos + 1);
 (void)strlcpy(cmdbuf, c->c_name, sizeof(cmdbuf));
 argv[1] = cmdbuf;
 (*c->c_handler)(argc-1, argv+1);
 if (connected) {
  proxflag = 1;
 }
 else {
  proxflag = 0;
 }
 pswitch(0);
 (void)xsignal(SIGINT, oldintr);
}
