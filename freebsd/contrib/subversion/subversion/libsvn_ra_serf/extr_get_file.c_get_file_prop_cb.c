
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
struct file_prop_baton_t {int result_pool; int props; int sha1_checksum; int kind; } ;
typedef int apr_pool_t ;


 char* SVN_DAV_PROP_NS_DAV ;
 int * SVN_NO_ERROR ;
 int apr_pstrdup (int ,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int svn_hash_sets (int ,char const*,int ) ;
 int svn_node_dir ;
 int svn_node_file ;
 char* svn_ra_serf__svnname_from_wirename (char const*,char const*,int ) ;
 int svn_string_dup (TYPE_1__ const*,int ) ;

__attribute__((used)) static svn_error_t *
get_file_prop_cb(void *baton,
                 const char *path,
                 const char *ns,
                 const char *name,
                 const svn_string_t *value,
                 apr_pool_t *scratch_pool)
{
  struct file_prop_baton_t *fb = baton;
  const char *svn_name;

  if (strcmp(ns, "DAV:") == 0 && strcmp(name, "resourcetype") == 0)
    {
      const char *val = value->data;

      if (strcmp(val, "collection") == 0)
        fb->kind = svn_node_dir;
      else
        fb->kind = svn_node_file;

      return SVN_NO_ERROR;
    }
  else if (strcmp(ns, SVN_DAV_PROP_NS_DAV) == 0
           && strcmp(name, "sha1-checksum") == 0)
    {
      fb->sha1_checksum = apr_pstrdup(fb->result_pool, value->data);
    }

  if (!fb->props)
    return SVN_NO_ERROR;

  svn_name = svn_ra_serf__svnname_from_wirename(ns, name, fb->result_pool);
  if (svn_name)
    {
      svn_hash_sets(fb->props, svn_name,
                    svn_string_dup(value, fb->result_pool));
    }
  return SVN_NO_ERROR;
}
