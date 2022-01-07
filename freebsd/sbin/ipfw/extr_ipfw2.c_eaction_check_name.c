
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ ipfw_check_object_name (char const*) ;
 int match_token (int ,char const*) ;
 int rule_action_params ;
 int rule_actions ;

__attribute__((used)) static int
eaction_check_name(const char *name)
{

 if (ipfw_check_object_name(name) != 0)
  return (EINVAL);

 if (match_token(rule_actions, name) != -1 &&
     match_token(rule_action_params, name) != -1)
  return (EINVAL);
 return (0);
}
