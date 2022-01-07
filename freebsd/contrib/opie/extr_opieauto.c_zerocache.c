
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cachedotp {struct cachedotp* next; } ;


 struct cachedotp* head ;
 int memset (struct cachedotp*,int ,int) ;

void zerocache(void)
{
  struct cachedotp *c = head, *c2;

  while(c) {
    c2 = c->next;
    memset(c, 0, sizeof(struct cachedotp));
    c = c2;
  };
}
