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
struct TYPE_3__ {char* prefix; int linestart; } ;
typedef  TYPE_1__ PREFIX_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,size_t,size_t*) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(BIO *b, const char *out, size_t outl,
                        size_t *numwritten)
{
    PREFIX_CTX *ctx = FUNC0(b);

    if (ctx == NULL)
        return 0;

    /* If no prefix is set or if it's empty, we've got nothing to do here */
    if (ctx->prefix == NULL || *ctx->prefix == '\0') {
        /* We do note if what comes next will be a new line, though */
        if (outl > 0)
            ctx->linestart = (out[outl-1] == '\n');
        return FUNC2(FUNC1(b), out, outl, numwritten);
    }

    *numwritten = 0;

    while (outl > 0) {
        size_t i;
        char c;

        /* If we know that we're at the start of the line, output the prefix */
        if (ctx->linestart) {
            size_t dontcare;

            if (!FUNC2(FUNC1(b), ctx->prefix, FUNC3(ctx->prefix),
                              &dontcare))
                return 0;
            ctx->linestart = 0;
        }

        /* Now, go look for the next LF, or the end of the string */
        for (i = 0, c = '\0'; i < outl && (c = out[i]) != '\n'; i++)
            continue;
        if (c == '\n')
            i++;

        /* Output what we found so far */
        while (i > 0) {
            size_t num = 0;

            if (!FUNC2(FUNC1(b), out, i, &num))
                return 0;
            out += num;
            outl -= num;
            *numwritten += num;
            i -= num;
        }

        /* If we found a LF, what follows is a new line, so take note */
        if (c == '\n')
            ctx->linestart = 1;
    }

    return 1;
}