
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_curve_params {scalar_t__ jwk_crv; scalar_t__ name; } ;


 struct dpp_curve_params const* dpp_curves ;
 scalar_t__ os_strcmp (char const*,scalar_t__) ;

__attribute__((used)) static const struct dpp_curve_params *
dpp_get_curve_jwk_crv(const char *name)
{
 int i;

 for (i = 0; dpp_curves[i].name; i++) {
  if (dpp_curves[i].jwk_crv &&
      os_strcmp(name, dpp_curves[i].jwk_crv) == 0)
   return &dpp_curves[i];
 }
 return ((void*)0);
}
