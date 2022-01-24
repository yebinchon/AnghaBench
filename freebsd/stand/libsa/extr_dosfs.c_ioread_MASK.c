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
typedef  int u_int ;
typedef  char u_char ;
typedef  int /*<<< orphan*/  local_buf ;
struct TYPE_3__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ DOS_FS ;

/* Variables and functions */
 int SECSIZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC3(DOS_FS *fs, u_int offset, void *buf, size_t nbyte)
{
    char *s;
    u_int off, n;
    int err;
    u_char local_buf[SECSIZ];

    s = buf;
    if ((off = offset & (SECSIZ - 1))) {
        offset -= off;
        if ((n = SECSIZ - off) > nbyte)
            n = nbyte;
        if ((err = FUNC1(fs->fd, FUNC0(offset), local_buf, sizeof(local_buf))))
            return (err);
	FUNC2(s, local_buf + off, n);
        offset += SECSIZ;
        s += n;
        nbyte -= n;
    }
    n = nbyte & (SECSIZ - 1);
    if (nbyte -= n) {
        if ((err = FUNC1(fs->fd, FUNC0(offset), s, nbyte)))
            return (err);
        offset += nbyte;
        s += nbyte;
    }
    if (n) {
        if ((err = FUNC1(fs->fd, FUNC0(offset), local_buf, sizeof(local_buf))))
            return (err);
	FUNC2(s, local_buf, n);
    }
    return (0);
}