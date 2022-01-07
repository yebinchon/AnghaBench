
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int llt_ms; } ;
struct fst_session {int global_sessions_lentry; scalar_t__ id; TYPE_1__ data; int state; struct fst_group* group; } ;
struct fst_group {int dummy; } ;


 scalar_t__ FST_INVALID_SESSION_ID ;
 int FST_LLT_MS_DEFAULT ;
 int FST_SESSION_STATE_INITIAL ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int dl_list_add_tail (int *,int *) ;
 int foreach_fst_ctrl_call (int ,struct fst_session*) ;
 scalar_t__ fst_find_free_session_id () ;
 int fst_printf (int ,char*,...) ;
 int global_sessions_list ;
 int on_session_added ;
 struct fst_session* os_zalloc (int) ;

struct fst_session * fst_session_create(struct fst_group *g)
{
 struct fst_session *s;
 u32 id;

 id = fst_find_free_session_id();
 if (id == FST_INVALID_SESSION_ID) {
  fst_printf(MSG_ERROR, "Cannot assign new session ID");
  return ((void*)0);
 }

 s = os_zalloc(sizeof(*s));
 if (!s) {
  fst_printf(MSG_ERROR, "Cannot allocate new session object");
  return ((void*)0);
 }

 s->id = id;
 s->group = g;
 s->state = FST_SESSION_STATE_INITIAL;

 s->data.llt_ms = FST_LLT_MS_DEFAULT;

 fst_printf(MSG_INFO, "Session %u created", s->id);

 dl_list_add_tail(&global_sessions_list, &s->global_sessions_lentry);

 foreach_fst_ctrl_call(on_session_added, s);

 return s;
}
