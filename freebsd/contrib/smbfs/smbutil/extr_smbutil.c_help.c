
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* __progname ;
 int exit (int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
help(void) {
 printf("\n");
 printf("usage: %s [-hv] command [args]\n", __progname);
 printf("where commands are:\n"
 " crypt [password]		slightly encrypt password\n"
 " help command			display help on \"command\"\n"
 " lc 				display active connections\n"
 " login //user@host[/share]	login to the specified host\n"
 " logout //user@host[/share]	logout from the specified host\n"
 " print //user@host/share file	print file to the specified remote printer\n"
 " view //user@host		list resources on the specified host\n"
 "\n");
 exit(1);
}
