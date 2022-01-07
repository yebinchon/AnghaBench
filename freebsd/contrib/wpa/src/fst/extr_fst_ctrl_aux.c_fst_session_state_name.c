
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum fst_session_state { ____Placeholder_fst_session_state } fst_session_state ;


 int ARRAY_SIZE (int ) ;
 char const* fst_get_str_name (int,int ,int ) ;
 int session_state_names ;

const char * fst_session_state_name(enum fst_session_state state)
{
 return fst_get_str_name(state, session_state_names,
    ARRAY_SIZE(session_state_names));
}
