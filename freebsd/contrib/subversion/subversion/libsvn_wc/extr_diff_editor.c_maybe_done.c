
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct dir_baton_t {int pool; struct dir_baton_t* parent_baton; int users; } ;


 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 int svn_pool_clear (int ) ;

__attribute__((used)) static svn_error_t *
maybe_done(struct dir_baton_t *db)
{
  db->users--;

  if (!db->users)
    {
      struct dir_baton_t *pb = db->parent_baton;

      svn_pool_clear(db->pool);

      if (pb != ((void*)0))
        SVN_ERR(maybe_done(pb));
    }

  return SVN_NO_ERROR;
}
