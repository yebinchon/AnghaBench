
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* SVNDIFF_V0 ;
 char const* SVNDIFF_V1 ;
 char const* SVNDIFF_V2 ;

__attribute__((used)) static const char *
get_svndiff_header(int version)
{
  if (version == 2)
    return SVNDIFF_V2;
  else if (version == 1)
    return SVNDIFF_V1;
  else
    return SVNDIFF_V0;
}
