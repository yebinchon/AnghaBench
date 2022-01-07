
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* children; } ;
typedef TYPE_3__ svn_skel_t ;
typedef int svn_error_t ;
struct TYPE_12__ {int txn_id; } ;
typedef TYPE_4__ revision_t ;
typedef int apr_pool_t ;
struct TYPE_10__ {TYPE_1__* next; } ;
struct TYPE_9__ {int len; int data; } ;


 int * SVN_NO_ERROR ;
 TYPE_4__* apr_pcalloc (int *,int) ;
 int apr_pstrmemdup (int *,int ,int ) ;
 int is_valid_revision_skel (TYPE_3__*) ;
 int * skel_err (char*) ;

svn_error_t *
svn_fs_base__parse_revision_skel(revision_t **revision_p,
                                 svn_skel_t *skel,
                                 apr_pool_t *pool)
{
  revision_t *revision;


  if (! is_valid_revision_skel(skel))
    return skel_err("revision");


  revision = apr_pcalloc(pool, sizeof(*revision));
  revision->txn_id = apr_pstrmemdup(pool, skel->children->next->data,
                                    skel->children->next->len);


  *revision_p = revision;
  return SVN_NO_ERROR;
}
