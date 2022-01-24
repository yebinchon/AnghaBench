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
#define  ARAP_CHALLENGE_RESP 130 
#define  ARAP_FEATURES 129 
#define  ARAP_PASS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC3(netdissect_options *ndo,
                   register const u_char *data, u_int length, u_short attr_code)
{
   u_short len_data;

   switch(attr_code)
   {
      case ARAP_PASS:
           if (length != 16)
           {
               FUNC0((ndo, "ERROR: length %u != 16", length));
               return;
           }
           FUNC0((ndo, "User_challenge ("));
           FUNC1(data[0],8);
           len_data = 8;
           FUNC2(len_data, data);
           FUNC0((ndo, ") User_resp("));
           FUNC1(data[0],8);
           len_data = 8;
           FUNC2(len_data, data);
           FUNC0((ndo, ")"));
        break;

      case ARAP_FEATURES:
           if (length != 14)
           {
               FUNC0((ndo, "ERROR: length %u != 14", length));
               return;
           }
           FUNC1(data[0],1);
           if (*data)
              FUNC0((ndo, "User can change password"));
           else
              FUNC0((ndo, "User cannot change password"));
           data++;
           FUNC1(data[0],1);
           FUNC0((ndo, ", Min password length: %d", *data));
           data++;
           FUNC0((ndo, ", created at: "));
           FUNC1(data[0],4);
           len_data = 4;
           FUNC2(len_data, data);
           FUNC0((ndo, ", expires in: "));
           FUNC1(data[0],4);
           len_data = 4;
           FUNC2(len_data, data);
           FUNC0((ndo, ", Current Time: "));
           FUNC1(data[0],4);
           len_data = 4;
           FUNC2(len_data, data);
        break;

      case ARAP_CHALLENGE_RESP:
           if (length < 8)
           {
               FUNC0((ndo, "ERROR: length %u != 8", length));
               return;
           }
           FUNC1(data[0],8);
           len_data = 8;
           FUNC2(len_data, data);
        break;
   }
   return;

   trunc:
     FUNC0((ndo, "%s", tstr));
}