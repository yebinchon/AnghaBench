
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int bpf_u_int32 ;


 int AREAMASK ;
 int AREASHIFT ;
 int NODEMASK ;
 int sscanf (char const*,char*,int*,int*) ;

int
__pcap_atodn(const char *s, bpf_u_int32 *addr)
{




 u_int node, area;

 if (sscanf(s, "%d.%d", &area, &node) != 2)
  return(0);

 *addr = (area << 10) & 0176000;
 *addr |= (node & 01777);

 return(32);
}
