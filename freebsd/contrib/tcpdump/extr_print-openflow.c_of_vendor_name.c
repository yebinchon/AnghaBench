
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tok {int dummy; } ;


 struct tok* onf_exp_str ;
 struct tok* oui_values ;
 char const* tok2str (struct tok const*,char*,int const) ;

const char *
of_vendor_name(const uint32_t vendor)
{
 const struct tok *table = (vendor & 0xff000000) == 0 ? oui_values : onf_exp_str;
 return tok2str(table, "unknown", vendor);
}
