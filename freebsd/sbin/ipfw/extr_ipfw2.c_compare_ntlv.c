
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {scalar_t__ set; scalar_t__ idx; TYPE_1__ head; } ;
typedef TYPE_2__ ipfw_obj_ntlv ;



__attribute__((used)) static int
compare_ntlv(const void *_a, const void *_b)
{
 ipfw_obj_ntlv *a, *b;

 a = (ipfw_obj_ntlv *)_a;
 b = (ipfw_obj_ntlv *)_b;

 if (a->set < b->set)
  return (-1);
 else if (a->set > b->set)
  return (1);

 if (a->idx < b->idx)
  return (-1);
 else if (a->idx > b->idx)
  return (1);

 if (a->head.type < b->head.type)
  return (-1);
 else if (a->head.type > b->head.type)
  return (1);

 return (0);
}
