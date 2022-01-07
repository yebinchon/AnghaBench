
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void usage(const char *argv0)
{
 printf("Usage: %s             print the ca attributes\n", argv0);
 printf("\n");
 printf("Options:\n");
 printf("  -d, --ib-dev=<dev>     use IB device <dev> (default first device found)\n");
 printf("  -i, --ib-port=<port>   use port <port> of IB device (default all ports)\n");
 printf("  -l, --list             print only the IB devices names\n");
 printf("  -v, --verbose          print all the attributes of the IB device(s)\n");
}
