
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {char const* repos_relpath; } ;
typedef TYPE_4__ svn_wc_status3_t ;
struct dir_baton {int name; int local_abspath; int statii; struct dir_baton* parent_baton; TYPE_3__* edit_baton; } ;
typedef int apr_pool_t ;
struct TYPE_8__ {TYPE_2__* anchor_status; } ;
struct TYPE_6__ {char const* repos_relpath; } ;
struct TYPE_7__ {TYPE_1__ s; } ;


 TYPE_4__* svn_hash_gets (int ,int ) ;
 char const* svn_relpath_join (char const*,int ,int *) ;

__attribute__((used)) static const char *
find_dir_repos_relpath(const struct dir_baton *db, apr_pool_t *pool)
{

  if (! db->name)
    return db->edit_baton->anchor_status->s.repos_relpath;
  else
    {
      const char *repos_relpath;
      struct dir_baton *pb = db->parent_baton;
      const svn_wc_status3_t *status = svn_hash_gets(pb->statii,
                                                     db->local_abspath);



      if (status && status->repos_relpath)
        return status->repos_relpath;

      repos_relpath = find_dir_repos_relpath(pb, pool);
      return svn_relpath_join(repos_relpath, db->name, pool);
    }
}
