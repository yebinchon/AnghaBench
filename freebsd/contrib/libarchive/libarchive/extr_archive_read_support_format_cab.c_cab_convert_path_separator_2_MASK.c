#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_3__ {int* s; } ;
struct cab {TYPE_1__ ws; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,int*) ; 
 int /*<<< orphan*/ * FUNC1 (struct archive_entry*) ; 
 size_t FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC4(struct cab *cab, struct archive_entry *entry)
{
	const wchar_t *wp;
	size_t i;

	/* If a conversion to wide character failed, force the replacement. */
	if ((wp = FUNC1(entry)) != NULL) {
		FUNC3(&(cab->ws), wp);
		for (i = 0; i < FUNC2(&(cab->ws)); i++) {
			if (cab->ws.s[i] == L'\\')
				cab->ws.s[i] = L'/';
		}
		FUNC0(entry, cab->ws.s);
	}
}