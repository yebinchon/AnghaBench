
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _bcs_isspace (char const) ;

const char *
_citrus_bcs_skip_ws_len(const char * __restrict p, size_t * __restrict len)
{

 while (*p && *len > 0 && _bcs_isspace(*p)) {
  p++;
  (*len)--;
 }

 return (p);
}
