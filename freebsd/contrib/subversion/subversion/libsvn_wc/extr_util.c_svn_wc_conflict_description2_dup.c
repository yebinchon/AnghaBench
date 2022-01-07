
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* prop_value_incoming_new; void* prop_value_incoming_old; void* prop_value_working; void* prop_value_base; void* their_abspath; void* prop_reject_abspath; void* src_right_version; void* src_left_version; void* merged_file; void* my_abspath; void* base_abspath; void* mime_type; void* property_name; void* local_abspath; } ;
typedef TYPE_1__ svn_wc_conflict_description2_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;
 void* apr_pstrdup (int *,void*) ;
 void* svn_string_dup (void*,int *) ;
 void* svn_wc_conflict_version_dup (void*,int *) ;

svn_wc_conflict_description2_t *
svn_wc_conflict_description2_dup(const svn_wc_conflict_description2_t *conflict,
                                  apr_pool_t *pool)
{
  svn_wc_conflict_description2_t *new_conflict;

  new_conflict = apr_pcalloc(pool, sizeof(*new_conflict));


  *new_conflict = *conflict;

  if (conflict->local_abspath)
    new_conflict->local_abspath = apr_pstrdup(pool, conflict->local_abspath);
  if (conflict->property_name)
    new_conflict->property_name = apr_pstrdup(pool, conflict->property_name);
  if (conflict->mime_type)
    new_conflict->mime_type = apr_pstrdup(pool, conflict->mime_type);
  if (conflict->base_abspath)
    new_conflict->base_abspath = apr_pstrdup(pool, conflict->base_abspath);
  if (conflict->their_abspath)
    new_conflict->their_abspath = apr_pstrdup(pool, conflict->their_abspath);
  if (conflict->my_abspath)
    new_conflict->my_abspath = apr_pstrdup(pool, conflict->my_abspath);
  if (conflict->merged_file)
    new_conflict->merged_file = apr_pstrdup(pool, conflict->merged_file);
  if (conflict->src_left_version)
    new_conflict->src_left_version =
      svn_wc_conflict_version_dup(conflict->src_left_version, pool);
  if (conflict->src_right_version)
    new_conflict->src_right_version =
      svn_wc_conflict_version_dup(conflict->src_right_version, pool);



  if (conflict->prop_reject_abspath)
    new_conflict->prop_reject_abspath = new_conflict->their_abspath;

  if (conflict->prop_value_base)
    new_conflict->prop_value_base =
      svn_string_dup(conflict->prop_value_base, pool);
  if (conflict->prop_value_working)
    new_conflict->prop_value_working =
      svn_string_dup(conflict->prop_value_working, pool);
  if (conflict->prop_value_incoming_old)
    new_conflict->prop_value_incoming_old =
      svn_string_dup(conflict->prop_value_incoming_old, pool);
  if (conflict->prop_value_incoming_new)
    new_conflict->prop_value_incoming_new =
      svn_string_dup(conflict->prop_value_incoming_new, pool);

  return new_conflict;
}
