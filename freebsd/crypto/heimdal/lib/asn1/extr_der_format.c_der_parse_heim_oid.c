
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; unsigned int* components; } ;
typedef TYPE_1__ heim_oid ;


 int EINVAL ;
 int ENOMEM ;
 long INT_MAX ;
 int der_free_oid (TYPE_1__*) ;
 int free (char*) ;
 unsigned int* realloc (unsigned int*,int) ;
 char* strdup (char const*) ;
 char* strtok_r (char*,char const*,char**) ;
 long strtol (char*,char**,int) ;

int
der_parse_heim_oid (const char *str, const char *sep, heim_oid *data)
{
    char *s, *w, *brkt, *endptr;
    unsigned int *c;
    long l;

    data->length = 0;
    data->components = ((void*)0);

    if (sep == ((void*)0))
 sep = ".";

    s = strdup(str);

    for (w = strtok_r(s, sep, &brkt);
  w != ((void*)0);
  w = strtok_r(((void*)0), sep, &brkt)) {

 c = realloc(data->components,
      (data->length + 1) * sizeof(data->components[0]));
 if (c == ((void*)0)) {
     der_free_oid(data);
     free(s);
     return ENOMEM;
 }
 data->components = c;

 l = strtol(w, &endptr, 10);
 if (*endptr != '\0' || l < 0 || l > INT_MAX) {
     der_free_oid(data);
     free(s);
     return EINVAL;
 }
 data->components[data->length++] = l;
    }
    free(s);
    return 0;
}
