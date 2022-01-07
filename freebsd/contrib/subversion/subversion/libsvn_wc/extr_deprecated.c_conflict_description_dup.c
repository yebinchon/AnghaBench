
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* src_right_version; void* src_left_version; void* merged_file; void* my_file; void* their_file; void* base_file; void* mime_type; void* property_name; void* path; } ;
typedef TYPE_1__ svn_wc_conflict_description_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;
 void* apr_pstrdup (int *,void*) ;
 void* svn_wc_conflict_version_dup (void*,int *) ;

__attribute__((used)) static svn_wc_conflict_description_t *
conflict_description_dup(const svn_wc_conflict_description_t *conflict,
                         apr_pool_t *pool)
{
  svn_wc_conflict_description_t *new_conflict;

  new_conflict = apr_pcalloc(pool, sizeof(*new_conflict));


  *new_conflict = *conflict;

  if (conflict->path)
    new_conflict->path = apr_pstrdup(pool, conflict->path);
  if (conflict->property_name)
    new_conflict->property_name = apr_pstrdup(pool, conflict->property_name);
  if (conflict->mime_type)
    new_conflict->mime_type = apr_pstrdup(pool, conflict->mime_type);

  if (conflict->base_file)
    new_conflict->base_file = apr_pstrdup(pool, conflict->base_file);
  if (conflict->their_file)
    new_conflict->their_file = apr_pstrdup(pool, conflict->their_file);
  if (conflict->my_file)
    new_conflict->my_file = apr_pstrdup(pool, conflict->my_file);
  if (conflict->merged_file)
    new_conflict->merged_file = apr_pstrdup(pool, conflict->merged_file);
  if (conflict->src_left_version)
    new_conflict->src_left_version =
      svn_wc_conflict_version_dup(conflict->src_left_version, pool);
  if (conflict->src_right_version)
    new_conflict->src_right_version =
      svn_wc_conflict_version_dup(conflict->src_right_version, pool);

  return new_conflict;
}
