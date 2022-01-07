
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int ss_len; } ;


 int ATF_REQUIRE_EQ (int ,int ) ;
 TYPE_1__ addr ;
 int s ;
 int sendto (int ,void const*,int ,int ,struct sockaddr*,int ) ;

__attribute__((used)) static void
send_bytes(const void* cmd, ssize_t len)
{
 ssize_t r;

 r = sendto(s, cmd, len, 0, (struct sockaddr*)(&addr), addr.ss_len);
 ATF_REQUIRE_EQ(r, len);
}
