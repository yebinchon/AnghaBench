#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_11__ {scalar_t__ number; void* revision; } ;
struct TYPE_8__ {scalar_t__ number; void* revision; } ;
struct TYPE_9__ {TYPE_5__ txn_id; TYPE_2__ rev_item; int /*<<< orphan*/  copy_id; int /*<<< orphan*/  node_id; } ;
struct TYPE_7__ {TYPE_4__* fsap_data; int /*<<< orphan*/ * vtable; } ;
struct TYPE_10__ {TYPE_3__ private_id; TYPE_1__ generic_id; } ;
typedef  TYPE_4__ fs_fs__id_t ;
typedef  scalar_t__ apr_uint64_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;

/* Variables and functions */
 void* SVN_INVALID_REVNUM ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  id_vtable ; 
 int /*<<< orphan*/  FUNC1 (void**,char*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__*,char*) ; 
 char* FUNC4 (char*,char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,char*) ; 

__attribute__((used)) static svn_fs_id_t *
FUNC7(char *data,
         apr_pool_t *pool)
{
  fs_fs__id_t *id;
  char *str;

  /* Alloc a new svn_fs_id_t structure. */
  id = FUNC0(pool, sizeof(*id));
  id->generic_id.vtable = &id_vtable;
  id->generic_id.fsap_data = id;

  /* Now, we basically just need to "split" this data on `.'
     characters.  We will use svn_cstring_tokenize, which will put
     terminators where each of the '.'s used to be.  Then our new
     id field will reference string locations inside our duplicate
     string.*/

  /* Node Id */
  str = FUNC4(".", &data);
  if (str == NULL)
    return NULL;
  if (! FUNC2(&id->private_id.node_id, str))
    return NULL;

  /* Copy Id */
  str = FUNC4(".", &data);
  if (str == NULL)
    return NULL;
  if (! FUNC2(&id->private_id.copy_id, str))
    return NULL;

  /* Txn/Rev Id */
  str = FUNC4(".", &data);
  if (str == NULL)
    return NULL;

  if (str[0] == 'r')
    {
      apr_int64_t val;
      const char *tmp;
      svn_error_t *err;

      /* This is a revision type ID */
      id->private_id.txn_id.revision = SVN_INVALID_REVNUM;
      id->private_id.txn_id.number = 0;

      data = str + 1;
      str = FUNC4("/", &data);
      if (str == NULL)
        return NULL;
      if (!FUNC1(&id->private_id.rev_item.revision,
                                     str, &tmp))
        return NULL;

      err = FUNC3(&val, data);
      if (err)
        {
          FUNC5(err);
          return NULL;
        }
      id->private_id.rev_item.number = (apr_uint64_t)val;
    }
  else if (str[0] == 't')
    {
      /* This is a transaction type ID */
      id->private_id.rev_item.revision = SVN_INVALID_REVNUM;
      id->private_id.rev_item.number = 0;

      if (! FUNC6(&id->private_id.txn_id, str + 1))
        return NULL;
    }
  else
    return NULL;

  return (svn_fs_id_t *)id;
}