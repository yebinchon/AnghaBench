
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int slist_t ;


 int addtag (int *,char*) ;
 char* malloc (int) ;
 int mtree_err (char*) ;
 int snprintf (char*,int,char*,char*) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;

void
parsetags(slist_t *list, char *args)
{
 char *p, *e;
 int len;

 if (args == ((void*)0)) {
  addtag(list, ((void*)0));
  return;
 }
 while ((p = strsep(&args, ",")) != ((void*)0)) {
  if (*p == '\0')
   continue;
  len = strlen(p) + 3;
  if ((e = malloc(len)) == ((void*)0))
   mtree_err("memory allocation error");
  snprintf(e, len, ",%s,", p);
  addtag(list, e);
 }
}
