
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _bcs_isspace (char const) ;

void
_citrus_bcs_trunc_rws_len(const char * __restrict p, size_t * __restrict len)
{

 while (*len > 0 && _bcs_isspace(p[*len - 1]))
  (*len)--;
}
