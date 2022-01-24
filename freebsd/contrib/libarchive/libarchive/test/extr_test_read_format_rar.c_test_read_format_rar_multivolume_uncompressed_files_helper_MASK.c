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
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct archive *a)
{
  char buff[64];

  /* Do checks for seeks/reads past beginning and end of file */
  FUNC2(a, 0, FUNC1(a, 0, SEEK_SET));
  FUNC4(buff, 0, sizeof(buff));
  FUNC2(a, -1, FUNC1(a, -((int)sizeof(buff)-1), SEEK_SET));
  FUNC2(a, 0, FUNC1(a, 0, SEEK_CUR));
  FUNC2(a, (sizeof(buff)-1),
    FUNC0(a, buff, (sizeof(buff)-1)));
  FUNC2(a, (sizeof(buff)-1), FUNC1(a, 0, SEEK_CUR));
  FUNC3(a, "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD "
                        "HTML 4.0 Transitional//EN\">\n", buff);
  FUNC4(buff, 0, sizeof(buff));
  FUNC2(a, -1, FUNC1(a, -(((int)sizeof(buff)-1)*2), SEEK_CUR));
  FUNC2(a, (sizeof(buff)-1), FUNC1(a, 0, SEEK_CUR));
  FUNC2(a, (sizeof(buff)-1),
    FUNC0(a, buff, (sizeof(buff)-1)));
  FUNC2(a, ((sizeof(buff)-1)*2), FUNC1(a, 0, SEEK_CUR));
  FUNC3(a, "<HTML>\n<HEAD>\n\t<META HTTP-EQUIV=\"CONTENT-TYPE\" "
                        "CONTENT=\"text/ht", buff);
  FUNC4(buff, 0, sizeof(buff));
  FUNC2(a, -1, FUNC1(a, -(20111+32), SEEK_END));
  FUNC2(a, ((sizeof(buff)-1)*2), FUNC1(a, 0, SEEK_CUR));
  FUNC2(a, (sizeof(buff)-1),
    FUNC0(a, buff, (sizeof(buff)-1)));
  FUNC2(a, ((sizeof(buff)-1)*3), FUNC1(a, 0, SEEK_CUR));
  FUNC3(a, "ml; charset=utf-8\">\n\t<TITLE></TITLE>\n\t<META "
                        "NAME=\"GENERATOR\" CO", buff);

  FUNC4(buff, 0, sizeof(buff));
  FUNC2(a, 20111, FUNC1(a, 20111, SEEK_SET));
  FUNC2(a, 20111, FUNC1(a, 0, SEEK_CUR));
  FUNC2(a, 0, FUNC0(a, buff, (sizeof(buff)-1)));
  FUNC2(a, 20111, FUNC1(a, 0, SEEK_CUR));
  FUNC3(a, "", buff);
  FUNC4(buff, 0, sizeof(buff));
  FUNC2(a, 20111 + (sizeof(buff)-1),
    FUNC1(a, (sizeof(buff)-1), SEEK_CUR));
  FUNC2(a, 0, FUNC0(a, buff, (sizeof(buff)-1)));
  FUNC2(a, 20111 + (sizeof(buff)-1),
    FUNC1(a, 0, SEEK_CUR));
  FUNC3(a, "", buff);
  FUNC4(buff, 0, sizeof(buff));
  FUNC2(a, 20111 + ((sizeof(buff)-1)*2),
    FUNC1(a, ((sizeof(buff)-1)*2), SEEK_END));
  FUNC2(a, 0, FUNC0(a, buff, (sizeof(buff)-1)));
  FUNC2(a, 20111 + ((sizeof(buff)-1)*2),
    FUNC1(a, 0, SEEK_CUR));
  FUNC3(a, "", buff);
}