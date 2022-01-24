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

/* Variables and functions */
 char* dir ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* machine ; 
 char* passwd ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int remote_timeout ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int timeout ; 
 char* user ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4 (char *args, int from_tty)
{
  /* FIXME: arbitrary limit on machine names and such.  */
  char buf[200];

  int oldtimeout = timeout;
  timeout = remote_timeout;

  FUNC2 (buf, "ftp %s\r", machine);
  FUNC1 (buf);
  FUNC0 (" Username : ");
  FUNC2 (buf, "%s\r", user);
  FUNC1 (buf);
  FUNC0 (" Password : ");
  FUNC3 (passwd);
  FUNC3 ("\r");
  FUNC0 ("success\r");
  FUNC0 ("FTP>");
  FUNC2 (buf, "cd %s\r", dir);
  FUNC1 (buf);
  FUNC0 ("FTP>");
  FUNC2 (buf, "ll 0;s:%s\r", args);
  FUNC1 (buf);
  FUNC0 ("FTP>");
  FUNC1 ("bye\r");
  FUNC0 (":");
  timeout = oldtimeout;
}