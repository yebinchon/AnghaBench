
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int c ;


 int CGETS (int,int,char*) ;
 int SHIN ;
 int flush () ;
 int force_read (int ,char*,int) ;
 int * strchr (int ,char) ;
 int xprintf (char*,char const*) ;

int
getYN(const char *prompt)
{
    int doit;
    char c;

    xprintf("%s", prompt);
    flush();
    (void) force_read(SHIN, &c, sizeof(c));




    doit = (strchr(CGETS(22, 14, "Yy"), c) != ((void*)0));
    while (c != '\n' && force_read(SHIN, &c, sizeof(c)) == sizeof(c))
 continue;
    return doit;
}
