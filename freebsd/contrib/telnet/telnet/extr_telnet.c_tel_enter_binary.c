
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TELOPT_BINARY ;
 int send_do (int ,int) ;
 int send_will (int ,int) ;

void
tel_enter_binary(int rw)
{
    if (rw&1)
 send_do(TELOPT_BINARY, 1);
    if (rw&2)
 send_will(TELOPT_BINARY, 1);
}
