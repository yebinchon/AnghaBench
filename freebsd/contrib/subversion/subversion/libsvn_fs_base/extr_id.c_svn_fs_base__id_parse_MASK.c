#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* fsap_data; int /*<<< orphan*/ * vtable; } ;
typedef  TYPE_1__ svn_fs_id_t ;
struct TYPE_5__ {char* node_id; char* copy_id; char* txn_id; } ;
typedef  TYPE_2__ id_private_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  id_vtable ; 
 char* FUNC2 (char*,char**) ; 

svn_fs_id_t *
FUNC3(const char *data,
                      apr_size_t len,
                      apr_pool_t *pool)
{
  svn_fs_id_t *id;
  id_private_t *pvt;
  char *data_copy, *str;

  /* Dup the ID data into POOL.  Our returned ID will have references
     into this memory. */
  data_copy = FUNC1(pool, data, len);

  /* Alloc a new svn_fs_id_t structure. */
  id = FUNC0(pool, sizeof(*id));
  pvt = FUNC0(pool, sizeof(*pvt));
  id->vtable = &id_vtable;
  id->fsap_data = pvt;

  /* Now, we basically just need to "split" this data on `.'
     characters.  We will use svn_cstring_tokenize, which will put
     terminators where each of the '.'s used to be.  Then our new
     id field will reference string locations inside our duplicate
     string.*/

  /* Node Id */
  str = FUNC2(".", &data_copy);
  if (str == NULL)
    return NULL;
  pvt->node_id = str;

  /* Copy Id */
  str = FUNC2(".", &data_copy);
  if (str == NULL)
    return NULL;
  pvt->copy_id = str;

  /* Txn Id */
  str = FUNC2(".", &data_copy);
  if (str == NULL)
    return NULL;
  pvt->txn_id = str;

  return id;
}