
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum module_ext_state { ____Placeholder_module_ext_state } module_ext_state ;
const char*
strextstate(enum module_ext_state s)
{
 switch(s) {
 case 131: return "module_state_initial";
 case 129: return "module_wait_reply";
 case 130: return "module_wait_module";
 case 132: return "module_restart_next";
 case 128: return "module_wait_subquery";
 case 134: return "module_error";
 case 133: return "module_finished";
 }
 return "bad_extstate_value";
}
