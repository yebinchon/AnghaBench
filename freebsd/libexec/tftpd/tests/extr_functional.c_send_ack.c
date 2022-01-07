
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int packet ;


 int send_bytes (char*,int) ;

__attribute__((used)) static void
send_ack(uint16_t blocknum)
{
 char packet[] = {
     0, 4,
     blocknum >> 8,
     blocknum & 0xFF
 };

 send_bytes(packet, sizeof(packet));

}
