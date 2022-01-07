
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinit_data {scalar_t__ dw_msb_value; scalar_t__ dw_lsb_value; } ;



__attribute__((used)) static int
compare_R(const void *_pa, const void *_pb)
{
 const struct sysinit_data * const *pa = _pa;
 const struct sysinit_data * const *pb = _pb;

 if ((*pa)->dw_msb_value > (*pb)->dw_msb_value)
  return (-1);

 if ((*pa)->dw_msb_value < (*pb)->dw_msb_value)
  return (1);

 if ((*pa)->dw_lsb_value > (*pb)->dw_lsb_value)
  return (-1);

 if ((*pa)->dw_lsb_value < (*pb)->dw_lsb_value)
  return (1);

 return (0);
}
