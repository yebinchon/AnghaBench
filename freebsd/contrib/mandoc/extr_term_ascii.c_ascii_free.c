
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int dummy; } ;


 int term_free (struct termp*) ;

void
ascii_free(void *arg)
{

 term_free((struct termp *)arg);
}
