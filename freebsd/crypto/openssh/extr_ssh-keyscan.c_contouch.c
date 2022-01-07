
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tv_sec; } ;
struct TYPE_6__ {TYPE_1__ c_tv; } ;


 int TAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_2__*,int ) ;
 int c_link ;
 TYPE_2__* fdcon ;
 int monotime_tv (TYPE_1__*) ;
 scalar_t__ timeout ;
 int tq ;

__attribute__((used)) static void
contouch(int s)
{
 TAILQ_REMOVE(&tq, &fdcon[s], c_link);
 monotime_tv(&fdcon[s].c_tv);
 fdcon[s].c_tv.tv_sec += timeout;
 TAILQ_INSERT_TAIL(&tq, &fdcon[s], c_link);
}
