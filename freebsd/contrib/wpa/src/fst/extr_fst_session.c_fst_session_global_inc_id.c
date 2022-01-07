
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FST_INVALID_SESSION_ID ;
 scalar_t__ global_session_id ;

__attribute__((used)) static void fst_session_global_inc_id(void)
{
 global_session_id++;
 if (global_session_id == FST_INVALID_SESSION_ID)
  global_session_id++;
}
