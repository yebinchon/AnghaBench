
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int be32toh (int) ;
 int htobe32 (int ) ;

int
main(void)
{
 return htobe32(be32toh(0x3a7d0cdb)) != 0x3a7d0cdb;
}
