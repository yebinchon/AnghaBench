
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct ui_out {int dummy; } ;
typedef enum ui_align { ____Placeholder_ui_align } ui_align ;



__attribute__((used)) static void
default_field_fmt (struct ui_out *uiout, int fldno, int width,
     enum ui_align align,
     const char *fldname,
     const char *format,
     va_list args)
{
}
