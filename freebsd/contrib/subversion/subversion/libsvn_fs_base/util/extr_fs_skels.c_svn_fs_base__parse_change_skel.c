
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_19__ {TYPE_6__* children; } ;
typedef TYPE_7__ svn_skel_t ;
typedef int svn_fs_path_change_kind_t ;
typedef int svn_error_t ;
struct TYPE_20__ {void* prop_mod; void* text_mod; int kind; int noderev_id; int path; } ;
typedef TYPE_8__ change_t ;
typedef int apr_pool_t ;
struct TYPE_18__ {TYPE_5__* next; } ;
struct TYPE_17__ {TYPE_4__* next; int len; int data; } ;
struct TYPE_16__ {TYPE_3__* next; scalar_t__ len; int data; } ;
struct TYPE_15__ {TYPE_2__* next; } ;
struct TYPE_14__ {TYPE_1__* next; scalar_t__ len; } ;
struct TYPE_13__ {scalar_t__ len; } ;


 int * SVN_NO_ERROR ;
 void* TRUE ;
 TYPE_8__* apr_pcalloc (int *,int) ;
 int apr_pstrmemdup (int *,int ,int ) ;
 int is_valid_change_skel (TYPE_7__*,int *) ;
 int * skel_err (char*) ;
 int svn_fs_base__id_parse (int ,scalar_t__,int *) ;

svn_error_t *
svn_fs_base__parse_change_skel(change_t **change_p,
                               svn_skel_t *skel,
                               apr_pool_t *pool)
{
  change_t *change;
  svn_fs_path_change_kind_t kind;


  if (! is_valid_change_skel(skel, &kind))
    return skel_err("change");


  change = apr_pcalloc(pool, sizeof(*change));


  change->path = apr_pstrmemdup(pool, skel->children->next->data,
                                skel->children->next->len);


  if (skel->children->next->next->len)
    change->noderev_id = svn_fs_base__id_parse
      (skel->children->next->next->data, skel->children->next->next->len,
       pool);


  change->kind = kind;


  if (skel->children->next->next->next->next->len)
    change->text_mod = TRUE;


  if (skel->children->next->next->next->next->next->len)
    change->prop_mod = TRUE;


  *change_p = change;
  return SVN_NO_ERROR;
}
