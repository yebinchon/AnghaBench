
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au_user_ent {int dummy; } ;


 int AUDIT_USER_FILE ;
 int AU_LINE_MAX ;
 int * fgets (char*,int ,int *) ;
 int * fopen (int ,char*) ;
 int * fp ;
 char* linestr ;
 char* strrchr (char*,char) ;
 int * userfromstr (char*,struct au_user_ent*) ;

__attribute__((used)) static struct au_user_ent *
getauuserent_r_locked(struct au_user_ent *u)
{
 char *nl;

 if ((fp == ((void*)0)) && ((fp = fopen(AUDIT_USER_FILE, "r")) == ((void*)0)))
  return (((void*)0));

 while (1) {
  if (fgets(linestr, AU_LINE_MAX, fp) == ((void*)0))
   return (((void*)0));


  if ((nl = strrchr(linestr, '\n')) != ((void*)0))
   *nl = '\0';


  if (linestr[0] == '#')
   continue;


  if (userfromstr(linestr, u) == ((void*)0))
   return (((void*)0));
  break;
 }

 return (u);
}
