
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCREEN ;
typedef int NCURSES_CH_T ;


 int CharEq (int ,int ) ;
 int TEXTWIDTH (int *) ;

__attribute__((used)) static int
update_cost(SCREEN *sp, NCURSES_CH_T * from, NCURSES_CH_T * to)
{
    int cost = 0;
    int i;

    for (i = TEXTWIDTH(sp); i > 0; i--, from++, to++)
 if (!(CharEq(*from, *to)))
     cost++;

    return cost;
}
