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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 unsigned char* v4prefix ; 

__attribute__((used)) static int
FUNC2(int ae, int plen, unsigned int omitted,
               const unsigned char *p, const unsigned char *dp,
               unsigned int len, unsigned char *p_r)
{
    unsigned pb;
    unsigned char prefix[16];
    int consumed = 0;

    if(plen >= 0)
        pb = (plen + 7) / 8;
    else if(ae == 1)
        pb = 4;
    else
        pb = 16;

    if(pb > 16)
        return -1;

    FUNC1(prefix, 0, 16);

    switch(ae) {
    case 0: break;
    case 1:
        if(omitted > 4 || pb > 4 || (pb > omitted && len < pb - omitted))
            return -1;
        FUNC0(prefix, v4prefix, 12);
        if(omitted) {
            if (dp == NULL) return -1;
            FUNC0(prefix, dp, 12 + omitted);
        }
        if(pb > omitted) {
            FUNC0(prefix + 12 + omitted, p, pb - omitted);
            consumed = pb - omitted;
        }
        break;
    case 2:
        if(omitted > 16 || (pb > omitted && len < pb - omitted))
            return -1;
        if(omitted) {
            if (dp == NULL) return -1;
            FUNC0(prefix, dp, omitted);
        }
        if(pb > omitted) {
            FUNC0(prefix + omitted, p, pb - omitted);
            consumed = pb - omitted;
        }
        break;
    case 3:
        if(pb > 8 && len < pb - 8) return -1;
        prefix[0] = 0xfe;
        prefix[1] = 0x80;
        if(pb > 8) {
            FUNC0(prefix + 8, p, pb - 8);
            consumed = pb - 8;
        }
        break;
    default:
        return -1;
    }

    FUNC0(p_r, prefix, 16);
    return consumed;
}