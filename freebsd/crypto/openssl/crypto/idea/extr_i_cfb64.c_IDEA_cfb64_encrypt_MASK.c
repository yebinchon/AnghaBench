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
typedef  int /*<<< orphan*/  IDEA_KEY_SCHEDULE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned long) ; 

void FUNC3(const unsigned char *in, unsigned char *out,
                        long length, IDEA_KEY_SCHEDULE *schedule,
                        unsigned char *ivec, int *num, int encrypt)
{
    register unsigned long v0, v1, t;
    register int n = *num;
    register long l = length;
    unsigned long ti[2];
    unsigned char *iv, c, cc;

    iv = (unsigned char *)ivec;
    if (encrypt) {
        while (l--) {
            if (n == 0) {
                FUNC2(iv, v0);
                ti[0] = v0;
                FUNC2(iv, v1);
                ti[1] = v1;
                FUNC0((unsigned long *)ti, schedule);
                iv = (unsigned char *)ivec;
                t = ti[0];
                FUNC1(t, iv);
                t = ti[1];
                FUNC1(t, iv);
                iv = (unsigned char *)ivec;
            }
            c = *(in++) ^ iv[n];
            *(out++) = c;
            iv[n] = c;
            n = (n + 1) & 0x07;
        }
    } else {
        while (l--) {
            if (n == 0) {
                FUNC2(iv, v0);
                ti[0] = v0;
                FUNC2(iv, v1);
                ti[1] = v1;
                FUNC0((unsigned long *)ti, schedule);
                iv = (unsigned char *)ivec;
                t = ti[0];
                FUNC1(t, iv);
                t = ti[1];
                FUNC1(t, iv);
                iv = (unsigned char *)ivec;
            }
            cc = *(in++);
            c = iv[n];
            iv[n] = cc;
            *(out++) = c ^ cc;
            n = (n + 1) & 0x07;
        }
    }
    v0 = v1 = ti[0] = ti[1] = t = c = cc = 0;
    *num = n;
}