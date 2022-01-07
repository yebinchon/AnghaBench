
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au_class_ent {int dummy; } ;


 int AUDIT_CLASS_FILE ;
 int AU_LINE_MAX ;
 int * classfromstr (char*,struct au_class_ent*) ;
 int * fgets (char*,int ,int *) ;
 int * fopen (int ,char*) ;
 int * fp ;
 char* linestr ;
 char* strrchr (char*,char) ;

__attribute__((used)) static struct au_class_ent *
getauclassent_r_locked(struct au_class_ent *c)
{
 char *tokptr, *nl;

 if ((fp == ((void*)0)) && ((fp = fopen(AUDIT_CLASS_FILE, "r")) == ((void*)0)))
  return (((void*)0));




 while (1) {
  if (fgets(linestr, AU_LINE_MAX, fp) == ((void*)0))
   return (((void*)0));


  if (linestr[0] == '#')
   continue;


  if ((nl = strrchr(linestr, '\n')) != ((void*)0))
   *nl = '\0';


  tokptr = linestr;
  if (classfromstr(tokptr, c) == ((void*)0))
   return (((void*)0));
  break;
 }

 return (c);
}
