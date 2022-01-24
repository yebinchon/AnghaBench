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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/ * tptr ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int FUNC1 (int const*) ; 
 int FUNC2 (int const*) ; 
#define  ISIS_SUBTLV_SPBM_SI 129 
#define  ISIS_SUBTLV_SPB_INSTANCE 128 
 int ISIS_SUBTLV_SPB_INSTANCE_MIN_LEN ; 
 int ISIS_SUBTLV_SPB_INSTANCE_VLAN_TUPLE_LEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int const,int) ; 
 int /*<<< orphan*/  isis_mt_capability_subtlv_values ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static int
FUNC6(netdissect_options *ndo,
                                const uint8_t *tptr, int len)
{
  int stlv_type, stlv_len, tmp;

  while (len > 2)
  {
    FUNC4(*tptr, 2);
    stlv_type = *(tptr++);
    stlv_len  = *(tptr++);

    /* first lets see if we know the subTLVs name*/
    FUNC3((ndo, "\n\t      %s subTLV #%u, length: %u",
               FUNC5(isis_mt_capability_subtlv_values, "unknown", stlv_type),
               stlv_type,
               stlv_len));

    len = len - 2;

    /* Make sure the subTLV fits within the space left */
    if (len < stlv_len)
      goto trunc;
    /* Make sure the entire subTLV is in the captured data */
    FUNC4(*(tptr), stlv_len);

    switch (stlv_type)
    {
      case ISIS_SUBTLV_SPB_INSTANCE:
          if (stlv_len < ISIS_SUBTLV_SPB_INSTANCE_MIN_LEN)
            goto trunc;

          FUNC3((ndo, "\n\t        CIST Root-ID: %08x", FUNC2(tptr)));
          tptr = tptr+4;
          FUNC3((ndo, " %08x", FUNC2(tptr)));
          tptr = tptr+4;
          FUNC3((ndo, ", Path Cost: %08x", FUNC2(tptr)));
          tptr = tptr+4;
          FUNC3((ndo, ", Prio: %d", FUNC0(tptr)));
          tptr = tptr + 2;
          FUNC3((ndo, "\n\t        RES: %d",
                    FUNC0(tptr) >> 5));
          FUNC3((ndo, ", V: %d",
                    (FUNC0(tptr) >> 4) & 0x0001));
          FUNC3((ndo, ", SPSource-ID: %d",
                    (FUNC2(tptr) & 0x000fffff)));
          tptr = tptr+4;
          FUNC3((ndo, ", No of Trees: %x", *(tptr)));

          tmp = *(tptr++);

          len = len - ISIS_SUBTLV_SPB_INSTANCE_MIN_LEN;
          stlv_len = stlv_len - ISIS_SUBTLV_SPB_INSTANCE_MIN_LEN;

          while (tmp)
          {
            if (stlv_len < ISIS_SUBTLV_SPB_INSTANCE_VLAN_TUPLE_LEN)
              goto trunc;

            FUNC3((ndo, "\n\t         U:%d, M:%d, A:%d, RES:%d",
                      *(tptr) >> 7, (*(tptr) >> 6) & 0x01,
                      (*(tptr) >> 5) & 0x01, (*(tptr) & 0x1f)));

            tptr++;

            FUNC3((ndo, ", ECT: %08x", FUNC2(tptr)));

            tptr = tptr + 4;

            FUNC3((ndo, ", BVID: %d, SPVID: %d",
                      (FUNC1(tptr) >> 12) & 0x000fff,
                      FUNC1(tptr) & 0x000fff));

            tptr = tptr + 3;
            len = len - ISIS_SUBTLV_SPB_INSTANCE_VLAN_TUPLE_LEN;
            stlv_len = stlv_len - ISIS_SUBTLV_SPB_INSTANCE_VLAN_TUPLE_LEN;
            tmp--;
          }

          break;

      case ISIS_SUBTLV_SPBM_SI:
          if (stlv_len < 8)
            goto trunc;

          FUNC3((ndo, "\n\t        BMAC: %08x", FUNC2(tptr)));
          tptr = tptr+4;
          FUNC3((ndo, "%04x", FUNC0(tptr)));
          tptr = tptr+2;

          FUNC3((ndo, ", RES: %d, VID: %d", FUNC0(tptr) >> 12,
                    (FUNC0(tptr)) & 0x0fff));

          tptr = tptr+2;
          len = len - 8;
          stlv_len = stlv_len - 8;

          while (stlv_len >= 4) {
            FUNC4(*tptr, 4);
            FUNC3((ndo, "\n\t        T: %d, R: %d, RES: %d, ISID: %d",
                    (FUNC2(tptr) >> 31),
                    (FUNC2(tptr) >> 30) & 0x01,
                    (FUNC2(tptr) >> 24) & 0x03f,
                    (FUNC2(tptr)) & 0x0ffffff));

            tptr = tptr + 4;
            len = len - 4;
            stlv_len = stlv_len - 4;
          }

        break;

      default:
        break;
    }
    tptr += stlv_len;
    len -= stlv_len;
  }
  return 0;

  trunc:
    FUNC3((ndo, "\n\t\t"));
    FUNC3((ndo, "%s", tstr));
    return(1);
}