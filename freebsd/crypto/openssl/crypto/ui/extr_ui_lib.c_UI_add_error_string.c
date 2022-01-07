
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UI ;


 int UIT_ERROR ;
 int general_allocate_string (int *,char const*,int ,int ,int ,int *,int ,int ,int *) ;

int UI_add_error_string(UI *ui, const char *text)
{
    return general_allocate_string(ui, text, 0, UIT_ERROR, 0, ((void*)0), 0, 0,
                                   ((void*)0));
}
