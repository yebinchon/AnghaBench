
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int value ;
struct TYPE_5__ {scalar_t__ nvp_type; } ;
typedef TYPE_1__ nvpair_t ;


 int NVPAIR_ASSERT (TYPE_1__*) ;
 scalar_t__ NV_TYPE_BOOL_ARRAY ;
 int PJDLOG_ASSERT (int) ;
 int nvpair_append (TYPE_1__*,int const*,int,int) ;

int
nvpair_append_bool_array(nvpair_t *nvp, const bool value)
{

 NVPAIR_ASSERT(nvp);
 PJDLOG_ASSERT(nvp->nvp_type == NV_TYPE_BOOL_ARRAY);
 return (nvpair_append(nvp, &value, sizeof(value), sizeof(value)));
}
