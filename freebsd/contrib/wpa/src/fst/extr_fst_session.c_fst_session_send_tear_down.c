
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int td ;
struct fst_tear_down {int fsts_id; int action; } ;
struct TYPE_2__ {int fsts_id; int * new_iface; int * old_iface; } ;
struct fst_session {TYPE_1__ data; } ;


 int FST_ACTION_TEAR_DOWN ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int TRUE ;
 int WPA_ASSERT (int ) ;
 int fst_printf_session (struct fst_session*,int ,char*) ;
 int fst_printf_sframe (struct fst_session*,int ,int ,char*) ;
 int fst_session_is_in_progress (struct fst_session*) ;
 int fst_session_send_action (struct fst_session*,int ,struct fst_tear_down*,int,int *) ;
 int host_to_le32 (int ) ;
 int os_memset (struct fst_tear_down*,int ,int) ;

__attribute__((used)) static int fst_session_send_tear_down(struct fst_session *s)
{
 struct fst_tear_down td;
 int res;

 if (!fst_session_is_in_progress(s)) {
  fst_printf_session(s, MSG_ERROR, "No FST setup to tear down");
  return -1;
 }

 WPA_ASSERT(s->data.old_iface != ((void*)0));
 WPA_ASSERT(s->data.new_iface != ((void*)0));

 os_memset(&td, 0, sizeof(td));

 td.action = FST_ACTION_TEAR_DOWN;
 td.fsts_id = host_to_le32(s->data.fsts_id);

 res = fst_session_send_action(s, TRUE, &td, sizeof(td), ((void*)0));
 if (!res)
  fst_printf_sframe(s, TRUE, MSG_INFO, "FST TearDown sent");
 else
  fst_printf_sframe(s, TRUE, MSG_ERROR,
      "failed to send FST TearDown");

 return res;
}
