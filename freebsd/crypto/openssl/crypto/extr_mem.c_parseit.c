
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int atol (char*) ;
 int md_count ;
 int md_fail_percent ;
 char* md_failstring ;
 char* strchr (char*,char) ;

__attribute__((used)) static void parseit(void)
{
    char *semi = strchr(md_failstring, ';');
    char *atsign;

    if (semi != ((void*)0))
        *semi++ = '\0';


    md_count = atol(md_failstring);
    atsign = strchr(md_failstring, '@');
    md_fail_percent = atsign == ((void*)0) ? 0 : atoi(atsign + 1);

    if (semi != ((void*)0))
        md_failstring = semi;
}
