
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_LIST ;
 int NOT_IN_LIST ;
 int addentry (int *,char*,char*) ;
 int errx (int,char*) ;
 int selhead ;
 char* strsep (char**,char*) ;
 int which ;

__attribute__((used)) static void
maketypelist(char *fslist)
{
 char *ptr;

 if ((fslist == ((void*)0)) || (fslist[0] == '\0'))
  errx(1, "empty type list");

 if (fslist[0] == 'n' && fslist[1] == 'o') {
  fslist += 2;
  which = NOT_IN_LIST;
 }
 else
  which = IN_LIST;

 while ((ptr = strsep(&fslist, ",")) != ((void*)0))
  addentry(&selhead, ptr, "");

}
