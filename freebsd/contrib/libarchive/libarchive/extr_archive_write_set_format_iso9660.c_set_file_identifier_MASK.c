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
struct vdd {scalar_t__ vdd_type; int /*<<< orphan*/  rootent; } ;
struct isoent {size_t ext_off; size_t ext_len; int /*<<< orphan*/  identifier; } ;
struct archive_write {int /*<<< orphan*/  archive; } ;
struct archive_string {scalar_t__ length; char* s; } ;
typedef  int /*<<< orphan*/  identifier ;
typedef  enum vdc { ____Placeholder_vdc } vdc ;
typedef  enum char_type { ____Placeholder_char_type } char_type ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 int A_CHAR ; 
 int VDC_UCS2_DIRECT ; 
 scalar_t__ VDD_JOLIET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 struct isoent* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC3 (struct archive_write*,unsigned char*,int,int,char*,int) ; 
 int FUNC4 (struct archive_write*,unsigned char*,int,int,char*,int) ; 

__attribute__((used)) static int
FUNC5(unsigned char *bp, int from, int to, enum vdc vdc,
    struct archive_write *a, struct vdd *vdd, struct archive_string *id,
    const char *label, int leading_under, enum char_type char_type)
{
	char identifier[256];
	struct isoent *isoent;
	const char *ids;
	size_t len;
	int r;

	if (id->length > 0 && leading_under && id->s[0] != '_') {
		if (char_type == A_CHAR)
			r = FUNC3(a, bp, from, to, id->s, vdc);
		else
			r = FUNC4(a, bp, from, to, id->s, vdc);
	} else if (id->length > 0) {
		ids = id->s;
		if (leading_under)
			ids++;
		isoent = FUNC1(vdd->rootent, ids);
		if (isoent == NULL) {
			FUNC0(&a->archive, ARCHIVE_ERRNO_MISC,
			    "Not Found %s `%s'.",
			    label, ids);
			return (ARCHIVE_FATAL);
		}
		len = isoent->ext_off + isoent->ext_len;
		if (vdd->vdd_type == VDD_JOLIET) {
			if (len > sizeof(identifier)-2)
				len = sizeof(identifier)-2;
		} else {
			if (len > sizeof(identifier)-1)
				len = sizeof(identifier)-1;
		}
		FUNC2(identifier, isoent->identifier, len);
		identifier[len] = '\0';
		if (vdd->vdd_type == VDD_JOLIET) {
			identifier[len+1] = 0;
			vdc = VDC_UCS2_DIRECT;
		}
		if (char_type == A_CHAR)
			r = FUNC3(a, bp, from, to,
			    identifier, vdc);
		else
			r = FUNC4(a, bp, from, to,
			    identifier, vdc);
	} else {
		if (char_type == A_CHAR)
			r = FUNC3(a, bp, from, to, NULL, vdc);
		else
			r = FUNC4(a, bp, from, to, NULL, vdc);
	}
	return (r);
}