
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_rap {char* r_npbuf; int r_plen; } ;


 int EINVAL ;
 int memset (char*,long,char) ;
 int setdle (char*,int ,long) ;
 int setwle (char*,int ,long) ;

__attribute__((used)) static int
smb_rap_rqparam(struct smb_rap *rap, char ptype, char plen, long value)
{
 char *p = rap->r_npbuf;
 int len;

 switch (ptype) {
     case 'L':
     case 'W':
  setwle(p, 0, value);
  len = 2;
  break;
     case 'D':
  setdle(p, 0, value);
  len = 4;
  break;
     case 'b':
  memset(p, value, plen);
  len = plen;
     default:
  return EINVAL;
 }
 rap->r_npbuf += len;
 rap->r_plen += len;
 return 0;
}
