
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* cvmx_zone_t ;
struct TYPE_3__ {char* name; } ;



__attribute__((used)) static inline char *cvmx_zone_name(cvmx_zone_t zone)
{
    return(zone->name);
}
