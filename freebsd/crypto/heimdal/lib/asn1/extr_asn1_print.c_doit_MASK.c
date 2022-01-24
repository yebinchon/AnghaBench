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
struct stat {size_t st_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 scalar_t__ FUNC5 (int,struct stat*) ; 
 int FUNC6 (unsigned char*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int,unsigned char*,size_t) ; 

__attribute__((used)) static int
FUNC9 (const char *filename)
{
    int fd = FUNC7 (filename, O_RDONLY);
    struct stat sb;
    unsigned char *buf;
    size_t len;
    int ret;

    if(fd < 0)
	FUNC2 (1, "opening %s for read", filename);
    if (FUNC5 (fd, &sb) < 0)
	FUNC2 (1, "stat %s", filename);
    len = sb.st_size;
    buf = FUNC1 (len);
    if (FUNC8 (fd, buf, len) != len)
	FUNC3 (1, "read failed");
    FUNC0 (fd);
    ret = FUNC6 (buf, len, 0);
    FUNC4 (buf);
    return ret;
}