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
struct servent {int dummy; } ;
struct servent_state {char* buffer; size_t bufsize; struct servent serv; } ;
struct key {int dummy; } ;

/* Variables and functions */
 int ERANGE ; 
 size_t SERVENT_STORAGE_INITIAL ; 
 int SERVENT_STORAGE_MAX ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (size_t) ; 
 int FUNC2 (struct servent_state**) ; 

__attribute__((used)) static struct servent *
FUNC3(int (*fn)(struct key, struct servent *, char *, size_t,
    struct servent **), struct key key)
{
	int rv;
	struct servent *res;
	struct servent_state * st;

	rv = FUNC2(&st);
	if (rv != 0) {
		errno = rv;
		return NULL;
	}

	if (st->buffer == NULL) {
		st->buffer = FUNC1(SERVENT_STORAGE_INITIAL);
		if (st->buffer == NULL)
			return (NULL);
		st->bufsize = SERVENT_STORAGE_INITIAL;
	}
	do {
		rv = fn(key, &st->serv, st->buffer, st->bufsize, &res);
		if (res == NULL && rv == ERANGE) {
			FUNC0(st->buffer);
			if ((st->bufsize << 1) > SERVENT_STORAGE_MAX) {
				st->buffer = NULL;
				errno = ERANGE;
				return (NULL);
			}
			st->bufsize <<= 1;
			st->buffer = FUNC1(st->bufsize);
			if (st->buffer == NULL)
				return (NULL);
		}
	} while (res == NULL && rv == ERANGE);
	if (rv != 0)
		errno = rv;

	return (res);
}