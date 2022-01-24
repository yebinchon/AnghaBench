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
struct mtree_option {char const* value; struct mtree_option* next; } ;
struct mtree_entry {char* name; int /*<<< orphan*/ * options; struct mtree_entry* next_dup; int /*<<< orphan*/  rbnode; scalar_t__ full; struct mtree_entry* next; scalar_t__ used; } ;
struct mtree {int /*<<< orphan*/  rbtree; struct mtree_entry* entries; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct archive_read*,int /*<<< orphan*/ **,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  errno ; 
 void* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct mtree_entry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,char const*,size_t) ; 
 char* FUNC8 (char const*,char) ; 
 size_t FUNC9 (char const*,char*) ; 
 int FUNC10 (char const*) ; 
 int FUNC11 (char const*,char*) ; 

__attribute__((used)) static int
FUNC12(struct archive_read *a, struct mtree *mtree,
    struct mtree_option **global, const char *line, ssize_t line_len,
    struct mtree_entry **last_entry, int is_form_d)
{
	struct mtree_entry *entry;
	struct mtree_option *iter;
	const char *next, *eq, *name, *end;
	size_t name_len, len;
	int r, i;

	if ((entry = FUNC4(sizeof(*entry))) == NULL) {
		FUNC3(&a->archive, errno, "Can't allocate memory");
		return (ARCHIVE_FATAL);
	}
	entry->next = NULL;
	entry->options = NULL;
	entry->name = NULL;
	entry->used = 0;
	entry->full = 0;

	/* Add this entry to list. */
	if (*last_entry == NULL)
		mtree->entries = entry;
	else
		(*last_entry)->next = entry;
	*last_entry = entry;

	if (is_form_d) {
		/* Filename is last item on line. */
		/* Adjust line_len to trim trailing whitespace */
		while (line_len > 0) {
			char last_character = line[line_len - 1];
			if (last_character == '\r'
			    || last_character == '\n'
			    || last_character == '\t'
			    || last_character == ' ') {
				line_len--;
			} else {
				break;
			}
		}
		/* Name starts after the last whitespace separator */
		name = line;
		for (i = 0; i < line_len; i++) {
			if (line[i] == '\r'
			    || line[i] == '\n'
			    || line[i] == '\t'
			    || line[i] == ' ') {
				name = line + i + 1;
			}
		}
		name_len = line + line_len - name;
		end = name;
	} else {
		/* Filename is first item on line */
		name_len = FUNC9(line, " \t\r\n");
		name = line;
		line += name_len;
		end = line + line_len;
	}
	/* name/name_len is the name within the line. */
	/* line..end brackets the entire line except the name */

	if ((entry->name = FUNC4(name_len + 1)) == NULL) {
		FUNC3(&a->archive, errno, "Can't allocate memory");
		return (ARCHIVE_FATAL);
	}

	FUNC5(entry->name, name, name_len);
	entry->name[name_len] = '\0';
	FUNC6(entry->name, entry);

	entry->next_dup = NULL;
	if (entry->full) {
		if (!FUNC1(&mtree->rbtree, &entry->rbnode)) {
			struct mtree_entry *alt;
			alt = (struct mtree_entry *)FUNC0(
			    &mtree->rbtree, entry->name);
			while (alt->next_dup)
				alt = alt->next_dup;
			alt->next_dup = entry;
		}
	}

	for (iter = *global; iter != NULL; iter = iter->next) {
		r = FUNC2(a, &entry->options, iter->value,
		    FUNC10(iter->value));
		if (r != ARCHIVE_OK)
			return (r);
	}

	for (;;) {
		next = line + FUNC11(line, " \t\r\n");
		if (*next == '\0')
			return (ARCHIVE_OK);
		if (next >= end)
			return (ARCHIVE_OK);
		line = next;
		next = line + FUNC9(line, " \t\r\n");
		eq = FUNC8(line, '=');
		if (eq == NULL || eq > next)
			len = next - line;
		else
			len = eq - line;

		FUNC7(&entry->options, line, len);
		r = FUNC2(a, &entry->options, line, next - line);
		if (r != ARCHIVE_OK)
			return (r);
		line = next;
	}
}