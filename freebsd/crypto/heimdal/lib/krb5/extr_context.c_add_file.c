
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;


 int ENOMEM ;
 int free (char*) ;
 char** realloc (char**,int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static krb5_error_code
add_file(char ***pfilenames, int *len, char *file)
{
    char **pp = *pfilenames;
    int i;

    for(i = 0; i < *len; i++) {
 if(strcmp(pp[i], file) == 0) {
     free(file);
     return 0;
 }
    }

    pp = realloc(*pfilenames, (*len + 2) * sizeof(*pp));
    if (pp == ((void*)0)) {
 free(file);
 return ENOMEM;
    }

    pp[*len] = file;
    pp[*len + 1] = ((void*)0);
    *pfilenames = pp;
    *len += 1;
    return 0;
}
