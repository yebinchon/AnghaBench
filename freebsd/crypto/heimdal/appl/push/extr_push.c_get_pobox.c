
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*) ;
 char* getenv (char*) ;
 char* hesiod_get_pobox (char const**) ;

__attribute__((used)) static char *
get_pobox (const char **user)
{
    char *ret = ((void*)0);





    if (ret == ((void*)0))
 ret = getenv("MAILHOST");
    if (ret == ((void*)0))
 errx (1, "MAILHOST not set");
    return ret;
}
