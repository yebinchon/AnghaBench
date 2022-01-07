
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nProgress; scalar_t__ mxProgress; int flgProgress; int out; } ;
typedef TYPE_1__ ShellState ;


 int SHELL_PROGRESS_ONCE ;
 int SHELL_PROGRESS_QUIET ;
 int SHELL_PROGRESS_RESET ;
 int raw_printf (int ,char*,scalar_t__) ;

__attribute__((used)) static int progress_handler(void *pClientData) {
  ShellState *p = (ShellState*)pClientData;
  p->nProgress++;
  if( p->nProgress>=p->mxProgress && p->mxProgress>0 ){
    raw_printf(p->out, "Progress limit reached (%u)\n", p->nProgress);
    if( p->flgProgress & SHELL_PROGRESS_RESET ) p->nProgress = 0;
    if( p->flgProgress & SHELL_PROGRESS_ONCE ) p->mxProgress = 0;
    return 1;
  }
  if( (p->flgProgress & SHELL_PROGRESS_QUIET)==0 ){
    raw_printf(p->out, "Progress %u\n", p->nProgress);
  }
  return 0;
}
