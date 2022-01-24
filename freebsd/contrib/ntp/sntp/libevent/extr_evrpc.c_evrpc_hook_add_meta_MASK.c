#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct evrpc_request_wrapper {struct evrpc_hook_meta* hook_meta; } ;
struct evrpc_meta {size_t data_size; int /*<<< orphan*/ * data; int /*<<< orphan*/ * key; } ;
struct evrpc_hook_meta {int /*<<< orphan*/  meta_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct evrpc_meta*,int /*<<< orphan*/ ) ; 
 struct evrpc_hook_meta* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const*,size_t) ; 
 void* FUNC4 (size_t) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 int /*<<< orphan*/  next ; 

void
FUNC6(void *ctx, const char *key,
    const void *data, size_t data_size)
{
	struct evrpc_request_wrapper *req = ctx;
	struct evrpc_hook_meta *store = NULL;
	struct evrpc_meta *meta = NULL;

	if ((store = req->hook_meta) == NULL)
		store = req->hook_meta = FUNC2();

	meta = FUNC4(sizeof(struct evrpc_meta));
	FUNC0(meta != NULL);
	meta->key = FUNC5(key);
	FUNC0(meta->key != NULL);
	meta->data_size = data_size;
	meta->data = FUNC4(data_size);
	FUNC0(meta->data != NULL);
	FUNC3(meta->data, data, data_size);

	FUNC1(&store->meta_data, meta, next);
}