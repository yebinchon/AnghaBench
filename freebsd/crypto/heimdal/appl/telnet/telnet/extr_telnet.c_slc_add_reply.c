
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cc_t ;


 void* IAC ;
 int * slc_reply_eom ;
 int * slc_replyp ;

void
slc_add_reply(unsigned char func, unsigned char flags, cc_t value)
{






 if (&slc_replyp[6+2] > slc_reply_eom)
  return;
 if ((*slc_replyp++ = func) == IAC)
  *slc_replyp++ = IAC;
 if ((*slc_replyp++ = flags) == IAC)
  *slc_replyp++ = IAC;
 if ((*slc_replyp++ = (unsigned char)value) == IAC)
  *slc_replyp++ = IAC;
}
