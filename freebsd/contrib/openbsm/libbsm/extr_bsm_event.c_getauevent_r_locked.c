
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au_event_ent {int dummy; } ;


 int AUDIT_EVENT_FILE ;
 int AU_LINE_MAX ;
 int * eventfromstr (char*,struct au_event_ent*) ;
 int * fgets (char*,int ,int *) ;
 int * fopen (int ,char*) ;
 int * fp ;
 char* linestr ;
 char* strrchr (char*,char) ;

__attribute__((used)) static struct au_event_ent *
getauevent_r_locked(struct au_event_ent *e)
{
 char *nl;

 if ((fp == ((void*)0)) && ((fp = fopen(AUDIT_EVENT_FILE, "r")) == ((void*)0)))
  return (((void*)0));

 while (1) {
  if (fgets(linestr, AU_LINE_MAX, fp) == ((void*)0))
   return (((void*)0));


  if ((nl = strrchr(linestr, '\n')) != ((void*)0))
   *nl = '\0';


  if (linestr[0] == '#')
   continue;


  if (eventfromstr(linestr, e) == ((void*)0))
   return (((void*)0));
  break;
 }

 return (e);
}
