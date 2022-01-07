
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIB_BUFLENGTH ;
 int LIB_GETBUF (char*) ;
 int snprintf (char*,int ,char*,int) ;

const char *
amtoa(
 int am
 )
{
 char *bp;

 switch(am) {
     case 135: return "AM_ERR";
     case 130: return "AM_NOMATCH";
     case 128: return "AM_PROCPKT";
     case 136: return "AM_BCST";
     case 134: return "AM_FXMIT";
     case 133: return "AM_MANYCAST";
     case 131: return "AM_NEWPASS";
     case 132: return "AM_NEWBCL";
     case 129: return "AM_POSSBCL";
     default:
  LIB_GETBUF(bp);
  snprintf(bp, LIB_BUFLENGTH, "AM_#%d", am);
  return bp;
 }
}
