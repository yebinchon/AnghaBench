
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_session {struct radius_session* nas_ip; struct radius_session* username; int last_reply; struct radius_session* last_from_addr; int last_msg; int eap; } ;
struct radius_server_data {int num_sess; } ;


 int eap_server_sm_deinit (int ) ;
 int eloop_cancel_timeout (int ,struct radius_server_data*,struct radius_session*) ;
 int os_free (struct radius_session*) ;
 int radius_msg_free (int ) ;
 int radius_server_session_remove_timeout ;
 int radius_server_session_timeout ;

__attribute__((used)) static void radius_server_session_free(struct radius_server_data *data,
           struct radius_session *sess)
{
 eloop_cancel_timeout(radius_server_session_timeout, data, sess);
 eloop_cancel_timeout(radius_server_session_remove_timeout, data, sess);
 eap_server_sm_deinit(sess->eap);
 radius_msg_free(sess->last_msg);
 os_free(sess->last_from_addr);
 radius_msg_free(sess->last_reply);
 os_free(sess->username);
 os_free(sess->nas_ip);
 os_free(sess);
 data->num_sess--;
}
