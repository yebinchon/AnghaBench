
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int EL_SETTC ;
 int e ;
 int el_set (int ,int ,char*,char*,int *) ;
 int snprintf (char*,int,char*,int) ;

void
rl_set_screen_size(int rows, int cols)
{
 char buf[64];
 (void)snprintf(buf, sizeof(buf), "%d", rows);
 el_set(e, EL_SETTC, "li", buf, ((void*)0));
 (void)snprintf(buf, sizeof(buf), "%d", cols);
 el_set(e, EL_SETTC, "co", buf, ((void*)0));
}
