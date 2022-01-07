
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hardware {int hlen; int htype; struct ether_header* haddr; } ;
struct ether_header {unsigned char* ether_shost; } ;
typedef int ssize_t ;
typedef int eh ;


 int ARPHRD_ETHER ;
 int ETHER_HEADER_SIZE ;
 int memcpy (struct ether_header*,unsigned char*,int) ;

ssize_t
decode_hw_header(unsigned char *buf, int bufix, struct hardware *from)
{
 struct ether_header eh;

 memcpy(&eh, buf + bufix, ETHER_HEADER_SIZE);

 memcpy(from->haddr, eh.ether_shost, sizeof(eh.ether_shost));
 from->htype = ARPHRD_ETHER;
 from->hlen = sizeof(eh.ether_shost);

 return (sizeof(eh));
}
