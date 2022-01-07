
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct cpsw_queue {int longest_chain; int queue_restart; int queue_removes; int queue_adds; int max_avail_queue_len; int avail_queue_len; int max_active_queue_len; int active_queue_len; int queue_slots; } ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;

__attribute__((used)) static void
cpsw_add_queue_sysctls(struct sysctl_ctx_list *ctx, struct sysctl_oid *node,
 struct cpsw_queue *queue)
{
 struct sysctl_oid_list *parent;

 parent = SYSCTL_CHILDREN(node);
 SYSCTL_ADD_INT(ctx, parent, OID_AUTO, "totalBuffers",
     CTLFLAG_RD, &queue->queue_slots, 0,
     "Total buffers currently assigned to this queue");
 SYSCTL_ADD_INT(ctx, parent, OID_AUTO, "activeBuffers",
     CTLFLAG_RD, &queue->active_queue_len, 0,
     "Buffers currently registered with hardware controller");
 SYSCTL_ADD_INT(ctx, parent, OID_AUTO, "maxActiveBuffers",
     CTLFLAG_RD, &queue->max_active_queue_len, 0,
     "Max value of activeBuffers since last driver reset");
 SYSCTL_ADD_INT(ctx, parent, OID_AUTO, "availBuffers",
     CTLFLAG_RD, &queue->avail_queue_len, 0,
     "Buffers allocated to this queue but not currently "
     "registered with hardware controller");
 SYSCTL_ADD_INT(ctx, parent, OID_AUTO, "maxAvailBuffers",
     CTLFLAG_RD, &queue->max_avail_queue_len, 0,
     "Max value of availBuffers since last driver reset");
 SYSCTL_ADD_UINT(ctx, parent, OID_AUTO, "totalEnqueued",
     CTLFLAG_RD, &queue->queue_adds, 0,
     "Total buffers added to queue");
 SYSCTL_ADD_UINT(ctx, parent, OID_AUTO, "totalDequeued",
     CTLFLAG_RD, &queue->queue_removes, 0,
     "Total buffers removed from queue");
 SYSCTL_ADD_UINT(ctx, parent, OID_AUTO, "queueRestart",
     CTLFLAG_RD, &queue->queue_restart, 0,
     "Total times the queue has been restarted");
 SYSCTL_ADD_UINT(ctx, parent, OID_AUTO, "longestChain",
     CTLFLAG_RD, &queue->longest_chain, 0,
     "Max buffers used for a single packet");
}
