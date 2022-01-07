
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wind_profile_flags ;
typedef int uint32_t ;


 scalar_t__ _wind_stringprep_error (int const,int ) ;

int
_wind_stringprep_prohibited(const uint32_t *in, size_t in_len,
       wind_profile_flags flags)
{
    unsigned i;

    for (i = 0; i < in_len; ++i)
 if (_wind_stringprep_error(in[i], flags))
     return 1;
    return 0;
}
