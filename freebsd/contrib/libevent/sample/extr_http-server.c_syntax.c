
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stdout ;

__attribute__((used)) static void
syntax(void)
{
 fprintf(stdout, "Syntax: http-server <docroot>\n");
}
