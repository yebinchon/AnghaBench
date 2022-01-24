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
typedef  int /*<<< orphan*/  time_t ;
struct sockaddr_storage {int dummy; } ;
struct lruhash_entry {void* data; void* key; int /*<<< orphan*/  hash; int /*<<< orphan*/  lock; } ;
struct infra_key {size_t namelen; struct lruhash_entry entry; int /*<<< orphan*/  addr; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  zonename; } ;
struct infra_data {size_t namelen; struct lruhash_entry entry; int /*<<< orphan*/  addr; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  zonename; } ;
struct infra_cache {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct infra_cache*,struct lruhash_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct infra_key*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_storage*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sockaddr_storage*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static struct lruhash_entry*
FUNC7(struct infra_cache* infra, struct sockaddr_storage* addr, 
	socklen_t addrlen, uint8_t* name, size_t namelen, time_t tm)
{
	struct infra_data* data;
	struct infra_key* key = (struct infra_key*)FUNC4(sizeof(*key));
	if(!key)
		return NULL;
	data = (struct infra_data*)FUNC4(sizeof(struct infra_data));
	if(!data) {
		FUNC1(key);
		return NULL;
	}
	key->zonename = FUNC6(name, namelen);
	if(!key->zonename) {
		FUNC1(key);
		FUNC1(data);
		return NULL;
	}
	key->namelen = namelen;
	FUNC3(&key->entry.lock);
	key->entry.hash = FUNC2(addr, addrlen, name);
	key->entry.key = (void*)key;
	key->entry.data = (void*)data;
	key->addrlen = addrlen;
	FUNC5(&key->addr, addr, addrlen);
	FUNC0(infra, &key->entry, tm);
	return &key->entry;
}