
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sleepqueue {int sq_blocked; } ;
struct pthread {int dummy; } ;


 struct pthread* TAILQ_FIRST (int *) ;

__attribute__((used)) static inline struct pthread *
_sleepq_first(struct sleepqueue *sq)
{
 return TAILQ_FIRST(&sq->sq_blocked);
}
