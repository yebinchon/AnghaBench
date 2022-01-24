#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct cma_id_private {int /*<<< orphan*/  id; int /*<<< orphan*/  responder_resources; int /*<<< orphan*/  initiator_depth; int /*<<< orphan*/  handle; } ;
struct TYPE_8__ {int /*<<< orphan*/  responder_resources; int /*<<< orphan*/  initiator_depth; } ;
struct TYPE_9__ {TYPE_2__ conn; } ;
struct TYPE_10__ {TYPE_3__ param; int /*<<< orphan*/ * id; TYPE_1__* listen_id; } ;
struct cma_event {TYPE_5__* id_priv; TYPE_4__ event; } ;
struct TYPE_12__ {int /*<<< orphan*/  fd; } ;
struct TYPE_7__ {TYPE_6__* channel; int /*<<< orphan*/  qp_type; int /*<<< orphan*/  ps; int /*<<< orphan*/  context; } ;
struct TYPE_11__ {scalar_t__ sync; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct cma_id_private* FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cma_id_private*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct cma_event *evt,
				 uint32_t handle)
{
	struct cma_id_private *id_priv;
	int ret;

	id_priv = FUNC3(evt->id_priv->id.channel,
				evt->id_priv->id.context, evt->id_priv->id.ps,
				evt->id_priv->id.qp_type);
	if (!id_priv) {
		FUNC5(evt->id_priv->id.channel->fd, handle);
		ret = FUNC0(ENOMEM);
		goto err1;
	}

	evt->event.listen_id = &evt->id_priv->id;
	evt->event.id = &id_priv->id;
	id_priv->handle = handle;
	FUNC6(id_priv);
	id_priv->initiator_depth = evt->event.param.conn.initiator_depth;
	id_priv->responder_resources = evt->event.param.conn.responder_resources;

	if (evt->id_priv->sync) {
		ret = FUNC2(&id_priv->id, NULL);
		if (ret)
			goto err2;
	}

	ret = FUNC7(&id_priv->id);
	if (ret)
		goto err2;

	return 0;

err2:
	FUNC1(&id_priv->id);
err1:
	FUNC4(evt->id_priv);
	return ret;
}