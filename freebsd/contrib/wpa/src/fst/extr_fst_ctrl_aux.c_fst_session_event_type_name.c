
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum fst_event_type { ____Placeholder_fst_event_type } fst_event_type ;


 int ARRAY_SIZE (int ) ;
 char const* fst_get_str_name (int,int ,int ) ;
 int session_event_names ;

const char * fst_session_event_type_name(enum fst_event_type event)
{
 return fst_get_str_name(event, session_event_names,
    ARRAY_SIZE(session_event_names));
}
