
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_curve_params {scalar_t__ name; } ;


 int OBJ_txt2nid (scalar_t__) ;
 struct dpp_curve_params const* dpp_curves ;

__attribute__((used)) static const struct dpp_curve_params * dpp_get_curve_nid(int nid)
{
 int i, tmp;

 if (!nid)
  return ((void*)0);
 for (i = 0; dpp_curves[i].name; i++) {
  tmp = OBJ_txt2nid(dpp_curves[i].name);
  if (tmp == nid)
   return &dpp_curves[i];
 }
 return ((void*)0);
}
