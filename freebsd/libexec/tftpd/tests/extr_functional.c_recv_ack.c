
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int RECV (char*,int *,int ) ;

__attribute__((used)) static void
recv_ack(uint16_t blocknum)
{
 char hdr[] = {0, 4, blocknum >> 8, blocknum & 0xFF};
 RECV(hdr, ((void*)0), 0);
}
