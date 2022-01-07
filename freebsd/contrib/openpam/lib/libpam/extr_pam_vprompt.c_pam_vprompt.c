
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct pam_response {char* resp; } ;
struct pam_message {int msg_style; char* msg; } ;
struct pam_conv {int (* conv ) (int,struct pam_message const**,struct pam_response**,int ) ;int appdata_ptr; } ;
typedef int pam_handle_t ;


 int ENTER () ;
 int FREE (struct pam_response*) ;
 int PAM_CONV ;
 int PAM_LOG_ERROR ;
 int PAM_MAX_MSG_SIZE ;
 int PAM_SUCCESS ;
 int PAM_SYSTEM_ERR ;
 int RETURNC (int) ;
 int openpam_log (int ,char*) ;
 int pam_get_item (int const*,int ,void const**) ;
 int stub1 (int,struct pam_message const**,struct pam_response**,int ) ;
 int vsnprintf (char*,int,char const*,int ) ;

int
pam_vprompt(const pam_handle_t *pamh,
 int style,
 char **resp,
 const char *fmt,
 va_list ap)
{
 char msgbuf[PAM_MAX_MSG_SIZE];
 struct pam_message msg;
 const struct pam_message *msgp;
 struct pam_response *rsp;
 const struct pam_conv *conv;
 const void *convp;
 int r;

 ENTER();
 r = pam_get_item(pamh, PAM_CONV, &convp);
 if (r != PAM_SUCCESS)
  RETURNC(r);
 conv = convp;
 if (conv == ((void*)0) || conv->conv == ((void*)0)) {
  openpam_log(PAM_LOG_ERROR, "no conversation function");
  RETURNC(PAM_SYSTEM_ERR);
 }
 vsnprintf(msgbuf, PAM_MAX_MSG_SIZE, fmt, ap);
 msg.msg_style = style;
 msg.msg = msgbuf;
 msgp = &msg;
 rsp = ((void*)0);
 r = (conv->conv)(1, &msgp, &rsp, conv->appdata_ptr);
 *resp = rsp == ((void*)0) ? ((void*)0) : rsp->resp;
 FREE(rsp);
 RETURNC(r);
}
