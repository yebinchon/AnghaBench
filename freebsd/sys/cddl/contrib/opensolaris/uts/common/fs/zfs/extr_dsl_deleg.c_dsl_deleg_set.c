
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nvlist_t ;
struct TYPE_3__ {char const* dda_name; int * dda_nvlist; } ;
typedef TYPE_1__ dsl_deleg_arg_t ;
typedef scalar_t__ boolean_t ;


 int ZFS_SPACE_CHECK_RESERVED ;
 int dsl_deleg_check ;
 int dsl_deleg_set_sync ;
 int dsl_deleg_unset_sync ;
 int dsl_sync_task (char const*,int ,int ,TYPE_1__*,int ,int ) ;
 int fnvlist_num_pairs (int *) ;

int
dsl_deleg_set(const char *ddname, nvlist_t *nvp, boolean_t unset)
{
 dsl_deleg_arg_t dda;



 dda.dda_name = ddname;
 dda.dda_nvlist = nvp;

 return (dsl_sync_task(ddname, dsl_deleg_check,
     unset ? dsl_deleg_unset_sync : dsl_deleg_set_sync,
     &dda, fnvlist_num_pairs(nvp), ZFS_SPACE_CHECK_RESERVED));
}
