
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;
 char* malloc (int) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static int
parse_number (const char **buf, int n, int *num)
{
    char *s, *str;
    int i;

    str = malloc(n + 1);
    if (str == ((void*)0))
 return -1;


    for (; **buf != '\0' && isspace((unsigned char)(**buf)); (*buf)++)
 ;


    for (i = 0; **buf != '\0' && i < n && isdigit((unsigned char)(**buf)); i++, (*buf)++)
 str[i] = **buf;
    str[i] = '\0';

    *num = strtol (str, &s, 10);
    free(str);
    if (s == str)
 return -1;

    return 0;
}
