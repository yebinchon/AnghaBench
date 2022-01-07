
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int _PATH_NOLOGIN ;
 int exit (int ) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (int ,char*) ;
 int fputs (char*,int ) ;
 int stdout ;

__attribute__((used)) static void
checknologin(void)
{
    FILE *f;
    char buf[1024];

    f = fopen(_PATH_NOLOGIN, "r");
    if(f == ((void*)0))
 return;
    while(fgets(buf, sizeof(buf), f))
 fputs(buf, stdout);
    fclose(f);
    exit(0);
}
