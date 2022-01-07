
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*,char const*,long,long,long) ;

__attribute__((used)) static int param_in_range(const char *name, long value,
     long min_val, long max_val)
{
 if (value < min_val || (max_val >= 0 && value > max_val)) {
  wpa_printf(MSG_DEBUG,
      "WMM AC: param %s (%ld) is out of range (%ld-%ld)",
      name, value, min_val, max_val);
  return 0;
 }

 return 1;
}
