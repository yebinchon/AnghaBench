
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char const*) ;
 char* getenv (char*) ;
 int * md_failstring ;
 int md_tracefd ;
 int parseit () ;
 int * strdup (char const*) ;

void ossl_malloc_setup_failures(void)
{
    const char *cp = getenv("OPENSSL_MALLOC_FAILURES");

    if (cp != ((void*)0) && (md_failstring = strdup(cp)) != ((void*)0))
        parseit();
    if ((cp = getenv("OPENSSL_MALLOC_FD")) != ((void*)0))
        md_tracefd = atoi(cp);
}
