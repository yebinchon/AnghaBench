
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdb_method {char* prefix; } ;
typedef int krb5_error_code ;
typedef int krb5_context ;


 int ENOMEM ;
 int krb5_set_error_message (int ,int ,char*) ;
 char* malloc (size_t) ;
 struct hdb_method const* methods ;
 int strlcat (char*,char*,size_t) ;
 scalar_t__ strlen (char*) ;

krb5_error_code
hdb_list_builtin(krb5_context context, char **list)
{
    const struct hdb_method *h;
    size_t len = 0;
    char *buf = ((void*)0);

    for (h = methods; h->prefix != ((void*)0); ++h) {
 if (h->prefix[0] == '\0')
     continue;
 len += strlen(h->prefix) + 2;
    }

    len += 1;
    buf = malloc(len);
    if (buf == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, "malloc: out of memory");
 return ENOMEM;
    }
    buf[0] = '\0';

    for (h = methods; h->prefix != ((void*)0); ++h) {
 if (h != methods)
     strlcat(buf, ", ", len);
 strlcat(buf, h->prefix, len);
    }
    *list = buf;
    return 0;
}
