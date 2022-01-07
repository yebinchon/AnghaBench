
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef scalar_t__ svn_prop_kind_t ;
typedef int svn_error_t ;
struct revision_baton {TYPE_2__* pb; TYPE_1__* db; int * pool; } ;
struct node_baton {char const* copyfrom_path; scalar_t__ kind; char* path; scalar_t__ action; struct revision_baton* rb; int is_added; int copyfrom_rev; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
struct TYPE_4__ {int aux_session; } ;
struct TYPE_3__ {char const* copyfrom_path; int copyfrom_rev; } ;


 scalar_t__ ARE_VALID_COPY_ARGS (char const*,int ) ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int set_node_property (struct node_baton*,char const*,int *) ;
 scalar_t__ svn_node_action_add ;
 scalar_t__ svn_node_action_replace ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_prop_regular_kind ;
 scalar_t__ svn_property_kind2 (char const*) ;
 int svn_ra_get_dir2 (int ,int *,int *,int **,char const*,int ,int ,int *) ;
 int svn_ra_get_file (int ,char const*,int ,int *,int *,int **,int *) ;
 int svn_relpath_basename (char*,int *) ;
 char* svn_relpath_join (char*,int ,int *) ;

__attribute__((used)) static svn_error_t *
remove_node_props(void *baton)
{
  struct node_baton *nb = baton;
  struct revision_baton *rb = nb->rb;
  apr_pool_t *pool = nb->rb->pool;
  apr_hash_index_t *hi;
  apr_hash_t *props;
  const char *orig_path;
  svn_revnum_t orig_rev;


  if (ARE_VALID_COPY_ARGS(nb->copyfrom_path, nb->copyfrom_rev))
    {
      orig_path = nb->copyfrom_path;
      orig_rev = nb->copyfrom_rev;
    }
  else if (!nb->is_added
           && ARE_VALID_COPY_ARGS(rb->db->copyfrom_path, rb->db->copyfrom_rev))
    {


      orig_path = (nb->kind == svn_node_dir)
                    ? rb->db->copyfrom_path
                    : svn_relpath_join(rb->db->copyfrom_path,
                                       svn_relpath_basename(nb->path, ((void*)0)),
                                       rb->pool);
      orig_rev = rb->db->copyfrom_rev;
    }
  else
    {


      orig_path = nb->path;
      orig_rev = SVN_INVALID_REVNUM;
    }

  if ((nb->action == svn_node_action_add
            || nb->action == svn_node_action_replace)
      && ! ARE_VALID_COPY_ARGS(orig_path, orig_rev))

    return SVN_NO_ERROR;

  if (nb->kind == svn_node_file)
    {
      SVN_ERR(svn_ra_get_file(nb->rb->pb->aux_session,
                              orig_path, orig_rev, ((void*)0), ((void*)0), &props, pool));
    }
  else
    {
      SVN_ERR(svn_ra_get_dir2(nb->rb->pb->aux_session, ((void*)0), ((void*)0), &props,
                              orig_path, orig_rev, 0, pool));
    }

  for (hi = apr_hash_first(pool, props); hi; hi = apr_hash_next(hi))
    {
      const char *name = apr_hash_this_key(hi);
      svn_prop_kind_t kind = svn_property_kind2(name);

      if (kind == svn_prop_regular_kind)
        SVN_ERR(set_node_property(nb, name, ((void*)0)));
    }

  return SVN_NO_ERROR;
}
