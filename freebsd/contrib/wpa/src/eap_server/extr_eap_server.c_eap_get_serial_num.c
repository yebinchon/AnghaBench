
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {char const* serial_num; } ;



const char * eap_get_serial_num(struct eap_sm *sm)
{
 return sm->serial_num;
}
