
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char const* data; scalar_t__ len; } ;
typedef TYPE_2__ svn_string_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
struct fill_dirent_baton_t {int * supports_deadprop_count; TYPE_1__* entry; int result_pool; } ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;
struct TYPE_4__ {scalar_t__ size; int has_props; int kind; int time; int last_author; scalar_t__ created_rev; } ;


 char* SVN_DAV_PROP_NS_CUSTOM ;
 char* SVN_DAV_PROP_NS_DAV ;
 char* SVN_DAV_PROP_NS_SVN ;
 char* SVN_DAV__CREATIONDATE ;
 char* SVN_DAV__VERSION_NAME ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int apr_pstrdup (int ,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int svn_cstring_atoi64 (scalar_t__*,char const*) ;
 int svn_node_dir ;
 int svn_node_file ;
 int svn_time_from_cstring (int *,char const*,int ) ;
 int svn_tristate_false ;
 int svn_tristate_true ;

__attribute__((used)) static svn_error_t *
fill_dirent_propfunc(void *baton,
                     const char *path,
                     const char *ns,
                     const char *name,
                     const svn_string_t *val,
                     apr_pool_t *scratch_pool)
{
  struct fill_dirent_baton_t *fdb = baton;

  if (strcmp(ns, "DAV:") == 0)
    {
      if (strcmp(name, SVN_DAV__VERSION_NAME) == 0)
        {
          apr_int64_t rev;
          SVN_ERR(svn_cstring_atoi64(&rev, val->data));

          fdb->entry->created_rev = (svn_revnum_t)rev;
        }
      else if (strcmp(name, "creator-displayname") == 0)
        {
          fdb->entry->last_author = apr_pstrdup(fdb->result_pool, val->data);
        }
      else if (strcmp(name, SVN_DAV__CREATIONDATE) == 0)
        {
          SVN_ERR(svn_time_from_cstring(&fdb->entry->time,
                                        val->data,
                                        fdb->result_pool));
        }
      else if (strcmp(name, "getcontentlength") == 0)
        {

          if (val->len)
            {
              SVN_ERR(svn_cstring_atoi64(&fdb->entry->size, val->data));
            }
        }
      else if (strcmp(name, "resourcetype") == 0)
        {
          if (strcmp(val->data, "collection") == 0)
            {
              fdb->entry->kind = svn_node_dir;
            }
          else
            {
              fdb->entry->kind = svn_node_file;
            }
        }
    }
  else if (strcmp(ns, SVN_DAV_PROP_NS_CUSTOM) == 0)
    {
      fdb->entry->has_props = TRUE;
    }
  else if (strcmp(ns, SVN_DAV_PROP_NS_SVN) == 0)
    {
      fdb->entry->has_props = TRUE;
    }
  else if (strcmp(ns, SVN_DAV_PROP_NS_DAV) == 0)
    {
      if(strcmp(name, "deadprop-count") == 0)
        {
          if (*val->data)
            {



              apr_int64_t deadprop_count;
              SVN_ERR(svn_cstring_atoi64(&deadprop_count, val->data));
              fdb->entry->has_props = deadprop_count > 0;
              if (fdb->supports_deadprop_count)
                *fdb->supports_deadprop_count = svn_tristate_true;
            }
          else if (fdb->supports_deadprop_count)
            *fdb->supports_deadprop_count = svn_tristate_false;
        }
    }

  return SVN_NO_ERROR;
}
