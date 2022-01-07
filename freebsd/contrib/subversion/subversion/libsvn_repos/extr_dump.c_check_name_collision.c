
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct edit_baton {int notify_baton; int notify_func; } ;
struct dir_baton {int path; struct edit_baton* edit_baton; } ;
struct TYPE_2__ {int pool; } ;
struct check_name_collision_baton {TYPE_1__ buffer; int normalized; struct dir_baton* dir_baton; } ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_UTF__UNKNOWN_LENGTH ;
 int _ (char*) ;
 int apr_pstrdup (int ,char const*) ;
 char const* normalized_collision ;
 char const* normalized_unique ;
 int notify_warning (int *,int ,int ,int ,int ,char const*) ;
 char* svn_hash_gets (int ,char const*) ;
 int svn_hash_sets (int ,int ,char const*) ;
 void const* svn_relpath_join (int ,char const*,int *) ;
 int svn_repos_notify_warning_name_collision ;
 int svn_utf__normalize (char const**,void const*,int ,TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
check_name_collision(void *baton, const void *key, apr_ssize_t klen,
                     void *val, apr_pool_t *iterpool)
{
  struct check_name_collision_baton *const cb = baton;
  const char *name;
  const char *found;

  SVN_ERR(svn_utf__normalize(&name, key, klen, &cb->buffer));

  found = svn_hash_gets(cb->normalized, name);
  if (!found)
    svn_hash_sets(cb->normalized, apr_pstrdup(cb->buffer.pool, name),
                  normalized_unique);
  else if (found == normalized_collision)
                                         ;
  else
    {
      struct dir_baton *const db = cb->dir_baton;
      struct edit_baton *const eb = db->edit_baton;
      const char* normpath;

      svn_hash_sets(cb->normalized, apr_pstrdup(cb->buffer.pool, name),
                    normalized_collision);

      SVN_ERR(svn_utf__normalize(
                  &normpath, svn_relpath_join(db->path, name, iterpool),
                  SVN_UTF__UNKNOWN_LENGTH, &cb->buffer));
      notify_warning(iterpool, eb->notify_func, eb->notify_baton,
                     svn_repos_notify_warning_name_collision,
                     _("Duplicate representation of path '%s'"), normpath);
    }
  return SVN_NO_ERROR;
}
