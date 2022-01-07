
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct akf_data {int * cell; int * realm; } ;
typedef int krb5_context ;
typedef int buf ;
typedef int FILE ;


 int AFS_SERVERMAGICKRBCONF ;
 int AFS_SERVERTHISCELL ;
 int BUFSIZ ;
 int EINVAL ;
 int ENOMEM ;
 int N_ (char*,char*) ;
 int errno ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (int ,char*) ;
 int free (int *) ;
 int krb5_set_error_message (int ,int,int ,...) ;
 size_t strcspn (char*,char*) ;
 void* strdup (char*) ;
 int strerror (int) ;
 char toupper (unsigned char) ;

__attribute__((used)) static int
get_cell_and_realm (krb5_context context, struct akf_data *d)
{
    FILE *f;
    char buf[BUFSIZ], *cp;
    int ret;

    f = fopen (AFS_SERVERTHISCELL, "r");
    if (f == ((void*)0)) {
 ret = errno;
 krb5_set_error_message (context, ret,
    N_("Open ThisCell %s: %s", ""),
    AFS_SERVERTHISCELL,
    strerror(ret));
 return ret;
    }
    if (fgets (buf, sizeof(buf), f) == ((void*)0)) {
 fclose (f);
 krb5_set_error_message (context, EINVAL,
    N_("No cell in ThisCell file %s", ""),
    AFS_SERVERTHISCELL);
 return EINVAL;
    }
    buf[strcspn(buf, "\n")] = '\0';
    fclose(f);

    d->cell = strdup (buf);
    if (d->cell == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM,
          N_("malloc: out of memory", ""));
 return ENOMEM;
    }

    f = fopen (AFS_SERVERMAGICKRBCONF, "r");
    if (f != ((void*)0)) {
 if (fgets (buf, sizeof(buf), f) == ((void*)0)) {
     free (d->cell);
     d->cell = ((void*)0);
     fclose (f);
     krb5_set_error_message (context, EINVAL,
        N_("No realm in ThisCell file %s", ""),
        AFS_SERVERMAGICKRBCONF);
     return EINVAL;
 }
 buf[strcspn(buf, "\n")] = '\0';
 fclose(f);
    }

    for (cp = buf; *cp != '\0'; cp++)
 *cp = toupper((unsigned char)*cp);

    d->realm = strdup (buf);
    if (d->realm == ((void*)0)) {
 free (d->cell);
 d->cell = ((void*)0);
 krb5_set_error_message(context, ENOMEM,
          N_("malloc: out of memory", ""));
 return ENOMEM;
    }
    return 0;
}
