
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RDP_CPU_READWRITE_MODE_CURRENT ;
 int RDP_CPU_WRITE ;
 int extract_unsigned_integer (char*,int) ;
 int send_rdp (char*,int ,int ,int,int) ;

__attribute__((used)) static void
rdp_store_one_register (int mask, char *buf)
{
  int val = extract_unsigned_integer (buf, 4);

  send_rdp ("bbww-SZ",
     RDP_CPU_WRITE, RDP_CPU_READWRITE_MODE_CURRENT, mask, val);
}
