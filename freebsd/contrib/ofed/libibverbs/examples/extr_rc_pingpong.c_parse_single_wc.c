
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct ts_params {int last_comp_with_ts; scalar_t__ comp_recv_prev_time; int comp_with_time_iters; scalar_t__ comp_recv_total_time_delta; int comp_recv_min_time_delta; int comp_recv_max_time_delta; } ;
struct pingpong_context {int rx_depth; int pending; scalar_t__ completion_timestamp_mask; } ;
typedef enum ibv_wc_status { ____Placeholder_ibv_wc_status } ibv_wc_status ;


 int IBV_WC_SUCCESS ;
 int MAX (int ,scalar_t__) ;
 int MIN (int ,scalar_t__) ;


 int fprintf (int ,char*,...) ;
 char* ibv_wc_status_str (int) ;
 int pp_post_recv (struct pingpong_context*,int ) ;
 scalar_t__ pp_post_send (struct pingpong_context*) ;
 int stderr ;
 int use_ts ;

__attribute__((used)) static inline int parse_single_wc(struct pingpong_context *ctx, int *scnt,
      int *rcnt, int *routs, int iters,
      uint64_t wr_id, enum ibv_wc_status status,
      uint64_t completion_timestamp,
      struct ts_params *ts)
{
 if (status != IBV_WC_SUCCESS) {
  fprintf(stderr, "Failed status %s (%d) for wr_id %d\n",
   ibv_wc_status_str(status),
   status, (int)wr_id);
  return 1;
 }

 switch ((int)wr_id) {
 case 128:
  ++(*scnt);
  break;

 case 129:
  if (--(*routs) <= 1) {
   *routs += pp_post_recv(ctx, ctx->rx_depth - *routs);
   if (*routs < ctx->rx_depth) {
    fprintf(stderr,
     "Couldn't post receive (%d)\n",
     *routs);
    return 1;
   }
  }

  ++(*rcnt);
  if (use_ts) {
   if (ts->last_comp_with_ts) {
    uint64_t delta;


    if (completion_timestamp >= ts->comp_recv_prev_time)
     delta = completion_timestamp - ts->comp_recv_prev_time;
    else
     delta = ctx->completion_timestamp_mask - ts->comp_recv_prev_time +
      completion_timestamp + 1;

    ts->comp_recv_max_time_delta = MAX(ts->comp_recv_max_time_delta, delta);
    ts->comp_recv_min_time_delta = MIN(ts->comp_recv_min_time_delta, delta);
    ts->comp_recv_total_time_delta += delta;
    ts->comp_with_time_iters++;
   }

   ts->comp_recv_prev_time = completion_timestamp;
   ts->last_comp_with_ts = 1;
  } else {
   ts->last_comp_with_ts = 0;
  }

  break;

 default:
  fprintf(stderr, "Completion for unknown wr_id %d\n",
   (int)wr_id);
  return 1;
 }

 ctx->pending &= ~(int)wr_id;
 if (*scnt < iters && !ctx->pending) {
  if (pp_post_send(ctx)) {
   fprintf(stderr, "Couldn't post send\n");
   return 1;
  }
  ctx->pending = 129 |
   128;
 }

 return 0;
}
