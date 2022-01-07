
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ ibnd_node_t ;






__attribute__((used)) static inline const char *ports_nt_str_compat(ibnd_node_t * node)
{
 switch (node->type) {
 case 128:
  return "SW";
 case 130:
  return "CA";
 case 129:
  return "RT";
 }
 return "??";
}
