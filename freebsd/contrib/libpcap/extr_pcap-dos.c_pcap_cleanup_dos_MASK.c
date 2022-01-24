#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ ps_drop; } ;
struct pcap_dos {TYPE_1__ stat; } ;
struct TYPE_6__ {int fd; struct pcap_dos* priv; } ;
typedef  TYPE_2__ pcap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  exc_occured ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ ** handle_to_device ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ ref_count ; 

__attribute__((used)) static void FUNC3 (pcap_t *p)
{
  struct pcap_dos *pd;

  if (!exc_occured)
  {
    pd = p->priv;
    if (FUNC2(p,NULL) < 0)
       pd->stat.ps_drop = 0;
    if (!FUNC1(p->fd))
       return;

    handle_to_device [p->fd-1] = NULL;
    p->fd = 0;
    if (ref_count > 0)
        ref_count--;
    if (ref_count > 0)
       return;
  }
  FUNC0();
  /* XXX - call pcap_cleanup_live_common? */
}