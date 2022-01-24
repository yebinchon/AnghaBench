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
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  CRYPTO_THREAD_ID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,unsigned long,char*,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int ERR_TXT_STRING ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,char*,int) ; 
 unsigned long FUNC3 (char const**,int*,char const**,int*) ; 
 size_t FUNC4 (char*) ; 

void FUNC5(int (*cb) (const char *str, size_t len, void *u),
                         void *u)
{
    unsigned long l;
    char buf[256];
    char buf2[4096];
    const char *file, *data;
    int line, flags;
    /*
     * We don't know what kind of thing CRYPTO_THREAD_ID is. Here is our best
     * attempt to convert it into something we can print.
     */
    union {
        CRYPTO_THREAD_ID tid;
        unsigned long ltid;
    } tid;

    tid.ltid = 0;
    tid.tid = FUNC1();

    while ((l = FUNC3(&file, &line, &data, &flags)) != 0) {
        FUNC2(l, buf, sizeof(buf));
        FUNC0(buf2, sizeof(buf2), "%lu:%s:%s:%d:%s\n", tid.ltid, buf,
                     file, line, (flags & ERR_TXT_STRING) ? data : "");
        if (cb(buf2, FUNC4(buf2), u) <= 0)
            break;              /* abort outputting the error report */
    }
}