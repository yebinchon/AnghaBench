
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int has_write_lock; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int* generation; TYPE_3__* fs; } ;
typedef TYPE_2__ revprop_generation_upgrade_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {TYPE_1__* fsap_data; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int assert (int ) ;
 int read_revprop_generation_file (int*,TYPE_3__*,int *) ;
 int write_revprop_generation_file (TYPE_3__*,int,int *) ;

__attribute__((used)) static svn_error_t *
revprop_generation_fixup(void *void_baton,
                         apr_pool_t *scratch_pool)
{
  revprop_generation_upgrade_t *baton = void_baton;
  svn_fs_x__data_t *ffd = baton->fs->fsap_data;
  assert(ffd->has_write_lock);





  SVN_ERR(read_revprop_generation_file(baton->generation, baton->fs,
                                       scratch_pool));



  if (*baton->generation % 2)
    {
      ++*baton->generation;
      SVN_ERR(write_revprop_generation_file(baton->fs,
                                            *baton->generation,
                                            scratch_pool));
    }

  return SVN_NO_ERROR;
}
