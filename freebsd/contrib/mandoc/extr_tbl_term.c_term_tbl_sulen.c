
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int dummy; } ;
struct roffsu {int dummy; } ;


 int term_hen (struct termp const*,struct roffsu const*) ;

__attribute__((used)) static size_t
term_tbl_sulen(const struct roffsu *su, void *arg)
{
 int i;

 i = term_hen((const struct termp *)arg, su);
 return i > 0 ? i : 0;
}
