#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_temp_serializer__context_t ;
struct TYPE_5__ {size_t len; void* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {int count; char** keys; int /*<<< orphan*/ * values; } ;
typedef  TYPE_2__ properties_data_t ;
typedef  int /*<<< orphan*/  properties ;
typedef  size_t apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char***,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__*,int,int,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC10(void **data,
                                apr_size_t *data_len,
                                void *in,
                                apr_pool_t *pool)
{
  apr_hash_t *hash = in;
  properties_data_t properties;
  svn_temp_serializer__context_t *context;
  apr_hash_index_t *hi;
  svn_stringbuf_t *serialized;
  apr_size_t i;

  /* create our auxiliary data structure */
  properties.count = FUNC0(hash);
  properties.keys = FUNC5(pool, sizeof(const char*) * (properties.count + 1));
  properties.values = FUNC5(pool, sizeof(const svn_string_t *) * properties.count);

  /* populate it with the hash entries */
  for (hi = FUNC1(pool, hash), i=0; hi; hi = FUNC2(hi), ++i)
    {
      properties.keys[i] = FUNC3(hi);
      properties.values[i] = FUNC4(hi);
    }

  /* serialize it */
  context = FUNC9(&properties,
                                      sizeof(properties),
                                      properties.count * 100,
                                      pool);

  properties.keys[i] = "";
  FUNC6(context, &properties.keys, properties.count + 1);
  FUNC7(context, &properties.values, properties.count);

  /* return the serialized result */
  serialized = FUNC8(context);

  *data = serialized->data;
  *data_len = serialized->len;

  return SVN_NO_ERROR;
}