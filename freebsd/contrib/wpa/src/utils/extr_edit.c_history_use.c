
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int str; } ;


 int cmdbuf ;
 int cmdbuf_len ;
 int cmdbuf_pos ;
 int edit_clear_line () ;
 int edit_redraw () ;
 TYPE_1__* history_curr ;
 int os_memcpy (int ,int ,int ) ;
 int os_strlen (int ) ;

__attribute__((used)) static void history_use(void)
{
 edit_clear_line();
 cmdbuf_len = cmdbuf_pos = os_strlen(history_curr->str);
 os_memcpy(cmdbuf, history_curr->str, cmdbuf_len);
 edit_redraw();
}
