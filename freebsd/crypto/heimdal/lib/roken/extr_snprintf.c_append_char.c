
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snprintf_state {int (* append_char ) (struct snprintf_state*,char) ;} ;


 int minus_flag ;
 int stub1 (struct snprintf_state*,char) ;
 int stub2 (struct snprintf_state*,unsigned char) ;
 int stub3 (struct snprintf_state*,char) ;

__attribute__((used)) static int
append_char(struct snprintf_state *state,
     unsigned char arg,
     int width,
     int flags)
{
    int len = 0;

    while(!(flags & minus_flag) && --width > 0) {
 (*state->append_char) (state, ' ') ;
 ++len;
    }
    (*state->append_char) (state, arg);
    ++len;
    while((flags & minus_flag) && --width > 0) {
 (*state->append_char) (state, ' ');
 ++len;
    }
    return 0;
}
