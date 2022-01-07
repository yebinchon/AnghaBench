
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vatpic {int dummy; } ;


 int M_VATPIC ;
 int free (struct vatpic*,int ) ;

void
vatpic_cleanup(struct vatpic *vatpic)
{
 free(vatpic, M_VATPIC);
}
