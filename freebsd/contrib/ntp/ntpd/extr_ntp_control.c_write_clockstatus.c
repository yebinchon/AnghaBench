
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recvbuf {int dummy; } ;


 int CERR_PERMISSION ;
 int ctl_error (int ) ;

__attribute__((used)) static void
write_clockstatus(
 struct recvbuf *rbufp,
 int restrict_mask
 )
{
 ctl_error(CERR_PERMISSION);
}
