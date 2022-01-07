
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdb_method {char* prefix; } ;


 struct hdb_method const dbmetod ;
 struct hdb_method* methods ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static const struct hdb_method *
find_method (const char *filename, const char **rest)
{
    const struct hdb_method *h;

    for (h = methods; h->prefix != ((void*)0); ++h) {
 if (strncmp (filename, h->prefix, strlen(h->prefix)) == 0) {
     *rest = filename + strlen(h->prefix);
     return h;
 }
    }
    return ((void*)0);
}
