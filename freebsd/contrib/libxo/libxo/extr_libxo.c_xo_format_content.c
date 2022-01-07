
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_xff_flags_t ;
typedef int xo_handle_t ;
typedef int ssize_t ;


 int FALSE ;
 int TRUE ;






 int xo_buf_append_div (int *,char const*,int ,int *,int ,char const*,int ,char const*,int ,int *,int ) ;
 int xo_close_container_h (int *,char const*) ;
 int xo_format_value (int *,char*,int,char const*,int ,char const*,int ,int *,int ,int ) ;
 int xo_open_container_h (int *,char const*) ;
 int xo_simple_field (int *,int ,char const*,int ,char const*,int ,int ) ;
 int xo_style (int *) ;

__attribute__((used)) static void
xo_format_content (xo_handle_t *xop, const char *class_name,
     const char *tag_name,
     const char *value, ssize_t vlen,
     const char *fmt, ssize_t flen,
     xo_xff_flags_t flags)
{
    switch (xo_style(xop)) {
    case 129:
 xo_simple_field(xop, FALSE, value, vlen, fmt, flen, flags);
 break;

    case 132:
 xo_buf_append_div(xop, class_name, flags, ((void*)0), 0,
     value, vlen, fmt, flen, ((void*)0), 0);
 break;

    case 128:
    case 131:
    case 130:
 if (tag_name) {
     xo_open_container_h(xop, tag_name);
     xo_format_value(xop, "message", 7, value, vlen,
       fmt, flen, ((void*)0), 0, flags);
     xo_close_container_h(xop, tag_name);

 } else {




     xo_simple_field(xop, TRUE, value, vlen, fmt, flen, flags);
 }
 break;

    case 133:
 xo_simple_field(xop, TRUE, value, vlen, fmt, flen, flags);
 break;
    }
}
