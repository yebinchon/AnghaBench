
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int BUFSIZ ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int fputs (char*,int ) ;
 int stdout ;

__attribute__((used)) static void
show_file(const char *file)
{
    FILE *f;
    char buf[BUFSIZ];
    if((f = fopen(file, "r")) == ((void*)0))
 return;
    while (fgets(buf, sizeof(buf), f))
 fputs(buf, stdout);
    fclose(f);
}
