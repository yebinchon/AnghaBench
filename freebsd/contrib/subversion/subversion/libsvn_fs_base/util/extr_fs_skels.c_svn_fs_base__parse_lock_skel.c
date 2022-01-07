
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_23__ {TYPE_7__* children; } ;
typedef TYPE_8__ svn_skel_t ;
struct TYPE_24__ {int expiration_date; int creation_date; int is_dav_comment; void* comment; void* owner; void* token; void* path; } ;
typedef TYPE_9__ svn_lock_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_22__ {TYPE_6__* next; } ;
struct TYPE_21__ {TYPE_5__* next; scalar_t__ len; int data; } ;
struct TYPE_20__ {TYPE_4__* next; scalar_t__ len; int data; } ;
struct TYPE_19__ {TYPE_3__* next; scalar_t__ len; int data; } ;
struct TYPE_18__ {TYPE_10__* next; scalar_t__ len; int data; } ;
struct TYPE_17__ {TYPE_1__* next; scalar_t__ len; int data; } ;
struct TYPE_16__ {scalar_t__ len; int data; } ;
struct TYPE_15__ {TYPE_2__* next; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 TYPE_9__* apr_pcalloc (int *,int) ;
 void* apr_pstrmemdup (int *,int ,scalar_t__) ;
 int is_valid_lock_skel (TYPE_8__*) ;
 int * skel_err (char*) ;
 scalar_t__ svn_skel__matches_atom (TYPE_10__*,char*) ;
 int svn_time_from_cstring (int *,char const*,int *) ;

svn_error_t *
svn_fs_base__parse_lock_skel(svn_lock_t **lock_p,
                             svn_skel_t *skel,
                             apr_pool_t *pool)
{
  svn_lock_t *lock;
  const char *timestr;


  if (! is_valid_lock_skel(skel))
    return skel_err("lock");


  lock = apr_pcalloc(pool, sizeof(*lock));


  lock->path = apr_pstrmemdup(pool, skel->children->next->data,
                              skel->children->next->len);


  lock->token = apr_pstrmemdup(pool,
                               skel->children->next->next->data,
                               skel->children->next->next->len);


  lock->owner = apr_pstrmemdup(pool,
                               skel->children->next->next->next->data,
                               skel->children->next->next->next->len);


  if (skel->children->next->next->next->next->len)
    lock->comment =
      apr_pstrmemdup(pool,
                     skel->children->next->next->next->next->data,
                     skel->children->next->next->next->next->len);


  if (svn_skel__matches_atom
      (skel->children->next->next->next->next->next, "1"))
    lock->is_dav_comment = TRUE;
  else
    lock->is_dav_comment = FALSE;


  timestr = apr_pstrmemdup
    (pool,
     skel->children->next->next->next->next->next->next->data,
     skel->children->next->next->next->next->next->next->len);
  SVN_ERR(svn_time_from_cstring(&(lock->creation_date),
                                timestr, pool));


  if (skel->children->next->next->next->next->next->next->next->len)
    {
      timestr =
        apr_pstrmemdup
        (pool,
         skel->children->next->next->next->next->next->next->next->data,
         skel->children->next->next->next->next->next->next->next->len);
      SVN_ERR(svn_time_from_cstring(&(lock->expiration_date),
                                    timestr, pool));
    }


  *lock_p = lock;
  return SVN_NO_ERROR;
}
