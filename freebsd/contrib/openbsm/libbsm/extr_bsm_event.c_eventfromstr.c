
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au_mask {int am_success; } ;
struct au_event_ent {int ae_class; int ae_number; int ae_desc; int ae_name; } ;


 scalar_t__ AU_EVENT_DESC_MAX ;
 scalar_t__ AU_EVENT_NAME_MAX ;
 int atoi (char*) ;
 int eventdelim ;
 scalar_t__ getauditflagsbin (char*,struct au_mask*) ;
 int strlcpy (int ,char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;
 char* strtok_r (char*,int ,char**) ;

__attribute__((used)) static struct au_event_ent *
eventfromstr(char *str, struct au_event_ent *e)
{
 char *evno, *evname, *evdesc, *evclass;
 struct au_mask evmask;
 char *last;

 evno = strtok_r(str, eventdelim, &last);
 evname = strtok_r(((void*)0), eventdelim, &last);
 evdesc = strtok_r(((void*)0), eventdelim, &last);
 evclass = strtok_r(((void*)0), eventdelim, &last);

 if ((evno == ((void*)0)) || (evname == ((void*)0)))
  return (((void*)0));

 if (strlen(evname) >= AU_EVENT_NAME_MAX)
  return (((void*)0));

 strlcpy(e->ae_name, evname, AU_EVENT_NAME_MAX);
 if (evdesc != ((void*)0)) {
  if (strlen(evdesc) >= AU_EVENT_DESC_MAX)
   return (((void*)0));
  strlcpy(e->ae_desc, evdesc, AU_EVENT_DESC_MAX);
 } else
  strlcpy(e->ae_desc, "", AU_EVENT_DESC_MAX);

 e->ae_number = atoi(evno);




 if (evclass != ((void*)0)) {
  if (getauditflagsbin(evclass, &evmask) != 0)
   e->ae_class = 0;
  else
   e->ae_class = evmask.am_success;
 } else
  e->ae_class = 0;

 return (e);
}
