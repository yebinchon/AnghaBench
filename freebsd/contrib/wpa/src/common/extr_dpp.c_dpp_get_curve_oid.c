
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_curve_params {scalar_t__ name; } ;
typedef int ASN1_OBJECT ;


 scalar_t__ OBJ_cmp (int const*,int *) ;
 int * OBJ_txt2obj (scalar_t__,int ) ;
 struct dpp_curve_params const* dpp_curves ;

__attribute__((used)) static const struct dpp_curve_params *
dpp_get_curve_oid(const ASN1_OBJECT *poid)
{
 ASN1_OBJECT *oid;
 int i;

 for (i = 0; dpp_curves[i].name; i++) {
  oid = OBJ_txt2obj(dpp_curves[i].name, 0);
  if (oid && OBJ_cmp(poid, oid) == 0)
   return &dpp_curves[i];
 }
 return ((void*)0);
}
