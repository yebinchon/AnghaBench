
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct show_state {int printed; } ;


 int free (int ) ;

__attribute__((used)) static void
free_show_state(struct show_state *state)
{

 free(state->printed);
}
