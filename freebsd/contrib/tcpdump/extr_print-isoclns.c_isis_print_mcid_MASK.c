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
struct isis_spb_mcid {int /*<<< orphan*/ * digest; int /*<<< orphan*/  revision_lvl; int /*<<< orphan*/  name; int /*<<< orphan*/  format_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  ndo_snapend; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct isis_spb_mcid const) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC4(netdissect_options *ndo,
                const struct isis_spb_mcid *mcid)
{
  int i;

  FUNC2(*mcid);
  FUNC1((ndo,  "ID: %d, Name: ", mcid->format_id));

  if (FUNC3(ndo, mcid->name, 32, ndo->ndo_snapend))
    goto trunc;

  FUNC1((ndo, "\n\t              Lvl: %d", FUNC0(mcid->revision_lvl)));

  FUNC1((ndo,  ", Digest: "));

  for(i=0;i<16;i++)
    FUNC1((ndo, "%.2x ", mcid->digest[i]));

trunc:
  FUNC1((ndo, "%s", tstr));
}