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
typedef  int u_short ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
#define  FRM_IPADDR 129 
#define  LOG_IPHOST 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC4(netdissect_options *ndo,
                   register const u_char *data, u_int length, u_short attr_code)
{
   if (length != 4)
   {
       FUNC1((ndo, "ERROR: length %u != 4", length));
       return;
   }

   FUNC2(data[0],4);

   switch(attr_code)
   {
      case FRM_IPADDR:
      case LOG_IPHOST:
           if (FUNC0(data) == 0xFFFFFFFF )
              FUNC1((ndo, "User Selected"));
           else
              if (FUNC0(data) == 0xFFFFFFFE )
                 FUNC1((ndo, "NAS Select"));
              else
                 FUNC1((ndo, "%s",FUNC3(ndo, data)));
      break;

      default:
          FUNC1((ndo, "%s", FUNC3(ndo, data)));
      break;
   }

   return;

   trunc:
     FUNC1((ndo, "%s", tstr));
}