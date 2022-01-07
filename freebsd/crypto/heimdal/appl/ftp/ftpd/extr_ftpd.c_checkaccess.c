
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 int ALLOWED ;
 int BUFSIZ ;
 int NOT_ALLOWED ;
 int _PATH_FTPUSERS ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (int ,char*) ;
 scalar_t__ match (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static int
checkaccess(char *name)
{


    FILE *fd;
    int allowed = 0;
    char *user, *perm, line[BUFSIZ];
    char *foo;

    fd = fopen(_PATH_FTPUSERS, "r");

    if(fd == ((void*)0))
 return allowed;

    while (fgets(line, sizeof(line), fd) != ((void*)0)) {
 foo = ((void*)0);
 user = strtok_r(line, " \t\n", &foo);
 if (user == ((void*)0) || user[0] == '#')
     continue;
 perm = strtok_r(((void*)0), " \t\n", &foo);
 if (match(user, name) == 0){
     if(perm && strcmp(perm, "allow") == 0)
  allowed = 0;
     else
  allowed = 1;
     break;
 }
    }
    fclose(fd);
    return allowed;
}
