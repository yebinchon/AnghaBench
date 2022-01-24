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
struct pcap_rdmasniff {int /*<<< orphan*/  oneshot_buffer; int /*<<< orphan*/  context; int /*<<< orphan*/  channel; int /*<<< orphan*/  pd; int /*<<< orphan*/  cq; int /*<<< orphan*/  qp; int /*<<< orphan*/  flow; int /*<<< orphan*/  mr; } ;
struct TYPE_4__ {struct pcap_rdmasniff* priv; } ;
typedef  TYPE_1__ pcap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC9(pcap_t *handle)
{
	struct pcap_rdmasniff *priv = handle->priv;

	FUNC3(priv->mr);
	FUNC6(priv->flow);
	FUNC7(priv->qp);
	FUNC5(priv->cq);
	FUNC2(priv->pd);
	FUNC4(priv->channel);
	FUNC1(priv->context);
	FUNC0(priv->oneshot_buffer);

	FUNC8(handle);
}