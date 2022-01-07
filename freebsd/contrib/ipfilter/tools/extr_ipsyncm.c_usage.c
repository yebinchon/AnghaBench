
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

void usage(const char *progname) {
 fprintf(stderr, "Usage: %s <destination IP> <destination port>\n", progname);
}
