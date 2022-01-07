
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int realauth ;
struct TYPE_4__ {char* lc_style; } ;
typedef TYPE_1__ login_cap_t ;



 char** login_getcaplist (TYPE_1__*,char*,int *) ;
 int snprintf (char*,int,char*,char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 void* strdup (char const*) ;

const char *
login_getstyle(login_cap_t *lc, const char *style, const char *auth)
{
    int i;
    const char **authtypes = ((void*)0);
    char *auths= ((void*)0);
    char realauth[64];

    static const char *defauthtypes[] = { 128, ((void*)0) };

    if (auth != ((void*)0) && *auth != '\0') {
 if (snprintf(realauth, sizeof realauth, "auth-%s", auth) < (int)sizeof(realauth))
     authtypes = login_getcaplist(lc, realauth, ((void*)0));
    }

    if (authtypes == ((void*)0))
 authtypes = login_getcaplist(lc, "auth", ((void*)0));

    if (authtypes == ((void*)0))
 authtypes = defauthtypes;






    i = 0;
    if (style != ((void*)0) && *style != '\0') {
 while (authtypes[i] != ((void*)0) && strcmp(style, authtypes[i]) != 0)
     i++;
    }

    lc->lc_style = ((void*)0);
    if (authtypes[i] != ((void*)0) && (auths = strdup(authtypes[i])) != ((void*)0))
 lc->lc_style = auths;

    if (lc->lc_style != ((void*)0))
 lc->lc_style = strdup(lc->lc_style);

    return lc->lc_style;
}
