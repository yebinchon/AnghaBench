
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct recvbuf {int dummy; } ;


 int FALSE ;
 int TRUE ;
 int ctl_flushpkt (int ) ;
 int restrictlist4 ;
 int restrictlist6 ;
 int send_restrict_list (int ,int ,scalar_t__*) ;

__attribute__((used)) static void
read_addr_restrictions(
 struct recvbuf * rbufp
)
{
 u_int idx;

 idx = 0;
 send_restrict_list(restrictlist4, FALSE, &idx);
 send_restrict_list(restrictlist6, TRUE, &idx);
 ctl_flushpkt(0);
}
