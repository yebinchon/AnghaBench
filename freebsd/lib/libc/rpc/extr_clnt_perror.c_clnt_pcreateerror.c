
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 char* clnt_spcreateerror (char const*) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

void
clnt_pcreateerror(const char *s)
{

 assert(s != ((void*)0));

 (void) fprintf(stderr, "%s\n", clnt_spcreateerror(s));
}
