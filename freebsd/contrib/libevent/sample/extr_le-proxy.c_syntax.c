
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fputs (char*,int ) ;
 int stderr ;

__attribute__((used)) static void
syntax(void)
{
 fputs("Syntax:\n", stderr);
 fputs("   le-proxy [-s] [-W] <listen-on-addr> <connect-to-addr>\n", stderr);
 fputs("Example:\n", stderr);
 fputs("   le-proxy 127.0.0.1:8888 1.2.3.4:80\n", stderr);

 exit(1);
}
