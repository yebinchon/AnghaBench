
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,...) ;

__attribute__((used)) static void show_usage(char *program)
{
 printf("usage 1: %s [options]\n", program);
 printf("\t     starts the server application\n");
 printf("\t[-p  port_number]\n");
 printf("usage 2: %s source server[:destination] [options]\n", program);
 printf("\t     source - file name and path\n");
 printf("\t     server - name or address\n");
 printf("\t     destination - file name and path\n");
 printf("\t[-p  port_number]\n");
 exit(1);
}
