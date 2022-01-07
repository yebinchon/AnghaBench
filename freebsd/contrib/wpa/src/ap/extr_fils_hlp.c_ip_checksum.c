
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int be16 ;


 int htons (int) ;
 scalar_t__ ntohs (int const) ;

__attribute__((used)) static be16 ip_checksum(const void *buf, size_t len)
{
 u32 sum = 0;
 const u16 *pos;

 for (pos = buf; len >= 2; len -= 2)
  sum += ntohs(*pos++);
 if (len)
  sum += ntohs(*pos << 8);

 sum = (sum >> 16) + (sum & 0xffff);
 sum += sum >> 16;
 return htons(~sum);
}
