#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_7__ {int used; size_t desc; scalar_t__ len; int /*<<< orphan*/  token_q; struct TYPE_7__* data; } ;
typedef  TYPE_1__ au_record_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 size_t MAX_AUDIT_RECORDS ; 
 int MAX_AUDIT_RECORD_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  au_rec_q ; 
 int /*<<< orphan*/  audit_free_q ; 
 size_t audit_rec_count ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mutex ; 
 TYPE_1__** open_desc_table ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int
FUNC10(void)
{
	au_record_t *rec = NULL;

#ifdef HAVE_PTHREAD_MUTEX_LOCK
	pthread_mutex_lock(&mutex);
#endif

	if (audit_rec_count == 0)
		FUNC2(&audit_free_q);

	/*
	 * Find an unused descriptor, remove it from the free list, mark as
	 * used.
	 */
	if (!FUNC0(&audit_free_q)) {
		rec = FUNC1(&audit_free_q);
		rec->used = 1;
		FUNC3(rec, au_rec_q);
	}

#ifdef HAVE_PTHREAD_MUTEX_LOCK
	pthread_mutex_unlock(&mutex);
#endif

	if (rec == NULL) {
		/*
		 * Create a new au_record_t if no descriptors are available.
		 */
		rec = FUNC6 (sizeof(au_record_t));
		if (rec == NULL)
			return (-1);

		rec->data = FUNC6 (MAX_AUDIT_RECORD_SIZE * sizeof(u_char));
		if (rec->data == NULL) {
			FUNC5(rec);
			errno = ENOMEM;
			return (-1);
		}

#ifdef HAVE_PTHREAD_MUTEX_LOCK
		pthread_mutex_lock(&mutex);
#endif

		if (audit_rec_count == MAX_AUDIT_RECORDS) {
#ifdef HAVE_PTHREAD_MUTEX_LOCK
			pthread_mutex_unlock(&mutex);
#endif
			FUNC5(rec->data);
			FUNC5(rec);

			/* XXX We need to increase size of MAX_AUDIT_RECORDS */
			errno = ENOMEM;
			return (-1);
		}
		rec->desc = audit_rec_count;
		open_desc_table[audit_rec_count] = rec;
		audit_rec_count++;

#ifdef HAVE_PTHREAD_MUTEX_LOCK
		pthread_mutex_unlock(&mutex);
#endif

	}

	FUNC7(rec->data, 0, MAX_AUDIT_RECORD_SIZE);

	FUNC4(&rec->token_q);
	rec->len = 0;
	rec->used = 1;

	return (rec->desc);
}