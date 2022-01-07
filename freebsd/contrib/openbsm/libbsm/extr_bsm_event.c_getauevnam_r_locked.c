
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au_event_ent {int ae_name; } ;


 int AUDIT_EVENT_FILE ;
 int AU_LINE_MAX ;
 int * eventfromstr (int ,struct au_event_ent*) ;
 int * fgets (int ,int ,int *) ;
 int * fopen (int ,char*) ;
 int * fp ;
 int linestr ;
 int setauevent_locked () ;
 scalar_t__ strcmp (char const*,int ) ;
 char* strrchr (int ,char) ;

__attribute__((used)) static struct au_event_ent *
getauevnam_r_locked(struct au_event_ent *e, const char *name)
{
 char *nl;

 if (name == ((void*)0))
  return (((void*)0));


 setauevent_locked();

 if ((fp == ((void*)0)) && ((fp = fopen(AUDIT_EVENT_FILE, "r")) == ((void*)0)))
  return (((void*)0));

 while (fgets(linestr, AU_LINE_MAX, fp) != ((void*)0)) {

  if ((nl = strrchr(linestr, '\n')) != ((void*)0))
   *nl = '\0';

  if (eventfromstr(linestr, e) != ((void*)0)) {
   if (strcmp(name, e->ae_name) == 0)
    return (e);
  }
 }

 return (((void*)0));
}
