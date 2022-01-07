
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int htonl (int ) ;
 int ntohl (int) ;

int
main(void)
{
 return htonl(ntohl(0x3a7d0cdb)) != 0x3a7d0cdb;
}
