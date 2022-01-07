
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int s ;


 char* ctime (int *) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static char*
printable_time_internal(time_t t, int x)
{
    static char s[128];
    char *p;

    if ((p = ctime(&t)) == ((void*)0))
 strlcpy(s, "?", sizeof(s));
    else
 strlcpy(s, p + 4, sizeof(s));
    s[x] = 0;
    return s;
}
