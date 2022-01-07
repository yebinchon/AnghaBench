
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_3__ {unsigned int length; int base; } ;
typedef TYPE_1__ isc_region_t ;
typedef int isc_buffer_t ;


 int ISC_R_NOSPACE ;
 int ISC_R_SUCCESS ;
 int isc_buffer_add (int *,unsigned int) ;
 int isc_buffer_availableregion (int *,TYPE_1__*) ;
 int memcpy (int ,char const*,unsigned int) ;
 unsigned int strlen (char const*) ;

__attribute__((used)) static isc_result_t
str_totext(const char *source, isc_buffer_t *target) {
 unsigned int l;
 isc_region_t region;

 isc_buffer_availableregion(target, &region);
 l = strlen(source);

 if (l > region.length)
  return (ISC_R_NOSPACE);

 memcpy(region.base, source, l);
 isc_buffer_add(target, l);
 return (ISC_R_SUCCESS);
}
