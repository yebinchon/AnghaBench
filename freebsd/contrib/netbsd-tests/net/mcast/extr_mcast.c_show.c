
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct message {TYPE_1__ ts; int seq; } ;
typedef int intmax_t ;


 int printf (char*,char const*,int ,int ,int ) ;

__attribute__((used)) static void
show(const char *prefix, const struct message *msg)
{
 printf("%10.10s: %zu [%jd.%ld]\n", prefix, msg->seq, (intmax_t)
     msg->ts.tv_sec, msg->ts.tv_nsec);
}
