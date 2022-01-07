
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IAC ;
 int OPT_REPLY_SIZE ;
 int SB ;
 int TELQUAL_IS ;
 scalar_t__ malloc (int) ;
 unsigned char* opt_reply ;
 unsigned char* opt_replyend ;
 unsigned char* opt_replyp ;
 int printf (char*) ;
 scalar_t__ realloc (unsigned char*,int) ;
 int telopt_environ ;

void
env_opt_start(void)
{
 if (opt_reply)
  opt_reply = (unsigned char *)realloc(opt_reply, OPT_REPLY_SIZE);
 else
  opt_reply = (unsigned char *)malloc(OPT_REPLY_SIZE);
 if (opt_reply == ((void*)0)) {
       printf("env_opt_start: malloc()/realloc() failed!!!\n");
  opt_reply = opt_replyp = opt_replyend = ((void*)0);
  return;
 }
 opt_replyp = opt_reply;
 opt_replyend = opt_reply + OPT_REPLY_SIZE;
 *opt_replyp++ = IAC;
 *opt_replyp++ = SB;
 *opt_replyp++ = telopt_environ;
 *opt_replyp++ = TELQUAL_IS;
}
