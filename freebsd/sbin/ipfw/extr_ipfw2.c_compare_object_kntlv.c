
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct object_kt {scalar_t__ uidx; scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {scalar_t__ idx; TYPE_1__ head; } ;
typedef TYPE_2__ ipfw_obj_ntlv ;



__attribute__((used)) static int
compare_object_kntlv(const void *k, const void *v)
{
 ipfw_obj_ntlv *ntlv;
 struct object_kt key;

 key = *((struct object_kt *)k);
 ntlv = (ipfw_obj_ntlv *)v;

 if (key.uidx < ntlv->idx)
  return (-1);
 else if (key.uidx > ntlv->idx)
  return (1);

 if (key.type < ntlv->head.type)
  return (-1);
 else if (key.type > ntlv->head.type)
  return (1);

 return (0);
}
