
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct dir_baton_t {TYPE_1__* eb; int properties; int local_abspath; scalar_t__ created; struct dir_baton_t* pb; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int notify_baton; int notify_func; int wc_ctx; } ;


 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int * svn_wc_add_from_disk3 (int ,int ,int ,scalar_t__,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
ensure_added(struct dir_baton_t *db,
             apr_pool_t *scratch_pool)
{
  if (db->created)
    return SVN_NO_ERROR;

  if (db->pb)
    SVN_ERR(ensure_added(db->pb, scratch_pool));

  db->created = TRUE;


  SVN_ERR(svn_wc_add_from_disk3(db->eb->wc_ctx,
                                db->local_abspath,
                                db->properties,
                                TRUE ,
                                db->eb->notify_func,
                                db->eb->notify_baton,
                                scratch_pool));

  return SVN_NO_ERROR;
}
