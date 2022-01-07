
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int au_event_t ;


 int * getauevnonam_r (int *,char const*) ;

au_event_t *
getauevnonam(const char *event_name)
{
 static au_event_t event;

 return (getauevnonam_r(&event, event_name));
}
