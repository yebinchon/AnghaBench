
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ int32_t ;


 int HRSPERDAY ;
 int MINSPERHR ;
 int SECSPERMIN ;
 int int32_sflag (scalar_t__) ;
 int int32_to_uint32_2cpl (scalar_t__) ;
 scalar_t__ uint32_2cpl_to_int32 (int) ;

__attribute__((used)) static int32_t
priv_timesplit(
 int32_t split[3],
 int32_t ts
 )
{




 uint32_t us, um, uh, ud, sflag;

 sflag = int32_sflag(ts);
 us = int32_to_uint32_2cpl(ts);

 um = (sflag ^ us) / SECSPERMIN;
 uh = um / MINSPERHR;
 ud = uh / HRSPERDAY;

 um ^= sflag;
 uh ^= sflag;
 ud ^= sflag;

 split[0] = (int32_t)(uh - ud * HRSPERDAY );
 split[1] = (int32_t)(um - uh * MINSPERHR );
 split[2] = (int32_t)(us - um * SECSPERMIN);

 return uint32_2cpl_to_int32(ud);
}
