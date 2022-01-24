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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  void* uint16_t ;
typedef  scalar_t__ time_t ;
struct reply_info {scalar_t__ ttl; } ;
struct query_info {size_t qname_len; int /*<<< orphan*/ * local_alias; void* qclass; void* qtype; int /*<<< orphan*/ * qname; } ;
struct msgreply_entry {int dummy; } ;
struct module_env {int /*<<< orphan*/  msg_cache; } ;
struct lruhash_entry {scalar_t__ key; int /*<<< orphan*/  lock; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  hashvalue_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct query_info*,void*) ; 
 struct lruhash_entry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct query_info*,int) ; 

struct msgreply_entry* 
FUNC3(struct module_env* env, uint8_t* qname, size_t qnamelen, 
	uint16_t qtype, uint16_t qclass, uint16_t flags, time_t now, int wr)
{
	struct lruhash_entry* e;
	struct query_info k;
	hashvalue_type h;

	k.qname = qname;
	k.qname_len = qnamelen;
	k.qtype = qtype;
	k.qclass = qclass;
	k.local_alias = NULL;
	h = FUNC1(&k, flags);
	e = FUNC2(env->msg_cache, h, &k, wr);

	if(!e) return NULL;
	if( now > ((struct reply_info*)e->data)->ttl ) {
		FUNC0(&e->lock);
		return NULL;
	}
	return (struct msgreply_entry*)e->key;
}