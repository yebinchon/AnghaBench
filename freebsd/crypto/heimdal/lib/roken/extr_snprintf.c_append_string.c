
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snprintf_state {int (* append_char ) (struct snprintf_state*,int ) ;} ;


 int minus_flag ;
 scalar_t__ pad (struct snprintf_state*,int,char) ;
 scalar_t__ strlen (char const*) ;
 int stub1 (struct snprintf_state*,int ) ;
 int stub2 (struct snprintf_state*,int ) ;

__attribute__((used)) static size_t
append_string (struct snprintf_state *state,
        const unsigned char *arg,
        int width,
        int prec,
        int flags)
{
    size_t len = 0;

    if(arg == ((void*)0))
 arg = (const unsigned char*)"(null)";

    if(prec != -1)
 width -= prec;
    else
 width -= strlen((const char *)arg);
    if(!(flags & minus_flag))
 len += pad(state, width, ' ');

    if (prec != -1) {
 while (*arg && prec--) {
     (*state->append_char) (state, *arg++);
     ++len;
 }
    } else {
 while (*arg) {
     (*state->append_char) (state, *arg++);
     ++len;
 }
    }
    if(flags & minus_flag)
 len += pad(state, width, ' ');
    return len;
}
