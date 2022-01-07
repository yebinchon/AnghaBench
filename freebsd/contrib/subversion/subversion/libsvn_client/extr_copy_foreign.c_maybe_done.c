
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct dir_baton_t {scalar_t__ users; int pool; struct dir_baton_t* pb; } ;


 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 int svn_pool_clear (int ) ;

__attribute__((used)) static svn_error_t *
maybe_done(struct dir_baton_t *db)
{
  db->users--;

  if (db->users == 0)
    {
      struct dir_baton_t *pb = db->pb;

      svn_pool_clear(db->pool);

      if (pb)
        SVN_ERR(maybe_done(pb));
    }

  return SVN_NO_ERROR;
}
