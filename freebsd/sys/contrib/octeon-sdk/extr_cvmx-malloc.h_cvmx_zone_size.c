
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* cvmx_zone_t ;
struct TYPE_3__ {int elem_size; } ;



__attribute__((used)) static inline uint32_t cvmx_zone_size(cvmx_zone_t zone)
{
    return(zone->elem_size);
}
