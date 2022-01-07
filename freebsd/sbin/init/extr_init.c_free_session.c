
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* se_type; struct TYPE_4__* se_window_argv; struct TYPE_4__* se_window_argv_space; struct TYPE_4__* se_window; struct TYPE_4__* se_getty_argv; struct TYPE_4__* se_getty_argv_space; struct TYPE_4__* se_getty; struct TYPE_4__* se_device; } ;
typedef TYPE_1__ session_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
free_session(session_t *sp)
{
 free(sp->se_device);
 if (sp->se_getty) {
  free(sp->se_getty);
  free(sp->se_getty_argv_space);
  free(sp->se_getty_argv);
 }
 if (sp->se_window) {
  free(sp->se_window);
  free(sp->se_window_argv_space);
  free(sp->se_window_argv);
 }
 if (sp->se_type)
  free(sp->se_type);
 free(sp);
}
