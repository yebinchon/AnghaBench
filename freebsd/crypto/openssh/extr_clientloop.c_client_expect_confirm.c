
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;
struct channel_reply_ctx {char const* request_type; int action; } ;
typedef enum confirm_action { ____Placeholder_confirm_action } confirm_action ;


 int channel_register_status_confirm (struct ssh*,int,int ,int ,struct channel_reply_ctx*) ;
 int client_abandon_status_confirm ;
 int client_status_confirm ;
 struct channel_reply_ctx* xcalloc (int,int) ;

void
client_expect_confirm(struct ssh *ssh, int id, const char *request,
    enum confirm_action action)
{
 struct channel_reply_ctx *cr = xcalloc(1, sizeof(*cr));

 cr->request_type = request;
 cr->action = action;

 channel_register_status_confirm(ssh, id, client_status_confirm,
     client_abandon_status_confirm, cr);
}
