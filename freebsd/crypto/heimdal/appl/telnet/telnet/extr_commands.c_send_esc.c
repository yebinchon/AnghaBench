
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NETADD (int ) ;
 int escape ;

__attribute__((used)) static int
send_esc()
{
    NETADD(escape);
    return 1;
}
