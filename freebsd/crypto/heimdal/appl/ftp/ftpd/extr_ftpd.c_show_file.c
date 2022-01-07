
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int lreply (int,char*,char*) ;
 size_t strcspn (char*,char*) ;

__attribute__((used)) static int
show_file(const char *file, int code)
{
    FILE *f;
    char buf[128];

    f = fopen(file, "r");
    if(f == ((void*)0))
 return -1;
    while(fgets(buf, sizeof(buf), f)){
 buf[strcspn(buf, "\r\n")] = '\0';
 lreply(code, "%s", buf);
    }
    fclose(f);
    return 0;
}
