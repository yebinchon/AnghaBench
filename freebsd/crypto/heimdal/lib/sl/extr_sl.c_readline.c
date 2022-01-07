
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int BUFSIZ ;
 int fflush (int ) ;
 int * fgets (char*,int,int ) ;
 int printf (char*,char*) ;
 int stdin ;
 int stdout ;
 size_t strcspn (char*,char*) ;
 char* strdup (char*) ;

__attribute__((used)) static char *
readline(char *prompt)
{
    char buf[BUFSIZ];
    printf ("%s", prompt);
    fflush (stdout);
    if(fgets(buf, sizeof(buf), stdin) == ((void*)0))
 return ((void*)0);
    buf[strcspn(buf, "\r\n")] = '\0';
    return strdup(buf);
}
