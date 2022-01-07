
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_rap {char* r_nparam; void* r_rcvbuf; } ;


 int EINVAL ;
 int smb_rap_parserqparam (char*,char**,int*) ;

int
smb_rap_setPparam(struct smb_rap *rap, void *value)
{
 char *p = rap->r_nparam;
 char ptype = *p;
 int error, plen;

 error = smb_rap_parserqparam(p, &p, &plen);
 if (error)
  return error;
 switch (ptype) {
     case 'r':
  rap->r_rcvbuf = value;
  break;
     default:
  return EINVAL;
 }
 rap->r_nparam = p;
 return 0;
}
