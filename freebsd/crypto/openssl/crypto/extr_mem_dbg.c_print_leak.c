
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tm {int tm_sec; int tm_min; int tm_hour; } ;
typedef int buf ;
struct TYPE_8__ {struct TYPE_8__* next; int info; int line; int file; int threadid; } ;
struct TYPE_7__ {size_t array_siz; int array; TYPE_3__* app_info; int num; int addr; int threadid; int line; int file; int order; int time; } ;
struct TYPE_6__ {int print_cb_arg; int (* print_cb ) (char*,int,int ) ;int bytes; int chunks; } ;
typedef TYPE_1__ MEM_LEAK ;
typedef TYPE_2__ MEM ;
typedef int CRYPTO_THREAD_ID ;
typedef TYPE_3__ APP_INFO ;


 int BIO_snprintf (char*,int,char*,...) ;
 scalar_t__ CRYPTO_THREAD_compare_id (int ,int ) ;
 char** backtrace_symbols (int ,size_t) ;
 int fprintf (int ,char*,char*) ;
 int free (char**) ;
 struct tm* localtime (int *) ;
 int memcpy (char*,int ,int) ;
 int memset (char*,char,size_t) ;
 int stderr ;
 int strlen (int ) ;
 int stub1 (char*,size_t,int ) ;
 int stub2 (char*,int,int ) ;

__attribute__((used)) static void print_leak(const MEM *m, MEM_LEAK *l)
{
    char buf[1024];
    char *bufp = buf;
    size_t len = sizeof(buf), ami_cnt;
    APP_INFO *amip;
    int n;
    struct tm *lcl = ((void*)0);





    union {
        CRYPTO_THREAD_ID tid;
        unsigned long ltid;
    } tid;
    CRYPTO_THREAD_ID ti;

    lcl = localtime(&m->time);
    n = BIO_snprintf(bufp, len, "[%02d:%02d:%02d] ",
                     lcl->tm_hour, lcl->tm_min, lcl->tm_sec);
    if (n <= 0) {
        bufp[0] = '\0';
        return;
    }
    bufp += n;
    len -= n;

    n = BIO_snprintf(bufp, len, "%5lu file=%s, line=%d, ",
                     m->order, m->file, m->line);
    if (n <= 0)
        return;
    bufp += n;
    len -= n;

    tid.ltid = 0;
    tid.tid = m->threadid;
    n = BIO_snprintf(bufp, len, "thread=%lu, ", tid.ltid);
    if (n <= 0)
        return;
    bufp += n;
    len -= n;

    n = BIO_snprintf(bufp, len, "number=%d, address=%p\n", m->num, m->addr);
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
            memset(buf, '>', ami_cnt);
            buf[ami_cnt] = '\0';
            tid.ltid = 0;
            tid.tid = amip->threadid;
            n = BIO_snprintf(buf + ami_cnt, sizeof(buf) - ami_cnt,
                             " thread=%lu, file=%s, line=%d, info=\"",
                             tid.ltid, amip->file, amip->line);
            if (n <= 0)
                break;
            buf_len = ami_cnt + n;
            info_len = strlen(amip->info);
            if (128 - buf_len - 3 < info_len) {
                memcpy(buf + buf_len, amip->info, 128 - buf_len - 3);
                buf_len = 128 - 3;
            } else {
                n = BIO_snprintf(buf + buf_len, sizeof(buf) - buf_len, "%s",
                                 amip->info);
                if (n < 0)
                    break;
                buf_len += n;
            }
            n = BIO_snprintf(buf + buf_len, sizeof(buf) - buf_len, "\"\n");
            if (n <= 0)
                break;

            l->print_cb(buf, buf_len + n, l->print_cb_arg);

            amip = amip->next;
        }
        while (amip && CRYPTO_THREAD_compare_id(amip->threadid, ti));
    }


    {
        size_t i;
        char **strings = backtrace_symbols(m->array, m->array_siz);

        for (i = 0; i < m->array_siz; i++)
            fprintf(stderr, "##> %s\n", strings[i]);
        free(strings);
    }

}
