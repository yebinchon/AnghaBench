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
struct device {int /*<<< orphan*/ * priv; } ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int pcap_pkt_debug ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3 (struct device *dev)
{
  BOOL okay = FUNC0();

  if (pcap_pkt_debug > 1)
     FUNC1 (stderr, "pkt_close(): %d\n", okay);

  if (dev->priv)
     FUNC2 (dev->priv);
  dev->priv = NULL;
}