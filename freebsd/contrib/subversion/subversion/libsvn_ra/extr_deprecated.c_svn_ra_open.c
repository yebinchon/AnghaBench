
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_ra_session_t ;
struct TYPE_6__ {int invalidate_wc_props; int push_wc_prop; int set_wc_prop; int get_wc_prop; int auth_baton; int open_tmp_file; } ;
typedef TYPE_1__ svn_ra_callbacks_t ;
struct TYPE_7__ {int * progress_baton; int * progress_func; int invalidate_wc_props; int push_wc_prop; int set_wc_prop; int get_wc_prop; int auth_baton; int open_tmp_file; } ;
typedef TYPE_2__ svn_ra_callbacks2_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int svn_ra_create_callbacks (TYPE_2__**,int *) ;
 int * svn_ra_open2 (int **,char const*,TYPE_2__*,void*,int *,int *) ;

svn_error_t *svn_ra_open(svn_ra_session_t **session_p,
                         const char *repos_URL,
                         const svn_ra_callbacks_t *callbacks,
                         void *callback_baton,
                         apr_hash_t *config,
                         apr_pool_t *pool)
{


  svn_ra_callbacks2_t *callbacks2;
  SVN_ERR(svn_ra_create_callbacks(&callbacks2, pool));
  callbacks2->open_tmp_file = callbacks->open_tmp_file;
  callbacks2->auth_baton = callbacks->auth_baton;
  callbacks2->get_wc_prop = callbacks->get_wc_prop;
  callbacks2->set_wc_prop = callbacks->set_wc_prop;
  callbacks2->push_wc_prop = callbacks->push_wc_prop;
  callbacks2->invalidate_wc_props = callbacks->invalidate_wc_props;
  callbacks2->progress_func = ((void*)0);
  callbacks2->progress_baton = ((void*)0);
  return svn_ra_open2(session_p, repos_URL,
                      callbacks2, callback_baton,
                      config, pool);
}
