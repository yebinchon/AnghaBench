
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int kind; int property_name; } ;
typedef TYPE_1__ svn_wc_conflict_description2_t ;
struct TYPE_7__ {TYPE_1__ const* legacy_tree_conflict; int legacy_prop_conflict_propname; int * prop_conflicts; TYPE_1__ const* legacy_text_conflict; } ;
typedef TYPE_2__ svn_client_conflict_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR_ASSERT_NO_RETURN (int ) ;
 int * apr_hash_make (int *) ;
 int svn_hash_sets (int *,int ,TYPE_1__ const*) ;




__attribute__((used)) static void
add_legacy_desc_to_conflict(const svn_wc_conflict_description2_t *desc,
                            svn_client_conflict_t *conflict,
                            apr_pool_t *result_pool)
{
  switch (desc->kind)
    {
      case 129:
        conflict->legacy_text_conflict = desc;
        break;

      case 130:
        if (conflict->prop_conflicts == ((void*)0))
          conflict->prop_conflicts = apr_hash_make(result_pool);
        svn_hash_sets(conflict->prop_conflicts, desc->property_name, desc);
        conflict->legacy_prop_conflict_propname = desc->property_name;
        break;

      case 128:
        conflict->legacy_tree_conflict = desc;
        break;

      default:
        SVN_ERR_ASSERT_NO_RETURN(FALSE);
    }
}
