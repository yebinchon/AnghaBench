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
struct mydata {char* filename; int fd; } ;
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
 scalar_t__ FUNC8 (struct archive*,struct mydata*) ; 
 int FUNC9 (struct archive*) ; 
 int FUNC10 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*) ; 
 struct archive* FUNC12 () ; 
 int FUNC13 (struct archive*,struct archive_entry**) ; 
 scalar_t__ FUNC14 (struct archive*) ; 
 scalar_t__ FUNC15 (struct archive*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct archive*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct archive*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct archive*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct archive*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (struct archive*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (struct archive*) ; 
 scalar_t__ FUNC22 (struct archive*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct archive*,int,int) ; 
 int /*<<< orphan*/  FUNC27 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC28 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int,int) ; 
 int /*<<< orphan*/  FUNC30 (char const**) ; 
 int /*<<< orphan*/  file_close ; 
 int /*<<< orphan*/  file_open ; 
 int /*<<< orphan*/  file_read ; 
 int /*<<< orphan*/  file_seek ; 
 int /*<<< orphan*/  file_skip ; 
 int /*<<< orphan*/  file_switch ; 
 int /*<<< orphan*/  FUNC31 (struct mydata*) ; 
 int /*<<< orphan*/  FUNC32 (char*,char const*) ; 
 int FUNC33 (char const*) ; 

__attribute__((used)) static void
FUNC34(void)
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
  struct mydata *mydata;
  const char *filename = *reffiles;
  int i;

  FUNC30(reffiles);
  FUNC23((a = FUNC12()) != NULL);
  FUNC24(0 == FUNC21(a));
  FUNC24(0 == FUNC22(a));

  for (i = 0; filename != NULL;)
  {
    FUNC23((mydata = (struct mydata *)FUNC29(1, sizeof(*mydata))) != NULL);
    if (mydata == NULL) {
      FUNC25(ARCHIVE_OK, FUNC11(a));
      return;
    }
    FUNC23((mydata->filename =
      (char *)FUNC29(1, FUNC33(filename) + 1)) != NULL);
    if (mydata->filename == NULL) {
      FUNC31(mydata);
      FUNC25(ARCHIVE_OK, FUNC11(a));
      return;
    }
    FUNC32(mydata->filename, filename);
    mydata->fd = -1;
    filename = reffiles[++i];
    FUNC24(0 == FUNC8(a, mydata));
  }
	FUNC24(0 == FUNC16(a, file_open));
	FUNC24(0 == FUNC17(a, file_read));
	FUNC24(0 == FUNC19(a, file_skip));
	FUNC24(0 == FUNC15(a, file_close));
	FUNC24(0 == FUNC20(a, file_switch));
  FUNC24(0 == FUNC18(a, file_seek));
  FUNC24(0 == FUNC14(a));

  /* First header. */
  FUNC24(0 == FUNC13(a, &ae));
  FUNC28("test.txt", FUNC4(ae));
  FUNC24((int)FUNC3(ae));
  FUNC24((int)FUNC1(ae));
  FUNC24((int)FUNC0(ae));
  FUNC25(20, FUNC5(ae));
  FUNC25(33188, FUNC2(ae));
  FUNC24(size == FUNC10(a, buff, size));
  FUNC27(buff, test_txt, size);

  /* Second header. */
  FUNC24(0 == FUNC13(a, &ae));
  FUNC28("testlink", FUNC4(ae));
  FUNC24((int)FUNC3(ae));
  FUNC24((int)FUNC1(ae));
  FUNC24((int)FUNC0(ae));
  FUNC25(0, FUNC5(ae));
  FUNC25(41471, FUNC2(ae));
  FUNC28("test.txt", FUNC6(ae));
  FUNC26(a, 0, FUNC10(a, buff, sizeof(buff)));

  /* Third header. */
  FUNC24(0 == FUNC13(a, &ae));
  FUNC28("testdir/test.txt", FUNC4(ae));
  FUNC24((int)FUNC3(ae));
  FUNC24((int)FUNC1(ae));
  FUNC24((int)FUNC0(ae));
  FUNC25(20, FUNC5(ae));
  FUNC25(33188, FUNC2(ae));
  FUNC24(size == FUNC10(a, buff, size));
  FUNC27(buff, test_txt, size);

  /* Fourth header. */
  FUNC24(0 == FUNC13(a, &ae));
  FUNC28("testdir", FUNC4(ae));
  FUNC24((int)FUNC3(ae));
  FUNC24((int)FUNC1(ae));
  FUNC24((int)FUNC0(ae));
  FUNC25(0, FUNC5(ae));
  FUNC25(16877, FUNC2(ae));

  /* Fifth header. */
  FUNC24(0 == FUNC13(a, &ae));
  FUNC28("testemptydir", FUNC4(ae));
  FUNC24((int)FUNC3(ae));
  FUNC24((int)FUNC1(ae));
  FUNC24((int)FUNC0(ae));
  FUNC25(0, FUNC5(ae));
  FUNC25(16877, FUNC2(ae));

  /* Test EOF */
  FUNC24(1 == FUNC13(a, &ae));
  FUNC25(5, FUNC7(a));
  FUNC26(a, ARCHIVE_OK, FUNC9(a));
  FUNC25(ARCHIVE_OK, FUNC11(a));
}