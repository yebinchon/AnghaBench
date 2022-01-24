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
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 scalar_t__ FUNC0 (struct archive_entry*) ; 
 scalar_t__ FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 scalar_t__ FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*) ; 
 int FUNC8 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 
 struct archive* FUNC10 () ; 
 int FUNC11 (struct archive*,struct archive_entry**) ; 
 scalar_t__ FUNC12 (struct archive*,char const**,int) ; 
 scalar_t__ FUNC13 (struct archive*) ; 
 scalar_t__ FUNC14 (struct archive*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char const**) ; 

__attribute__((used)) static void
FUNC22(void)
{
  static const char *reffiles[] =
  {
    "test_read_large_splitted_rar_aa",
    "test_read_large_splitted_rar_ab",
    "test_read_large_splitted_rar_ac",
    "test_read_large_splitted_rar_ad",
    "test_read_large_splitted_rar_ae",
    NULL
  };
  const char test_txt[] = "gin-bottom: 0in\"><BR>\n</P>\n</BODY>\n</HTML>";
  int size = 241647978, offset = 0;
  char buff[64];
  struct archive_entry *ae;
  struct archive *a;

  FUNC21(reffiles);
  FUNC15((a = FUNC10()) != NULL);
  FUNC16(0 == FUNC13(a));
  FUNC16(0 == FUNC14(a));
  FUNC16(0 == FUNC12(a, reffiles, 10240));

  /* First header. */
  FUNC16(0 == FUNC11(a, &ae));
  FUNC20("ppmd_lzss_conversion_test.txt",
                    FUNC4(ae));
  FUNC16((int)FUNC3(ae));
  FUNC16((int)FUNC1(ae));
  FUNC16((int)FUNC0(ae));
  FUNC17(size, FUNC5(ae));
  FUNC17(33188, FUNC2(ae));
  while (offset + (int)sizeof(buff) < size)
  {
    FUNC16(sizeof(buff) == FUNC8(a, buff, sizeof(buff)));
    offset += sizeof(buff);
  }
  FUNC16(size - offset == FUNC8(a, buff, size - offset));
  FUNC19(buff, test_txt, size - offset);

  /* Test EOF */
  FUNC16(1 == FUNC11(a, &ae));
  FUNC17(1, FUNC6(a));
  FUNC18(a, ARCHIVE_OK, FUNC7(a));
  FUNC17(ARCHIVE_OK, FUNC9(a));
}