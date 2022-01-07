
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {TYPE_1__* attr; scalar_t__ count; } ;
struct eapol_state_machine {TYPE_2__ radius_class; } ;
struct TYPE_3__ {size_t len; int * data; } ;



u8 * ieee802_1x_get_radius_class(struct eapol_state_machine *sm, size_t *len,
     int idx)
{
 if (sm == ((void*)0) || sm->radius_class.attr == ((void*)0) ||
     idx >= (int) sm->radius_class.count)
  return ((void*)0);

 *len = sm->radius_class.attr[idx].len;
 return sm->radius_class.attr[idx].data;
}
