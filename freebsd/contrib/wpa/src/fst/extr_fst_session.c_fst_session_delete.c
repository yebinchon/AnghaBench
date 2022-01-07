
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_session {int global_sessions_lentry; int id; } ;


 int MSG_INFO ;
 int dl_list_del (int *) ;
 int foreach_fst_ctrl_call (int ,struct fst_session*) ;
 int fst_printf (int ,char*,int ) ;
 int on_session_removed ;
 int os_free (struct fst_session*) ;

void fst_session_delete(struct fst_session *s)
{
 fst_printf(MSG_INFO, "Session %u deleted", s->id);
 dl_list_del(&s->global_sessions_lentry);
 foreach_fst_ctrl_call(on_session_removed, s);
 os_free(s);
}
