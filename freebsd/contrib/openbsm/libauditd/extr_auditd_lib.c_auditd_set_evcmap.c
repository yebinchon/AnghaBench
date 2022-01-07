
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int evn_map ;
typedef int evc_map ;
struct TYPE_8__ {int en_number; int en_name; } ;
typedef TYPE_1__ au_evname_map_t ;
struct TYPE_9__ {char* ae_name; char* ae_desc; int ae_class; int ae_number; } ;
typedef TYPE_2__ au_event_ent_t ;
struct TYPE_10__ {int ec_class; int ec_number; } ;
typedef TYPE_3__ au_evclass_map_t ;


 int ADE_NOMEM ;
 int AU_EVENT_DESC_MAX ;
 int AU_EVENT_NAME_MAX ;
 scalar_t__ audit_set_class (TYPE_3__*,int) ;
 int audit_set_event (TYPE_1__*,int) ;
 int endauevent () ;
 int free (char*) ;
 TYPE_2__* getauevent_r (TYPE_2__*) ;
 scalar_t__ malloc (int ) ;
 int setauevent () ;
 int strlcpy (int ,char*,int) ;

int
auditd_set_evcmap(void)
{
 au_event_ent_t ev, *evp;
 au_evclass_map_t evc_map;
 au_evname_map_t evn_map;
 int ctr = 0;







 ev.ae_name = (char *)malloc(AU_EVENT_NAME_MAX);
 ev.ae_desc = (char *)malloc(AU_EVENT_DESC_MAX);
 if (ev.ae_name == ((void*)0) || ev.ae_desc == ((void*)0)) {
  if (ev.ae_name != ((void*)0))
   free(ev.ae_name);
  return (ADE_NOMEM);
 }





 evp = &ev;
 setauevent();
 while ((evp = getauevent_r(evp)) != ((void*)0)) {





  if (strlcpy(evn_map.en_name, evp->ae_name,
      sizeof(evn_map.en_name)) < sizeof(evn_map.en_name)) {
   evn_map.en_number = evp->ae_number;
   (void)audit_set_event(&evn_map, sizeof(evn_map));
  }




  evc_map.ec_number = evp->ae_number;
  evc_map.ec_class = evp->ae_class;
  if (audit_set_class(&evc_map, sizeof(evc_map)) == 0)
   ctr++;
 }
 endauevent();
 free(ev.ae_name);
 free(ev.ae_desc);

 return (ctr);
}
