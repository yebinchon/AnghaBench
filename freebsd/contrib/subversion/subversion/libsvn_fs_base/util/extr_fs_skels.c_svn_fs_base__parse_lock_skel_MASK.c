#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
struct TYPE_23__ {TYPE_7__* children; } ;
typedef  TYPE_8__ svn_skel_t ;
struct TYPE_24__ {int /*<<< orphan*/  expiration_date; int /*<<< orphan*/  creation_date; int /*<<< orphan*/  is_dav_comment; void* comment; void* owner; void* token; void* path; } ;
typedef  TYPE_9__ svn_lock_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_22__ {TYPE_6__* next; } ;
struct TYPE_21__ {TYPE_5__* next; scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_20__ {TYPE_4__* next; scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_19__ {TYPE_3__* next; scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_18__ {TYPE_10__* next; scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_17__ {TYPE_1__* next; scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_16__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_15__ {TYPE_2__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_9__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 scalar_t__ FUNC5 (TYPE_10__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(svn_lock_t **lock_p,
                             svn_skel_t *skel,
                             apr_pool_t *pool)
{
  svn_lock_t *lock;
  const char *timestr;

  /* Validate the skel. */
  if (! FUNC3(skel))
    return FUNC4("lock");

  /* Create the returned structure */
  lock = FUNC1(pool, sizeof(*lock));

  /* PATH */
  lock->path = FUNC2(pool, skel->children->next->data,
                              skel->children->next->len);

  /* LOCK-TOKEN */
  lock->token = FUNC2(pool,
                               skel->children->next->next->data,
                               skel->children->next->next->len);

  /* OWNER */
  lock->owner = FUNC2(pool,
                               skel->children->next->next->next->data,
                               skel->children->next->next->next->len);

  /* COMMENT  (could be just an empty atom) */
  if (skel->children->next->next->next->next->len)
    lock->comment =
      FUNC2(pool,
                     skel->children->next->next->next->next->data,
                     skel->children->next->next->next->next->len);

  /* XML_P */
  if (FUNC5
      (skel->children->next->next->next->next->next, "1"))
    lock->is_dav_comment = TRUE;
  else
    lock->is_dav_comment = FALSE;

  /* CREATION-DATE */
  timestr = FUNC2
    (pool,
     skel->children->next->next->next->next->next->next->data,
     skel->children->next->next->next->next->next->next->len);
  FUNC0(FUNC6(&(lock->creation_date),
                                timestr, pool));

  /* EXPIRATION-DATE  (could be just an empty atom) */
  if (skel->children->next->next->next->next->next->next->next->len)
    {
      timestr =
        FUNC2
        (pool,
         skel->children->next->next->next->next->next->next->next->data,
         skel->children->next->next->next->next->next->next->next->len);
      FUNC0(FUNC6(&(lock->expiration_date),
                                    timestr, pool));
    }

  /* Return the structure. */
  *lock_p = lock;
  return SVN_NO_ERROR;
}