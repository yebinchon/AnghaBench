
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CLIENT ;


 int assert (int ) ;
 char* clnt_sperror (int *,char const*) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

void
clnt_perror(CLIENT *rpch, const char *s)
{

 assert(rpch != ((void*)0));
 assert(s != ((void*)0));

 (void) fprintf(stderr, "%s\n", clnt_sperror(rpch,s));
}
