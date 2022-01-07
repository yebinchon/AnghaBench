
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void usage(const char *argv0)
{
 printf("Usage:\n");
 printf("  %s            start an asyncwatch process\n", argv0);
 printf("\n");
 printf("Options:\n");
 printf("  -d, --ib-dev=<dev>     use IB device <dev> (default first device found)\n");
 printf("  -h, --help             print a help text and exit\n");
}
