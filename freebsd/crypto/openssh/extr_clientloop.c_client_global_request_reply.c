
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ssh {int dummy; } ;
struct global_confirm {scalar_t__ ref_count; int ctx; int (* cb ) (struct ssh*,int,int ,int ) ;} ;


 struct global_confirm* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct global_confirm*,int ) ;
 int entry ;
 int explicit_bzero (struct global_confirm*,int) ;
 int free (struct global_confirm*) ;
 int global_confirms ;
 int packet_set_alive_timeouts (int ) ;
 int stub1 (struct ssh*,int,int ,int ) ;

__attribute__((used)) static int
client_global_request_reply(int type, u_int32_t seq, struct ssh *ssh)
{
 struct global_confirm *gc;

 if ((gc = TAILQ_FIRST(&global_confirms)) == ((void*)0))
  return 0;
 if (gc->cb != ((void*)0))
  gc->cb(ssh, type, seq, gc->ctx);
 if (--gc->ref_count <= 0) {
  TAILQ_REMOVE(&global_confirms, gc, entry);
  explicit_bzero(gc, sizeof(*gc));
  free(gc);
 }

 packet_set_alive_timeouts(0);
 return 0;
}
