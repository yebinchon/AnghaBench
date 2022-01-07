
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct dir_baton {scalar_t__ users; int pool; struct dir_baton* parent_baton; } ;


 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 int assert (int) ;
 int svn_pool_destroy (int ) ;

__attribute__((used)) static svn_error_t *
release_dir(struct dir_baton *db)
{
  assert(db->users > 0);

  db->users--;
  if (db->users)
     return SVN_NO_ERROR;

  {
    struct dir_baton *pb = db->parent_baton;

    svn_pool_destroy(db->pool);

    if (pb != ((void*)0))
      SVN_ERR(release_dir(pb));
  }

  return SVN_NO_ERROR;
}
