#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* t_data; } ;
typedef  TYPE_1__ token_t ;
struct TYPE_9__ {scalar_t__ len; scalar_t__ used; int /*<<< orphan*/  token_q; } ;
typedef  TYPE_2__ au_record_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  au_rec_q ; 
 int /*<<< orphan*/  audit_free_q ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tokens ; 

__attribute__((used)) static void
FUNC6(au_record_t *rec)
{
	token_t *tok;

	/* Free the token list */
	while ((tok = FUNC1(&rec->token_q)) != NULL) {
		FUNC2(&rec->token_q, tok, tokens);
		FUNC3(tok->t_data);
		FUNC3(tok);
	}

	rec->used = 0;
	rec->len = 0;

#ifdef HAVE_PTHREAD_MUTEX_LOCK
	pthread_mutex_lock(&mutex);
#endif

	/* Add the record to the freelist tail */
	FUNC0(&audit_free_q, rec, au_rec_q);

#ifdef HAVE_PTHREAD_MUTEX_LOCK
	pthread_mutex_unlock(&mutex);
#endif
}