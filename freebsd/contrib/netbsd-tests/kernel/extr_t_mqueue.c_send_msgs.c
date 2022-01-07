
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg ;
typedef int mqd_t ;


 int ATF_REQUIRE_MSG (int,char*,int ) ;
 scalar_t__ MQ_PRIO_BASE ;
 int errno ;
 int mq_send (int ,char*,int,scalar_t__) ;

__attribute__((used)) static void
send_msgs(mqd_t mqfd)
{
 char msg[2];

 msg[1] = '\0';

 msg[0] = 'a';
 ATF_REQUIRE_MSG(mq_send(mqfd, msg, sizeof(msg), MQ_PRIO_BASE) != -1,
     "mq_send 1 failed: %d", errno);

 msg[0] = 'b';
 ATF_REQUIRE_MSG(mq_send(mqfd, msg, sizeof(msg), MQ_PRIO_BASE + 1) != -1,
     "mq_send 2 failed: %d", errno);

 msg[0] = 'c';
 ATF_REQUIRE_MSG(mq_send(mqfd, msg, sizeof(msg), MQ_PRIO_BASE) != -1,
     "mq_send 3 failed: %d", errno);

 msg[0] = 'd';
 ATF_REQUIRE_MSG(mq_send(mqfd, msg, sizeof(msg), MQ_PRIO_BASE - 1) != -1,
     "mq_send 4 failed: %d", errno);

 msg[0] = 'e';
 ATF_REQUIRE_MSG(mq_send(mqfd, msg, sizeof(msg), 0) != -1,
     "mq_send 5 failed: %d", errno);

 msg[0] = 'f';
 ATF_REQUIRE_MSG(mq_send(mqfd, msg, sizeof(msg), MQ_PRIO_BASE + 1) != -1,
     "mq_send 6 failed: %d", errno);
}
