
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsg_t ;
typedef int SCR ;
 int abort () ;
 char const* msg_cat (int *,char*,size_t*) ;

const char *
msg_cmsg(
 SCR *sp,
 cmsg_t which,
 size_t *lenp)
{
 switch (which) {
 case 133:
  return (msg_cat(sp, "268|confirm? [ynq]", lenp));
 case 132:
  return (msg_cat(sp, "269|Press any key to continue: ", lenp));
 case 131:
  return (msg_cat(sp,
     "270|Press any key to continue [: to enter more ex commands]: ",
      lenp));
 case 129:
  return (msg_cat(sp, "161|Press Enter to continue: ", lenp));
 case 128:
  return (msg_cat(sp, "275| cont?", lenp));
 case 130:
  return (msg_cat(sp,
      "271|Press any key to continue [q to quit]: ", lenp));
 default:
  abort();
 }

}
