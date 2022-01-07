
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_session {int sess_id; } ;
struct radius_server_data {int dummy; } ;


 int RADIUS_DEBUG (char*,int ) ;
 int radius_server_session_remove (struct radius_server_data*,struct radius_session*) ;

__attribute__((used)) static void radius_server_session_remove_timeout(void *eloop_ctx,
       void *timeout_ctx)
{
 struct radius_server_data *data = eloop_ctx;
 struct radius_session *sess = timeout_ctx;
 RADIUS_DEBUG("Removing completed session 0x%x", sess->sess_id);
 radius_server_session_remove(data, sess);
}
