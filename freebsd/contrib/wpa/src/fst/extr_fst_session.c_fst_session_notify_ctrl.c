
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union fst_event_extra {int dummy; } fst_event_extra ;
struct fst_session {int dummy; } ;
typedef enum fst_event_type { ____Placeholder_fst_event_type } fst_event_type ;


 int foreach_fst_ctrl_call (int ,int,int *,struct fst_session*,union fst_event_extra*) ;
 int on_event ;

__attribute__((used)) static inline void fst_session_notify_ctrl(struct fst_session *s,
        enum fst_event_type event_type,
        union fst_event_extra *extra)
{
 foreach_fst_ctrl_call(on_event, event_type, ((void*)0), s, extra);
}
