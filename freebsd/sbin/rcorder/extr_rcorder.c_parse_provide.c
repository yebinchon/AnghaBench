
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filenode ;


 int add_provide (int *,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static void
parse_provide(filenode *node, char *buffer)
{
 char *s;

 while ((s = strsep(&buffer, " \t\n")) != ((void*)0))
  if (*s != '\0')
   add_provide(node, s);
}
