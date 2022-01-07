
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int env_opt_add (unsigned char*) ;
 int env_opt_end (int) ;
 int env_opt_start () ;

void
env_opt(unsigned char *buf, int len)
{
 unsigned char *ep = 0, *epc = 0;
 int i;

 switch(buf[0]&0xff) {
 case 128:
  env_opt_start();
  if (len == 1) {
   env_opt_add(((void*)0));
  } else for (i = 1; i < len; i++) {
   switch (buf[i]&0xff) {
   case 133:

   case 134:
    if (ep) {
     *epc = 0;
     env_opt_add(ep);
    }
    ep = epc = &buf[i+1];
    break;
   case 135:
    i++;

   default:
    if (epc)
     *epc++ = buf[i];
    break;
   }
  }
  if (ep) {
   *epc = 0;
   env_opt_add(ep);
  }
  env_opt_end(1);
  break;

 case 129:
 case 130:

  break;

 default:
  break;
 }
}
