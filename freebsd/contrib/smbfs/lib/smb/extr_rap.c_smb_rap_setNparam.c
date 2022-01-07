
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_rap {char* r_nparam; long r_rcvbuflen; } ;


 int EINVAL ;
 int smb_rap_parserqparam (char*,char**,int*) ;
 int smb_rap_rqparam (struct smb_rap*,char,int,long) ;

int
smb_rap_setNparam(struct smb_rap *rap, long value)
{
 char *p = rap->r_nparam;
 char ptype = *p;
 int error, plen;

 error = smb_rap_parserqparam(p, &p, &plen);
 if (error)
  return error;
 switch (ptype) {
     case 'L':
  rap->r_rcvbuflen = value;

     case 'W':
     case 'D':
     case 'b':
  error = smb_rap_rqparam(rap, ptype, plen, value);
  break;
     default:
  return EINVAL;
 }
 rap->r_nparam = p;
 return 0;
}
