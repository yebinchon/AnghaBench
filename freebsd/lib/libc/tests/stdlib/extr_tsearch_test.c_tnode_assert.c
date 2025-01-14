
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int balance; struct TYPE_3__* rlink; struct TYPE_3__* llink; } ;
typedef TYPE_1__ posix_tnode ;


 int ATF_CHECK (int) ;
 int ATF_CHECK_EQ (int,int ) ;

__attribute__((used)) static inline unsigned int
tnode_assert(const posix_tnode *n)
{
 unsigned int height_left, height_right;
 int balance;

 if (n == ((void*)0))
  return 0;
 height_left = tnode_assert(n->llink);
 height_right = tnode_assert(n->rlink);
 balance = (int)height_left - (int)height_right;
 ATF_CHECK(balance >= -1);
 ATF_CHECK(balance <= 1);
 ATF_CHECK_EQ(balance, n->balance);
 return (height_left > height_right ? height_left : height_right) + 1;
}
