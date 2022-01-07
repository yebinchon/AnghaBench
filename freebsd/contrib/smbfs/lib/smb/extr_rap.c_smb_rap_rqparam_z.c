
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_rap {int r_npbuf; int r_plen; } ;


 int bcopy (char const*,int,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int
smb_rap_rqparam_z(struct smb_rap *rap, const char *value)
{
 int len = strlen(value) + 1;

 bcopy(value, rap->r_npbuf, len);
 rap->r_npbuf += len;
 rap->r_plen += len;
 return 0;
}
