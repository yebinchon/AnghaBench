
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int * fgets (char*,int,int *) ;
 int isspace (unsigned char) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int ) ;

__attribute__((used)) static const char *
expand_one_file(FILE *f, const char *cell)
{
    static char buf[1024];
    char *p;

    while (fgets (buf, sizeof(buf), f) != ((void*)0)) {
 if(buf[0] == '>') {
     for(p = buf; *p && !isspace((unsigned char)*p) && *p != '#'; p++)
  ;
     *p = '\0';
     if(strncmp(buf + 1, cell, strlen(cell)) == 0)
  return buf + 1;
 }
 buf[0] = '\0';
    }
    return ((void*)0);
}
