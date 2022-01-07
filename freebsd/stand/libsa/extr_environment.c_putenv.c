
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int setenv (char*,char*,int) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;

int
putenv(char *string)
{
    char *value, *copy;
    int result;

    copy = strdup(string);
    if ((value = strchr(copy, '=')) != ((void*)0))
 *(value++) = 0;
    result = setenv(copy, value, 1);
    free(copy);
    return(result);
}
