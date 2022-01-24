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
struct strbuf {int /*<<< orphan*/  s; } ;
typedef  int /*<<< orphan*/  glob_t ;
typedef  scalar_t__ Char ;

/* Variables and functions */
 scalar_t__ EOS ; 
 int FUNC0 (struct strbuf*,scalar_t__*,int /*<<< orphan*/ *,int) ; 
 struct strbuf strbuf_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(Char *pattern, glob_t *pglob, int no_match)
{
    struct strbuf pathbuf = strbuf_INIT;
    int err;

    /*
     * a null pathname is invalid -- POSIX 1003.1 sect. 2.4.
     */
    if (*pattern == EOS)
	return (0);
    err = FUNC0(&pathbuf, pattern, pglob, no_match);
    FUNC1(pathbuf.s);
    return err;
}