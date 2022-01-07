
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int * db_txn; TYPE_3__* fs; int pool; } ;
typedef TYPE_2__ trail_t ;
struct TYPE_12__ {TYPE_4__* fsap_data; } ;
typedef TYPE_3__ svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_13__ {scalar_t__ in_txn_trail; TYPE_1__* bdb; } ;
typedef TYPE_4__ base_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_14__ {int (* txn_begin ) (TYPE_5__*,int ,int **,int ) ;} ;
struct TYPE_10__ {TYPE_5__* env; } ;


 int BDB_WRAP (TYPE_3__*,int ,int ) ;
 int N_ (char*) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 int stub1 (TYPE_5__*,int ,int **,int ) ;
 int svn_pool_create (int *) ;

__attribute__((used)) static svn_error_t *
begin_trail(trail_t **trail_p,
            svn_fs_t *fs,
            svn_boolean_t use_txn,
            apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  trail_t *trail = apr_pcalloc(pool, sizeof(*trail));

  trail->pool = svn_pool_create(pool);
  trail->fs = fs;
  if (use_txn)
    {



      SVN_ERR_ASSERT(! bfd->in_txn_trail);

      SVN_ERR(BDB_WRAP(fs, N_("beginning Berkeley DB transaction"),
                       bfd->bdb->env->txn_begin(bfd->bdb->env, 0,
                                                &trail->db_txn, 0)));
      bfd->in_txn_trail = TRUE;
    }
  else
    {
      trail->db_txn = ((void*)0);
    }

  *trail_p = trail;
  return SVN_NO_ERROR;
}
