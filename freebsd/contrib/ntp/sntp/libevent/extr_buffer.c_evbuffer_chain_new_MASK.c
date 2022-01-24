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
struct evbuffer_chain {size_t buffer_len; int refcnt; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct evbuffer_chain*) ; 
 int EVBUFFER_CHAIN_MAX ; 
 size_t EVBUFFER_CHAIN_SIZE ; 
 size_t MIN_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer_chain*,int /*<<< orphan*/ ,size_t) ; 
 struct evbuffer_chain* FUNC2 (size_t) ; 
 int /*<<< orphan*/  u_char ; 

__attribute__((used)) static struct evbuffer_chain *
FUNC3(size_t size)
{
	struct evbuffer_chain *chain;
	size_t to_alloc;

	if (size > EVBUFFER_CHAIN_MAX - EVBUFFER_CHAIN_SIZE)
		return (NULL);

	size += EVBUFFER_CHAIN_SIZE;

	/* get the next largest memory that can hold the buffer */
	if (size < EVBUFFER_CHAIN_MAX / 2) {
		to_alloc = MIN_BUFFER_SIZE;
		while (to_alloc < size) {
			to_alloc <<= 1;
		}
	} else {
		to_alloc = size;
	}

	/* we get everything in one chunk */
	if ((chain = FUNC2(to_alloc)) == NULL)
		return (NULL);

	FUNC1(chain, 0, EVBUFFER_CHAIN_SIZE);

	chain->buffer_len = to_alloc - EVBUFFER_CHAIN_SIZE;

	/* this way we can manipulate the buffer to different addresses,
	 * which is required for mmap for example.
	 */
	chain->buffer = FUNC0(u_char, chain);

	chain->refcnt = 1;

	return (chain);
}