
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {int dummy; } ;


 scalar_t__ calloc (int,int) ;
 int gmtload (struct state*) ;
 struct state* gmtptr ;

__attribute__((used)) static void
gmt_init(void)
{





  gmtload(gmtptr);
}
