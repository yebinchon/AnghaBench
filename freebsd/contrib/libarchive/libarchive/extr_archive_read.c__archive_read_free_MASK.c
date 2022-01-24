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
struct TYPE_9__ {struct archive_read_passphrase* dataset; } ;
struct TYPE_11__ {int state; scalar_t__ magic; int /*<<< orphan*/  error_string; } ;
struct TYPE_8__ {struct archive_read_passphrase* first; } ;
struct archive_read_passphrase {int (* cleanup_archive_extract ) (struct archive_read_passphrase*) ;TYPE_3__ client; TYPE_5__ archive; int /*<<< orphan*/  entry; struct archive_read_passphrase* passphrase; struct archive_read_passphrase* next; TYPE_2__ passphrases; TYPE_4__* bidders; TYPE_1__* formats; TYPE_1__* format; } ;
struct archive_read {int (* cleanup_archive_extract ) (struct archive_read_passphrase*) ;TYPE_3__ client; TYPE_5__ archive; int /*<<< orphan*/  entry; struct archive_read* passphrase; struct archive_read* next; TYPE_2__ passphrases; TYPE_4__* bidders; TYPE_1__* formats; TYPE_1__* format; } ;
struct archive {int dummy; } ;
struct TYPE_10__ {int (* free ) (TYPE_4__*) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  (* cleanup ) (struct archive_read_passphrase*) ;} ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_MAGIC ; 
 int ARCHIVE_STATE_ANY ; 
 int ARCHIVE_STATE_CLOSED ; 
 int ARCHIVE_STATE_FATAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_read_passphrase*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_read_passphrase*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_read_passphrase*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_read_passphrase*) ; 
 int FUNC9 (struct archive_read_passphrase*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_read_passphrase*) ; 
 int FUNC11 (TYPE_4__*) ; 

__attribute__((used)) static int
FUNC12(struct archive *_a)
{
	struct archive_read *a = (struct archive_read *)_a;
	struct archive_read_passphrase *p;
	int i, n;
	int slots;
	int r = ARCHIVE_OK;

	if (_a == NULL)
		return (ARCHIVE_OK);
	FUNC2(_a, ARCHIVE_READ_MAGIC,
	    ARCHIVE_STATE_ANY | ARCHIVE_STATE_FATAL, "archive_read_free");
	if (a->archive.state != ARCHIVE_STATE_CLOSED
	    && a->archive.state != ARCHIVE_STATE_FATAL)
		r = FUNC4(&a->archive);

	/* Call cleanup functions registered by optional components. */
	if (a->cleanup_archive_extract != NULL)
		r = (a->cleanup_archive_extract)(a);

	/* Cleanup format-specific data. */
	slots = sizeof(a->formats) / sizeof(a->formats[0]);
	for (i = 0; i < slots; i++) {
		a->format = &(a->formats[i]);
		if (a->formats[i].cleanup)
			(a->formats[i].cleanup)(a);
	}

	/* Free the filters */
	FUNC1(a);

	/* Release the bidder objects. */
	n = sizeof(a->bidders)/sizeof(a->bidders[0]);
	for (i = 0; i < n; i++) {
		if (a->bidders[i].free != NULL) {
			int r1 = (a->bidders[i].free)(&a->bidders[i]);
			if (r1 < r)
				r = r1;
		}
	}

	/* Release passphrase list. */
	p = a->passphrases.first;
	while (p != NULL) {
		struct archive_read_passphrase *np = p->next;

		/* A passphrase should be cleaned. */
		FUNC7(p->passphrase, 0, FUNC8(p->passphrase));
		FUNC6(p->passphrase);
		FUNC6(p);
		p = np;
	}

	FUNC5(&a->archive.error_string);
	FUNC3(a->entry);
	a->archive.magic = 0;
	FUNC0(&a->archive);
	FUNC6(a->client.dataset);
	FUNC6(a);
	return (r);
}