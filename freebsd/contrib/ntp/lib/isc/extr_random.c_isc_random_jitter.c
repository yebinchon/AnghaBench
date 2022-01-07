
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ isc_uint32_t ;


 int REQUIRE (int) ;
 int isc_random_get (scalar_t__*) ;

isc_uint32_t
isc_random_jitter(isc_uint32_t max, isc_uint32_t jitter) {
 isc_uint32_t rnd;

 REQUIRE(jitter < max || (jitter == 0 && max == 0));

 if (jitter == 0)
  return (max);

 isc_random_get(&rnd);
 return (max - rnd % jitter);
}
