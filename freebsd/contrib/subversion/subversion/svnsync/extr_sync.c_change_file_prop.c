
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_5__ {int wrapped_node_baton; TYPE_3__* edit_baton; } ;
typedef TYPE_2__ node_baton_t ;
struct TYPE_6__ {TYPE_1__* wrapped_editor; int * normalized_node_props_counter; void* mergeinfo_tweaked; int source_prop_encoding; void* svnmerge_blocked; scalar_t__ migrate_svnmerge; void* svnmerge_migrated; void* mergeinfo_stripped; scalar_t__ strip_mergeinfo; } ;
typedef TYPE_3__ edit_baton_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {int * (* change_file_prop ) (int ,char const*,int const*,int *) ;} ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* SVN_PROP_MERGEINFO ;
 void* TRUE ;
 int normalize_string (int const**,scalar_t__*,int ,int *,int *) ;
 int remove_r0_mergeinfo (int const**,scalar_t__*,int *,int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int * stub1 (int ,char const*,int const*,int *) ;
 scalar_t__ svn_prop_needs_translation (char const*) ;
 scalar_t__ svn_prop_regular_kind ;
 scalar_t__ svn_property_kind2 (char const*) ;

__attribute__((used)) static svn_error_t *
change_file_prop(void *file_baton,
                 const char *name,
                 const svn_string_t *value,
                 apr_pool_t *pool)
{
  node_baton_t *fb = file_baton;
  edit_baton_t *eb = fb->edit_baton;


  if (svn_property_kind2(name) != svn_prop_regular_kind)
    return SVN_NO_ERROR;


  if (eb->strip_mergeinfo && (strcmp(name, SVN_PROP_MERGEINFO) == 0))
    {
      eb->mergeinfo_stripped = TRUE;
      return SVN_NO_ERROR;
    }


  if (eb->migrate_svnmerge && (strcmp(name, "svnmerge-integrated") == 0))
    {
      eb->svnmerge_migrated = TRUE;
      return SVN_NO_ERROR;
    }



  if (eb->migrate_svnmerge && (strcmp(name, "svnmerge-blocked") == 0))
    {
      eb->svnmerge_blocked = TRUE;
    }


  if (svn_prop_needs_translation(name))
    {
      svn_boolean_t was_normalized;
      svn_boolean_t mergeinfo_tweaked = FALSE;


      SVN_ERR(normalize_string(&value, &was_normalized,
                               eb->source_prop_encoding, pool, pool));

      if (value && strcmp(name, SVN_PROP_MERGEINFO) == 0)
        {
          SVN_ERR(remove_r0_mergeinfo(&value, &mergeinfo_tweaked,
                                      pool, pool));
          if (mergeinfo_tweaked)
            eb->mergeinfo_tweaked = TRUE;
        }
      if (was_normalized)
        (*(eb->normalized_node_props_counter))++;
    }

  return eb->wrapped_editor->change_file_prop(fb->wrapped_node_baton,
                                              name, value, pool);
}
