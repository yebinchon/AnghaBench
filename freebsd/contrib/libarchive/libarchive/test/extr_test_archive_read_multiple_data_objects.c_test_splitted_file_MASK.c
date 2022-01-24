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
typedef  int /*<<< orphan*/  test_txt ;
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
 int /*<<< orphan*/  FUNC6 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*) ; 
 int FUNC8 (struct archive*) ; 
 int FUNC9 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*) ; 
 struct archive* FUNC11 () ; 
 int FUNC12 (struct archive*,struct archive_entry**) ; 
 scalar_t__ FUNC13 (struct archive*,char const**,int) ; 
 scalar_t__ FUNC14 (struct archive*) ; 
 scalar_t__ FUNC15 (struct archive*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct archive*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char const**) ; 

__attribute__((used)) static void
FUNC23(void)
{
  char buff[64];
  static const char *reffiles[] =
  {
    "test_read_splitted_rar_aa",
    "test_read_splitted_rar_ab",
    "test_read_splitted_rar_ac",
    "test_read_splitted_rar_ad",
    NULL
  };
  const char test_txt[] = "test text document\r\n";
  int size = sizeof(test_txt)-1;
  struct archive_entry *ae;
  struct archive *a;

  FUNC22(reffiles);
  FUNC16((a = FUNC11()) != NULL);
  FUNC17(0 == FUNC14(a));
  FUNC17(0 == FUNC15(a));
  FUNC17(0 == FUNC13(a, reffiles, 10240));

  /* First header. */
  FUNC17(0 == FUNC12(a, &ae));
  FUNC21("test.txt", FUNC4(ae));
  FUNC17((int)FUNC3(ae));
  FUNC17((int)FUNC1(ae));
  FUNC17((int)FUNC0(ae));
  FUNC18(20, FUNC5(ae));
  FUNC18(33188, FUNC2(ae));
  FUNC17(size == FUNC9(a, buff, size));
  FUNC20(buff, test_txt, size);

  /* Second header. */
  FUNC17(0 == FUNC12(a, &ae));
  FUNC21("testlink", FUNC4(ae));
  FUNC17((int)FUNC3(ae));
  FUNC17((int)FUNC1(ae));
  FUNC17((int)FUNC0(ae));
  FUNC18(0, FUNC5(ae));
  FUNC18(41471, FUNC2(ae));
  FUNC21("test.txt", FUNC6(ae));
  FUNC19(a, 0, FUNC9(a, buff, sizeof(buff)));

  /* Third header. */
  FUNC17(0 == FUNC12(a, &ae));
  FUNC21("testdir/test.txt", FUNC4(ae));
  FUNC17((int)FUNC3(ae));
  FUNC17((int)FUNC1(ae));
  FUNC17((int)FUNC0(ae));
  FUNC18(20, FUNC5(ae));
  FUNC18(33188, FUNC2(ae));
  FUNC17(size == FUNC9(a, buff, size));
  FUNC20(buff, test_txt, size);

  /* Fourth header. */
  FUNC17(0 == FUNC12(a, &ae));
  FUNC21("testdir", FUNC4(ae));
  FUNC17((int)FUNC3(ae));
  FUNC17((int)FUNC1(ae));
  FUNC17((int)FUNC0(ae));
  FUNC18(0, FUNC5(ae));
  FUNC18(16877, FUNC2(ae));

  /* Fifth header. */
  FUNC17(0 == FUNC12(a, &ae));
  FUNC21("testemptydir", FUNC4(ae));
  FUNC17((int)FUNC3(ae));
  FUNC17((int)FUNC1(ae));
  FUNC17((int)FUNC0(ae));
  FUNC18(0, FUNC5(ae));
  FUNC18(16877, FUNC2(ae));

  /* Test EOF */
  FUNC17(1 == FUNC12(a, &ae));
  FUNC18(5, FUNC7(a));
  FUNC19(a, ARCHIVE_OK, FUNC8(a));
  FUNC18(ARCHIVE_OK, FUNC10(a));
}