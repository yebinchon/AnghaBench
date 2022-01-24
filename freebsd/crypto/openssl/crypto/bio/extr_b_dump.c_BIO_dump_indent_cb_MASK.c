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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (char*,int,char*,unsigned char,...) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,int,int) ; 
 unsigned char* os_toascii ; 
 char* os_toebcdic ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

int FUNC4(int (*cb) (const void *data, size_t len, void *u),
                       void *u, const char *s, int len, int indent)
{
    int ret = 0;
    char buf[288 + 1];
    int i, j, rows, n;
    unsigned char ch;
    int dump_width;

    if (indent < 0)
        indent = 0;
    else if (indent > 128)
        indent = 128;

    dump_width = FUNC1(indent);
    rows = len / dump_width;
    if ((rows * dump_width) < len)
        rows++;
    for (i = 0; i < rows; i++) {
        n = FUNC0(buf, sizeof(buf), "%*s%04x - ", indent, "",
                         i * dump_width);
        for (j = 0; j < dump_width; j++) {
            if (FUNC2(buf, n, 3)) {
                if (((i * dump_width) + j) >= len) {
                    FUNC3(buf + n, "   ");
                } else {
                    ch = ((unsigned char)*(s + i * dump_width + j)) & 0xff;
                    FUNC0(buf + n, 4, "%02x%c", ch,
                                 j == 7 ? '-' : ' ');
                }
                n += 3;
            }
        }
        if (FUNC2(buf, n, 2)) {
            FUNC3(buf + n, "  ");
            n += 2;
        }
        for (j = 0; j < dump_width; j++) {
            if (((i * dump_width) + j) >= len)
                break;
            if (FUNC2(buf, n, 1)) {
                ch = ((unsigned char)*(s + i * dump_width + j)) & 0xff;
#ifndef CHARSET_EBCDIC
                buf[n++] = ((ch >= ' ') && (ch <= '~')) ? ch : '.';
#else
                buf[n++] = ((ch >= os_toascii[' ']) && (ch <= os_toascii['~']))
                           ? os_toebcdic[ch]
                           : '.';
#endif
                buf[n] = '\0';
            }
        }
        if (FUNC2(buf, n, 1)) {
            buf[n++] = '\n';
            buf[n] = '\0';
        }
        /*
         * if this is the last call then update the ddt_dump thing so that we
         * will move the selection point in the debug window
         */
        ret += cb((void *)buf, n, u);
    }
    return ret;
}