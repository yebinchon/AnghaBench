
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TELOPT_BINARY ;
 int send_dont (int ,int) ;
 int send_wont (int ,int) ;

void
tel_leave_binary(int rw)
{
    if (rw&1)
 send_dont(TELOPT_BINARY, 1);
    if (rw&2)
 send_wont(TELOPT_BINARY, 1);
}
