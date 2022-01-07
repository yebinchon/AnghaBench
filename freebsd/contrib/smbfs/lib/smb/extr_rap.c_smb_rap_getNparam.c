
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct smb_rap {char* r_nparam; int r_npbuf; } ;


 int EINVAL ;
 long le16toh (int ) ;
 int smb_rap_parserpparam (char*,char**,int*) ;

__attribute__((used)) static int
smb_rap_getNparam(struct smb_rap *rap, long *value)
{
 char *p = rap->r_nparam;
 char ptype = *p;
 int error, plen;

 error = smb_rap_parserpparam(p, &p, &plen);
 if (error)
  return error;
 switch (ptype) {
     case 'h':
  *value = le16toh(*(u_int16_t*)rap->r_npbuf);
  break;
     default:
  return EINVAL;
 }
 rap->r_npbuf += plen;
 rap->r_nparam = p;
 return 0;
}
