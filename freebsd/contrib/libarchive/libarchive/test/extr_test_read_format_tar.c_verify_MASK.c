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
typedef  struct archive_entry archive_entry ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*) ; 
 int FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 struct archive* FUNC6 () ; 
 scalar_t__ FUNC7 (struct archive*,struct archive_entry**) ; 
 scalar_t__ FUNC8 (struct archive*,unsigned char*,size_t) ; 
 scalar_t__ FUNC9 (struct archive*) ; 
 scalar_t__ FUNC10 (struct archive*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (unsigned char*) ; 
 unsigned char* FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC18 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC19(unsigned char *d, size_t s,
    void (*f)(struct archive_entry *),
    int compression, int format)
{
	struct archive_entry *ae;
	struct archive *a;
	unsigned char *buff = FUNC16(100000);

	FUNC17(buff, d, s);
	FUNC18(buff + s, 0, 2048);

	FUNC11((a = FUNC6()) != NULL);
	FUNC12(0 == FUNC9(a));
	FUNC12(0 == FUNC10(a));
	FUNC12(0 == FUNC8(a, buff, s + 1024));
	FUNC12(0 == FUNC7(a, &ae));
	FUNC13(FUNC1(a, 0), compression);
	FUNC13(FUNC2(a), format);
	FUNC13(FUNC0(ae), 0);
	FUNC14(a, FUNC5(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	/* Verify the only entry. */
	f(ae);

	FUNC14(a, ARCHIVE_OK, FUNC3(a));
	FUNC13(ARCHIVE_OK, FUNC4(a));
	FUNC15(buff);
}