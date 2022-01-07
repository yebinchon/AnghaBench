
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_session {int dummy; } ;


 int srv_log (struct radius_session*,char*,char const*) ;

__attribute__((used)) static void radius_server_log_msg(void *ctx, const char *msg)
{
 struct radius_session *sess = ctx;
 srv_log(sess, "EAP: %s", msg);
}
