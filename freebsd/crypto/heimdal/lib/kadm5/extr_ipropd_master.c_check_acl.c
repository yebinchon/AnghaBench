
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;
typedef int buf ;
typedef int FILE ;


 int asprintf (char**,char*,int ) ;
 int errx (int,char*) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int hdb_db_dir (int ) ;
 char* krb5_config_get_string_default (int ,int *,char*,char*,char*,int *) ;
 scalar_t__ strcmp (char*,char const*) ;
 size_t strcspn (char*,char*) ;

__attribute__((used)) static int
check_acl (krb5_context context, const char *name)
{
    const char *fn;
    FILE *fp;
    char buf[256];
    int ret = 1;
    char *slavefile = ((void*)0);

    if (asprintf(&slavefile, "%s/slaves", hdb_db_dir(context)) == -1
 || slavefile == ((void*)0))
 errx(1, "out of memory");

    fn = krb5_config_get_string_default(context,
     ((void*)0),
     slavefile,
     "kdc",
     "iprop-acl",
     ((void*)0));

    fp = fopen (fn, "r");
    free(slavefile);
    if (fp == ((void*)0))
 return 1;
    while (fgets(buf, sizeof(buf), fp) != ((void*)0)) {
 buf[strcspn(buf, "\r\n")] = '\0';
 if (strcmp (buf, name) == 0) {
     ret = 0;
     break;
 }
    }
    fclose (fp);
    return ret;
}
