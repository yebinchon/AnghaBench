
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
 char* strdup (char*) ;
 int strlen (char*) ;

__attribute__((used)) static char *
simple_readline(char *prompt)
{
    char buf[BUFSIZ];
    printf ("%s", prompt);
    fflush (stdout);
    if(fgets(buf, sizeof(buf), stdin) == ((void*)0))
 return ((void*)0);
    if (buf[strlen(buf) - 1] == '\n')
 buf[strlen(buf) - 1] = '\0';
    return strdup(buf);
}
