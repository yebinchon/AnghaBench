
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {TYPE_6__* children; } ;
typedef TYPE_4__ svn_skel_t ;
typedef int svn_error_t ;
struct TYPE_15__ {int dst_noderev_id; void* src_txn_id; void* src_path; int kind; } ;
typedef TYPE_5__ copy_t ;
typedef int apr_pool_t ;
struct TYPE_16__ {TYPE_3__* next; } ;
struct TYPE_13__ {TYPE_2__* next; int len; int data; } ;
struct TYPE_12__ {TYPE_1__* next; int len; int data; } ;
struct TYPE_11__ {int len; int data; } ;


 int * SVN_NO_ERROR ;
 TYPE_5__* apr_pcalloc (int *,int) ;
 void* apr_pstrmemdup (int *,int ,int ) ;
 int copy_kind_real ;
 int copy_kind_soft ;
 int is_valid_copy_skel (TYPE_4__*) ;
 int * skel_err (char*) ;
 int svn_fs_base__id_parse (int ,int ,int *) ;
 scalar_t__ svn_skel__matches_atom (TYPE_6__*,char*) ;

svn_error_t *
svn_fs_base__parse_copy_skel(copy_t **copy_p,
                             svn_skel_t *skel,
                             apr_pool_t *pool)
{
  copy_t *copy;


  if (! is_valid_copy_skel(skel))
    return skel_err("copy");


  copy = apr_pcalloc(pool, sizeof(*copy));


  if (svn_skel__matches_atom(skel->children, "soft-copy"))
    copy->kind = copy_kind_soft;
  else
    copy->kind = copy_kind_real;


  copy->src_path = apr_pstrmemdup(pool,
                                  skel->children->next->data,
                                  skel->children->next->len);


  copy->src_txn_id = apr_pstrmemdup(pool,
                                    skel->children->next->next->data,
                                    skel->children->next->next->len);


  copy->dst_noderev_id
    = svn_fs_base__id_parse(skel->children->next->next->next->data,
                            skel->children->next->next->next->len, pool);


  *copy_p = copy;
  return SVN_NO_ERROR;
}
