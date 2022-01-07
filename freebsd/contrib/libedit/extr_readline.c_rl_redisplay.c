
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__** t_c; } ;
struct TYPE_5__ {TYPE_1__ el_tty; } ;


 size_t C_REPRINT ;
 size_t TS_IO ;
 TYPE_2__* e ;
 int el_push (TYPE_2__*,char*) ;

void
rl_redisplay(void)
{
 char a[2];
 a[0] = (char)e->el_tty.t_c[TS_IO][C_REPRINT];
 a[1] = '\0';
 el_push(e, a);
}
