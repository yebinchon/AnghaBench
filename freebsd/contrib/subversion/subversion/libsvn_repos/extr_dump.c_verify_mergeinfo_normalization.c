
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int pool; } ;
struct verify_mergeinfo_normalization_baton {int path; int notify_baton; int notify_func; TYPE_1__ buffer; int normalized_paths; } ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 int _ (char*) ;
 int apr_pstrdup (int ,char const*) ;
 char const* normalized_collision ;
 char const* normalized_unique ;
 int notify_warning (int *,int ,int ,int ,int ,char const*,int ,int ) ;
 char* svn_hash_gets (int ,char const*) ;
 int svn_hash_sets (int ,int ,char const*) ;
 int svn_repos_notify_warning_mergeinfo_collision ;
 int svn_utf__normalize (char const**,char const* const,int ,TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
verify_mergeinfo_normalization(void *baton, const void *key, apr_ssize_t klen,
                               void *val, apr_pool_t *iterpool)
{
  struct verify_mergeinfo_normalization_baton *const vb = baton;

  const char *const path = key;
  const char *normpath;
  const char *found;

  SVN_ERR(svn_utf__normalize(&normpath, path, klen, &vb->buffer));
  found = svn_hash_gets(vb->normalized_paths, normpath);
  if (!found)
      svn_hash_sets(vb->normalized_paths,
                    apr_pstrdup(vb->buffer.pool, normpath),
                    normalized_unique);
  else if (found == normalized_collision)
                                         ;
  else
    {

      svn_hash_sets(vb->normalized_paths,
                    apr_pstrdup(vb->buffer.pool, normpath),
                    normalized_collision);

      notify_warning(iterpool, vb->notify_func, vb->notify_baton,
                     svn_repos_notify_warning_mergeinfo_collision,
                     _("Duplicate representation of path '%s'"
                       " in %s property of '%s'"),
                     normpath, SVN_PROP_MERGEINFO, vb->path);
    }
  return SVN_NO_ERROR;
}
