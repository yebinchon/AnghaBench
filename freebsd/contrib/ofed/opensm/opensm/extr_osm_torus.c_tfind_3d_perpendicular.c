
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t_switch {int tmp; } ;
struct f_switch {int dummy; } ;


 struct f_switch* ffind_3d_perpendicular (int ,int ,int ,int ) ;

__attribute__((used)) static
struct f_switch *tfind_3d_perpendicular(struct t_switch *tsw0,
     struct t_switch *tsw1,
     struct t_switch *tsw2,
     struct t_switch *tsw3)
{
 if (!(tsw0 && tsw1 && tsw2 && tsw3))
  return ((void*)0);

 return ffind_3d_perpendicular(tsw0->tmp, tsw1->tmp,
          tsw2->tmp, tsw3->tmp);
}
