
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;


 scalar_t__ CHAN_HP ;
 scalar_t__ CHAN_LP ;
 scalar_t__ CHAN_MP ;

__attribute__((used)) static inline int isForCES_port(u_short Port)
{
 if (Port == CHAN_HP)
  return 1;
 if (Port == CHAN_MP)
  return 1;
 if (Port == CHAN_LP)
  return 1;

 return 0;
}
