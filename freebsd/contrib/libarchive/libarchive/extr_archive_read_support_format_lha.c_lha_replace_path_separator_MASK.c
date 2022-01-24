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
struct lha {TYPE_1__ ws; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,int*) ; 
 int /*<<< orphan*/ * FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/ * FUNC3 (struct archive_entry*) ; 
 size_t FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC6(struct lha *lha, struct archive_entry *entry)
{
	const wchar_t *wp;
	size_t i;

	if ((wp = FUNC2(entry)) != NULL) {
		FUNC5(&(lha->ws), wp);
		for (i = 0; i < FUNC4(&(lha->ws)); i++) {
			if (lha->ws.s[i] == L'\\')
				lha->ws.s[i] = L'/';
		}
		FUNC0(entry, lha->ws.s);
	}

	if ((wp = FUNC3(entry)) != NULL) {
		FUNC5(&(lha->ws), wp);
		for (i = 0; i < FUNC4(&(lha->ws)); i++) {
			if (lha->ws.s[i] == L'\\')
				lha->ws.s[i] = L'/';
		}
		FUNC1(entry, lha->ws.s);
	}
}