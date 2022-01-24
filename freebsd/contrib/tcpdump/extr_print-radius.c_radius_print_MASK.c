#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct radius_hdr {int /*<<< orphan*/ * auth; int /*<<< orphan*/  id; int /*<<< orphan*/  code; int /*<<< orphan*/  len; } ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MIN_RADIUS_LEN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  radius_command_values ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC5(netdissect_options *ndo,
             const u_char *dat, u_int length)
{
   register const struct radius_hdr *rad;
   u_int len, auth_idx;

   FUNC2(*dat, MIN_RADIUS_LEN);
   rad = (const struct radius_hdr *)dat;
   len = FUNC0(&rad->len);

   if (len < MIN_RADIUS_LEN)
   {
	  FUNC1((ndo, "%s", tstr));
	  return;
   }

   if (len > length)
	  len = length;

   if (ndo->ndo_vflag < 1) {
       FUNC1((ndo, "RADIUS, %s (%u), id: 0x%02x length: %u",
              FUNC4(radius_command_values,"Unknown Command",rad->code),
              rad->code,
              rad->id,
              len));
       return;
   }
   else {
       FUNC1((ndo, "RADIUS, length: %u\n\t%s (%u), id: 0x%02x, Authenticator: ",
              len,
              FUNC4(radius_command_values,"Unknown Command",rad->code),
              rad->code,
              rad->id));

       for(auth_idx=0; auth_idx < 16; auth_idx++)
            FUNC1((ndo, "%02x", rad->auth[auth_idx]));
   }

   if (len > MIN_RADIUS_LEN)
      FUNC3(ndo, dat + MIN_RADIUS_LEN, len - MIN_RADIUS_LEN);
   return;

trunc:
   FUNC1((ndo, "%s", tstr));
}