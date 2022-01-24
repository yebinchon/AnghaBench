#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
typedef  size_t u_short ;
typedef  int u_int ;
typedef  scalar_t__ u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;
struct TYPE_2__ {int siz_subtypes; char** subtypes; int first_subtype; } ;

/* Variables and functions */
#define  ACCT_DELAY 137 
#define  ACCT_INT_INTERVAL 136 
#define  ACCT_SESSION_TIME 135 
#define  EGRESS_VLAN_ID 134 
 size_t FUNC0 (scalar_t__ const*) ; 
 int FUNC1 (scalar_t__ const*) ; 
#define  FRM_ATALK_LINK 133 
#define  FRM_ATALK_NETWORK 132 
#define  FRM_IPX 131 
#define  IDLE_TIMEOUT 130 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__ const,int) ; 
#define  SESSION_TIMEOUT 129 
 size_t TUNNEL_MEDIUM ; 
#define  TUNNEL_PREFERENCE 128 
 size_t TUNNEL_TYPE ; 
 TYPE_1__* attr_type ; 
 int /*<<< orphan*/  rfc4675_tagged ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__ const) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo,
               register const u_char *data, u_int length, u_short attr_code)
{
   uint32_t timeout;

   if (length != 4)
   {
       FUNC2((ndo, "ERROR: length %u != 4", length));
       return;
   }

   FUNC3(data[0],4);
                          /* This attribute has standard values */
   if (attr_type[attr_code].siz_subtypes)
   {
      static const char **table;
      uint32_t data_value;
      table = attr_type[attr_code].subtypes;

      if ( (attr_code == TUNNEL_TYPE) || (attr_code == TUNNEL_MEDIUM) )
      {
         if (!*data)
            FUNC2((ndo, "Tag[Unused] "));
         else
            FUNC2((ndo, "Tag[%d] ", *data));
         data++;
         data_value = FUNC0(data);
      }
      else
      {
         data_value = FUNC1(data);
      }
      if ( data_value <= (uint32_t)(attr_type[attr_code].siz_subtypes - 1 +
            attr_type[attr_code].first_subtype) &&
	   data_value >= attr_type[attr_code].first_subtype )
         FUNC2((ndo, "%s", table[data_value]));
      else
         FUNC2((ndo, "#%u", data_value));
   }
   else
   {
      switch(attr_code) /* Be aware of special cases... */
      {
        case FRM_IPX:
             if (FUNC1( data) == 0xFFFFFFFE )
                FUNC2((ndo, "NAS Select"));
             else
                FUNC2((ndo, "%d", FUNC1(data)));
          break;

        case SESSION_TIMEOUT:
        case IDLE_TIMEOUT:
        case ACCT_DELAY:
        case ACCT_SESSION_TIME:
        case ACCT_INT_INTERVAL:
             timeout = FUNC1( data);
             if ( timeout < 60 )
                FUNC2((ndo,  "%02d secs", timeout));
             else
             {
                if ( timeout < 3600 )
                   FUNC2((ndo,  "%02d:%02d min",
                          timeout / 60, timeout % 60));
                else
                   FUNC2((ndo, "%02d:%02d:%02d hours",
                          timeout / 3600, (timeout % 3600) / 60,
                          timeout % 60));
             }
          break;

        case FRM_ATALK_LINK:
             if (FUNC1(data) )
                FUNC2((ndo, "%d", FUNC1(data)));
             else
                FUNC2((ndo, "Unnumbered"));
          break;

        case FRM_ATALK_NETWORK:
             if (FUNC1(data) )
                FUNC2((ndo, "%d", FUNC1(data)));
             else
                FUNC2((ndo, "NAS assigned"));
          break;

        case TUNNEL_PREFERENCE:
            if (*data)
               FUNC2((ndo, "Tag[%d] ", *data));
            else
               FUNC2((ndo, "Tag[Unused] "));
            data++;
            FUNC2((ndo, "%d", FUNC0(data)));
          break;

        case EGRESS_VLAN_ID:
            FUNC2((ndo, "%s (0x%02x) ",
                   FUNC4(rfc4675_tagged,"Unknown tag",*data),
                   *data));
            data++;
            FUNC2((ndo, "%d", FUNC0(data)));
          break;

        default:
             FUNC2((ndo, "%d", FUNC1(data)));
          break;

      } /* switch */

   } /* if-else */

   return;

   trunc:
     FUNC2((ndo, "%s", tstr));
}