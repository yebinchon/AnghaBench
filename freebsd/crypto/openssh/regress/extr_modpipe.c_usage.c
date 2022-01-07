
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr, "Usage: modpipe -w [-m modspec ...] < in > out\n");
 fprintf(stderr, "modspec is one of:\n");
 fprintf(stderr, "    xor:offset:value       - XOR \"value\" at \"offset\"\n");
 fprintf(stderr, "    andor:offset:val1:val2 - AND \"val1\" then OR \"val2\" at \"offset\"\n");
 exit(1);
}
