
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int RDP_MEM_READ ;
 int send_rdp (char*,int ,int ,int,char*,int,int*,int*) ;

__attribute__((used)) static int
rdp_read (CORE_ADDR memaddr, char *buf, int len)
{
  int res;
  int val;
  send_rdp ("bww-S-P-V",
     RDP_MEM_READ, memaddr, len,
     buf, len,
     &res, &val);
  if (res)
    {
      return val;
    }
  return len;
}
