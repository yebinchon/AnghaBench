
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ u_int ;
typedef int u_char ;
struct TYPE_4__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int const OPT_LEN_MASK ;
 int OPT_TYPE_CRITICAL ;
 int format_opt_class (int ) ;

__attribute__((used)) static void
geneve_opts_print(netdissect_options *ndo, const u_char *bp, u_int len)
{
    const char *sep = "";

    while (len > 0) {
        uint16_t opt_class;
        uint8_t opt_type;
        uint8_t opt_len;

        ND_PRINT((ndo, "%s", sep));
        sep = ", ";

        opt_class = EXTRACT_16BITS(bp);
        opt_type = *(bp + 2);
        opt_len = 4 + ((*(bp + 3) & OPT_LEN_MASK) * 4);

        ND_PRINT((ndo, "class %s (0x%x) type 0x%x%s len %u",
                  format_opt_class(opt_class), opt_class, opt_type,
                  opt_type & OPT_TYPE_CRITICAL ? "(C)" : "", opt_len));

        if (opt_len > len) {
            ND_PRINT((ndo, " [bad length]"));
            return;
        }

        if (ndo->ndo_vflag > 1 && opt_len > 4) {
            const uint32_t *data = (const uint32_t *)(bp + 4);
            int i;

            ND_PRINT((ndo, " data"));

            for (i = 4; i < opt_len; i += 4) {
                ND_PRINT((ndo, " %08x", EXTRACT_32BITS(data)));
                data++;
            }
        }

        bp += opt_len;
        len -= opt_len;
    }
}
