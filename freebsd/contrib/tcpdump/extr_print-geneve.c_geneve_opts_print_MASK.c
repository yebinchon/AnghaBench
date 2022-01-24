#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ u_int ;
typedef  int u_char ;
struct TYPE_4__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int const OPT_LEN_MASK ; 
 int OPT_TYPE_CRITICAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(netdissect_options *ndo, const u_char *bp, u_int len)
{
    const char *sep = "";

    while (len > 0) {
        uint16_t opt_class;
        uint8_t opt_type;
        uint8_t opt_len;

        FUNC2((ndo, "%s", sep));
        sep = ", ";

        opt_class = FUNC0(bp);
        opt_type = *(bp + 2);
        opt_len = 4 + ((*(bp + 3) & OPT_LEN_MASK) * 4);

        FUNC2((ndo, "class %s (0x%x) type 0x%x%s len %u",
                  FUNC3(opt_class), opt_class, opt_type,
                  opt_type & OPT_TYPE_CRITICAL ? "(C)" : "", opt_len));

        if (opt_len > len) {
            FUNC2((ndo, " [bad length]"));
            return;
        }

        if (ndo->ndo_vflag > 1 && opt_len > 4) {
            const uint32_t *data = (const uint32_t *)(bp + 4);
            int i;

            FUNC2((ndo, " data"));

            for (i = 4; i < opt_len; i += 4) {
                FUNC2((ndo, " %08x", FUNC1(data)));
                data++;
            }
        }

        bp += opt_len;
        len -= opt_len;
    }
}