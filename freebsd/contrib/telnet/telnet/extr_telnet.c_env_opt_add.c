
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPT_REPLY_SIZE ;
 scalar_t__ TELOPT_OLD_ENVIRON ;
 unsigned char* env_default (int,int) ;
 unsigned char* env_getvalue (unsigned char*) ;
 int old_env_value ;
 int old_env_var ;
 unsigned char* opt_reply ;
 unsigned char* opt_replyend ;
 unsigned char* opt_replyp ;
 scalar_t__ opt_welldefined (unsigned char*) ;
 int printf (char*) ;
 scalar_t__ realloc (unsigned char*,int) ;
 int strlen (char*) ;
 scalar_t__ telopt_environ ;

void
env_opt_add(unsigned char *ep)
{
 unsigned char *vp, c;

 if (opt_reply == ((void*)0))
  return;

 if (ep == ((void*)0) || *ep == '\0') {

  env_default(1, 0);
  while ((ep = env_default(0, 0)))
   env_opt_add(ep);


  env_default(1, 1);
  while ((ep = env_default(0, 1)))
   env_opt_add(ep);
  return;
 }
 vp = env_getvalue(ep);
        if (opt_replyp + (vp ? 2 * strlen((char *)vp) : 0) +
                                2 * strlen((char *)ep) + 6 > opt_replyend)
        {
  int len;
  opt_replyend += OPT_REPLY_SIZE;
  len = opt_replyend - opt_reply;
  opt_reply = (unsigned char *)realloc(opt_reply, len);
  if (opt_reply == ((void*)0)) {
        printf("env_opt_add: realloc() failed!!!\n");
   opt_reply = opt_replyp = opt_replyend = ((void*)0);
   return;
  }
  opt_replyp = opt_reply + len - (opt_replyend - opt_replyp);
  opt_replyend = opt_reply + len;
 }
 if (opt_welldefined(ep))





   *opt_replyp++ = 128;
 else
  *opt_replyp++ = 131;
 for (;;) {
  while ((c = *ep++)) {
   if (opt_replyp + (2 + 2) > opt_replyend)
    return;
   switch(c&0xff) {
   case 130:
    *opt_replyp++ = 130;
    break;
   case 128:
   case 129:
   case 132:
   case 131:
    *opt_replyp++ = 132;
    break;
   }
   *opt_replyp++ = c;
  }
  if ((ep = vp)) {
   if (opt_replyp + (1 + 2 + 2) > opt_replyend)
    return;





    *opt_replyp++ = 129;
   vp = ((void*)0);
  } else
   break;
 }
}
