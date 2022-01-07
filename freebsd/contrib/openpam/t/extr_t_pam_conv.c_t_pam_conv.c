
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct t_pam_conv_script {int nmsg; int * comment; TYPE_2__* resps; TYPE_1__* msgs; } ;
struct pam_response {struct pam_response* resp; int resp_retcode; } ;
struct pam_message {int msg_style; int msg; } ;
struct TYPE_4__ {int resp_retcode; int * resp; } ;
struct TYPE_3__ {int msg_style; int msg; } ;


 int ENOMEM ;
 int PAM_CONV_ERR ;

 int PAM_MAX_NUM_MSG ;


 int PAM_SUCCESS ;

 int asprintf (int **,char*,int,...) ;
 struct pam_response* calloc (int,int) ;
 int free (struct pam_response*) ;
 scalar_t__ strcmp (int ,int ) ;
 struct pam_response* strdup (int *) ;
 int strerror (int ) ;
 int t_printv (char*,int ) ;

int
t_pam_conv(int nm, const struct pam_message **msgs,
    struct pam_response **respsp, void *ad)
{
 struct t_pam_conv_script *s = ad;
 struct pam_response *resps;
 int i;


 if (nm != s->nmsg) {
  asprintf(&s->comment, "expected %d messages, got %d",
      s->nmsg, nm);
  return (PAM_CONV_ERR);
 }
 if (nm <= 0 || nm > PAM_MAX_NUM_MSG) {

  s->comment = ((void*)0);
  return (PAM_CONV_ERR);
 }


 if ((resps = calloc(nm, sizeof *resps)) == ((void*)0))
  goto enomem;
 for (i = 0; i < nm; ++i) {
  if (msgs[i]->msg_style != s->msgs[i].msg_style) {
   asprintf(&s->comment,
       "message %d expected style %d got %d", i,
       s->msgs[i].msg_style, msgs[i]->msg_style);
   goto fail;
  }
  if (strcmp(msgs[i]->msg, s->msgs[i].msg) != 0) {
   asprintf(&s->comment,
       "message %d expected \"%s\" got \"%s\"", i,
       s->msgs[i].msg, msgs[i]->msg);
   goto fail;
  }
  switch (msgs[i]->msg_style) {
  case 130:
   t_printv("[PAM_PROMPT_ECHO_OFF] %s\n", msgs[i]->msg);
   break;
  case 129:
   t_printv("[PAM_PROMPT_ECHO_ON] %s\n", msgs[i]->msg);
   break;
  case 131:
   t_printv("[PAM_ERROR_MSG] %s\n", msgs[i]->msg);
   break;
  case 128:
   t_printv("[PAM_TEXT_INFO] %s\n", msgs[i]->msg);
   break;
  default:
   asprintf(&s->comment, "invalid message style %d",
       msgs[i]->msg_style);
   goto fail;
  }

  if (s->resps[i].resp != ((void*)0) &&
      (resps[i].resp = strdup(s->resps[i].resp)) == ((void*)0))
   goto enomem;
  resps[i].resp_retcode = s->resps[i].resp_retcode;
 }
 s->comment = ((void*)0);
 *respsp = resps;
 return (PAM_SUCCESS);
enomem:
 asprintf(&s->comment, "%s", strerror(ENOMEM));
fail:
 for (i = 0; i < nm; ++i)
  free(resps[i].resp);
 free(resps);
 return (PAM_CONV_ERR);
}
