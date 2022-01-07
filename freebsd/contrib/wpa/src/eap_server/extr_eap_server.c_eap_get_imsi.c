
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {char* imsi; } ;



const char * eap_get_imsi(struct eap_sm *sm)
{
 if (!sm || sm->imsi[0] == '\0')
  return ((void*)0);
 return sm->imsi;
}
