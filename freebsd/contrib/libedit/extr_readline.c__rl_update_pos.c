
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buffer; scalar_t__ lastchar; scalar_t__ cursor; } ;
typedef TYPE_1__ LineInfo ;


 int e ;
 TYPE_1__* el_line (int ) ;
 size_t rl_end ;
 char* rl_line_buffer ;
 int rl_point ;

__attribute__((used)) static void
_rl_update_pos(void)
{
 const LineInfo *li = el_line(e);

 rl_point = (int)(li->cursor - li->buffer);
 rl_end = (int)(li->lastchar - li->buffer);
 rl_line_buffer[rl_end] = '\0';
}
