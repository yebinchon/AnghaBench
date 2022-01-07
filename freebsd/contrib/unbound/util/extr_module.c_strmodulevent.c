
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum module_ev { ____Placeholder_module_ev } module_ev ;
const char*
strmodulevent(enum module_ev e)
{
 switch(e) {
 case 131: return "module_event_new";
 case 129: return "module_event_pass";
 case 128: return "module_event_reply";
 case 130: return "module_event_noreply";
 case 134: return "module_event_capsfail";
 case 132: return "module_event_moddone";
 case 133: return "module_event_error";
 }
 return "bad_event_value";
}
