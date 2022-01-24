#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tm {int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_8__ {struct TYPE_8__* next; int /*<<< orphan*/  info; int /*<<< orphan*/  line; int /*<<< orphan*/  file; int /*<<< orphan*/  threadid; } ;
struct TYPE_7__ {size_t array_siz; int /*<<< orphan*/  array; TYPE_3__* app_info; int /*<<< orphan*/  num; int /*<<< orphan*/  addr; int /*<<< orphan*/  threadid; int /*<<< orphan*/  line; int /*<<< orphan*/  file; int /*<<< orphan*/  order; int /*<<< orphan*/  time; } ;
struct TYPE_6__ {int /*<<< orphan*/  print_cb_arg; int /*<<< orphan*/  (* print_cb ) (char*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  bytes; int /*<<< orphan*/  chunks; } ;
typedef  TYPE_1__ MEM_LEAK ;
typedef  TYPE_2__ MEM ;
typedef  int /*<<< orphan*/  CRYPTO_THREAD_ID ;
typedef  TYPE_3__ APP_INFO ;

/* Variables and functions */
 int FUNC0 (char*,int,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char** FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 struct tm* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char,size_t) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(const MEM *m, MEM_LEAK *l)
{
    char buf[1024];
    char *bufp = buf;
    size_t len = sizeof(buf), ami_cnt;
    APP_INFO *amip;
    int n;
    struct tm *lcl = NULL;
    /*
     * Convert between CRYPTO_THREAD_ID (which could be anything at all) and
     * a long. This may not be meaningful depending on what CRYPTO_THREAD_ID is
     * but hopefully should give something sensible on most platforms
     */
    union {
        CRYPTO_THREAD_ID tid;
        unsigned long ltid;
    } tid;
    CRYPTO_THREAD_ID ti;

    lcl = FUNC5(&m->time);
    n = FUNC0(bufp, len, "[%02d:%02d:%02d] ",
                     lcl->tm_hour, lcl->tm_min, lcl->tm_sec);
    if (n <= 0) {
        bufp[0] = '\0';
        return;
    }
    bufp += n;
    len -= n;

    n = FUNC0(bufp, len, "%5lu file=%s, line=%d, ",
                     m->order, m->file, m->line);
    if (n <= 0)
        return;
    bufp += n;
    len -= n;

    tid.ltid = 0;
    tid.tid = m->threadid;
    n = FUNC0(bufp, len, "thread=%lu, ", tid.ltid);
    if (n <= 0)
        return;
    bufp += n;
    len -= n;

    n = FUNC0(bufp, len, "number=%d, address=%p\n", m->num, m->addr);
    if (n <= 0)
        return;
    bufp += n;
    len -= n;

    l->print_cb(buf, (size_t)(bufp - buf), l->print_cb_arg);

    l->chunks++;
    l->bytes += m->num;

    amip = m->app_info;
    ami_cnt = 0;

    if (amip) {
        ti = amip->threadid;

        do {
            int buf_len;
            int info_len;

            ami_cnt++;
            if (ami_cnt >= sizeof(buf) - 1)
                break;
            FUNC7(buf, '>', ami_cnt);
            buf[ami_cnt] = '\0';
            tid.ltid = 0;
            tid.tid = amip->threadid;
            n = FUNC0(buf + ami_cnt, sizeof(buf) - ami_cnt,
                             " thread=%lu, file=%s, line=%d, info=\"",
                             tid.ltid, amip->file, amip->line);
            if (n <= 0)
                break;
            buf_len = ami_cnt + n;
            info_len = FUNC8(amip->info);
            if (128 - buf_len - 3 < info_len) {
                FUNC6(buf + buf_len, amip->info, 128 - buf_len - 3);
                buf_len = 128 - 3;
            } else {
                n = FUNC0(buf + buf_len, sizeof(buf) - buf_len, "%s",
                                 amip->info);
                if (n < 0)
                    break;
                buf_len += n;
            }
            n = FUNC0(buf + buf_len, sizeof(buf) - buf_len, "\"\n");
            if (n <= 0)
                break;

            l->print_cb(buf, buf_len + n, l->print_cb_arg);

            amip = amip->next;
        }
        while (amip && FUNC1(amip->threadid, ti));
    }

#ifndef OPENSSL_NO_CRYPTO_MDEBUG_BACKTRACE
    {
        size_t i;
        char **strings = FUNC2(m->array, m->array_siz);

        for (i = 0; i < m->array_siz; i++)
            FUNC3(stderr, "##> %s\n", strings[i]);
        FUNC4(strings);
    }
#endif
}