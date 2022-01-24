#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* data; } ;
struct TYPE_7__ {long num_fields; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ TXT_DB ;
typedef  TYPE_2__ BUF_MEM ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC3 () ; 
 long FUNC4 (int /*<<< orphan*/ ) ; 
 char** FUNC5 (int /*<<< orphan*/ ,long) ; 
 scalar_t__ FUNC6 (char*) ; 

long FUNC7(BIO *out, TXT_DB *db)
{
    long i, j, n, nn, l, tot = 0;
    char *p, **pp, *f;
    BUF_MEM *buf = NULL;
    long ret = -1;

    if ((buf = FUNC3()) == NULL)
        goto err;
    n = FUNC4(db->data);
    nn = db->num_fields;
    for (i = 0; i < n; i++) {
        pp = FUNC5(db->data, i);

        l = 0;
        for (j = 0; j < nn; j++) {
            if (pp[j] != NULL)
                l += FUNC6(pp[j]);
        }
        if (!FUNC2(buf, (int)(l * 2 + nn)))
            goto err;

        p = buf->data;
        for (j = 0; j < nn; j++) {
            f = pp[j];
            if (f != NULL)
                for (;;) {
                    if (*f == '\0')
                        break;
                    if (*f == '\t')
                        *(p++) = '\\';
                    *(p++) = *(f++);
                }
            *(p++) = '\t';
        }
        p[-1] = '\n';
        j = p - buf->data;
        if (FUNC0(out, buf->data, (int)j) != j)
            goto err;
        tot += j;
    }
    ret = tot;
 err:
    FUNC1(buf);
    return ret;
}