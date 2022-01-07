
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*,char*) ;
 char* nc_sperror () ;
 int stderr ;

void
nc_perror(const char *s)
{
    fprintf(stderr, "%s: %s\n", s, nc_sperror());
}
