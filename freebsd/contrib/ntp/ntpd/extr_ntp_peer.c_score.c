
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peer {int flash; scalar_t__ status; } ;


 scalar_t__ CTL_PST_SEL_EXCESS ;
 scalar_t__ CTL_PST_SEL_SELCAND ;
 int TEST10 ;
 int TEST11 ;
 int TEST12 ;
 int TEST13 ;

__attribute__((used)) static int
score(
 struct peer *peer
 )
{
 int temp;





 temp = 0;
 if (!(peer->flash & TEST10))
  temp++;
 if (!(peer->flash & TEST13))
  temp++;
 if (!(peer->flash & TEST12))
  temp++;
 if (!(peer->flash & TEST11))
  temp++;
 if (peer->status >= CTL_PST_SEL_SELCAND)
  temp++;
 if (peer->status != CTL_PST_SEL_EXCESS)
  temp++;
 return (temp);
}
