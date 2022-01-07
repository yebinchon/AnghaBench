
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oper_class_map {int bw; } ;
int oper_class_bw_to_int(const struct oper_class_map *map)
{
 switch (map->bw) {
 case 133:
  return 20;
 case 130:
 case 131:
  return 40;
 case 129:
  return 80;
 case 128:
 case 134:
  return 160;
 case 132:
  return 2160;
 default:
  return 0;
 }
}
