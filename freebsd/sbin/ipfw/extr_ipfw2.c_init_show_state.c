
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct show_state {scalar_t__ or_block; scalar_t__ proto; scalar_t__ flags; int * eaction; struct ip_fw_rule* rule; int * printed; } ;
struct ip_fw_rule {int cmd_len; } ;


 int ENOMEM ;
 int * calloc (int ,int) ;

__attribute__((used)) static int
init_show_state(struct show_state *state, struct ip_fw_rule *rule)
{

 state->printed = calloc(rule->cmd_len, sizeof(uint8_t));
 if (state->printed == ((void*)0))
  return (ENOMEM);
 state->rule = rule;
 state->eaction = ((void*)0);
 state->flags = 0;
 state->proto = 0;
 state->or_block = 0;
 return (0);
}
