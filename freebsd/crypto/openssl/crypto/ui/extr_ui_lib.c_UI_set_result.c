
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UI_STRING ;
typedef int UI ;


 int ERR_R_DISABLED ;
 int UI_F_UI_SET_RESULT ;
 int UI_set_result_ex (int *,int *,char const*,int ) ;
 int UIerr (int ,int ) ;
 int strlen (char const*) ;

int UI_set_result(UI *ui, UI_STRING *uis, const char *result)
{







    return UI_set_result_ex(ui, uis, result, strlen(result));
}
