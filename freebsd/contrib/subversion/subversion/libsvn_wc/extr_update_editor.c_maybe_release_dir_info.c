
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct dir_baton {int pool; struct dir_baton* parent_baton; int ref_count; } ;


 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 int svn_pool_destroy (int ) ;

__attribute__((used)) static svn_error_t *
maybe_release_dir_info(struct dir_baton *db)
{
  db->ref_count--;

  if (!db->ref_count)
    {
      struct dir_baton *pb = db->parent_baton;

      svn_pool_destroy(db->pool);

      if (pb)
        SVN_ERR(maybe_release_dir_info(pb));
    }

  return SVN_NO_ERROR;
}
