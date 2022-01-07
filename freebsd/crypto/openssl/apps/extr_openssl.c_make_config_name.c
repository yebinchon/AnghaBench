
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* OPENSSL_CONF ;
 char* OPENSSL_strdup (char const*) ;
 char* X509_get_default_cert_area () ;
 char* app_malloc (size_t,char*) ;
 char* getenv (char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *make_config_name(void)
{
    const char *t;
    size_t len;
    char *p;

    if ((t = getenv("OPENSSL_CONF")) != ((void*)0))
        return OPENSSL_strdup(t);

    t = X509_get_default_cert_area();
    len = strlen(t) + 1 + strlen(OPENSSL_CONF) + 1;
    p = app_malloc(len, "config filename buffer");
    strcpy(p, t);

    strcat(p, "/");

    strcat(p, OPENSSL_CONF);

    return p;
}
