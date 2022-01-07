
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SL_cmd ;


 int sl_command_loop (int *,char const*,void**) ;

int
sl_loop(SL_cmd *cmds, const char *prompt)
{
    void *data = ((void*)0);
    int ret;
    while((ret = sl_command_loop(cmds, prompt, &data)) >= 0)
 ;
    return ret;
}
