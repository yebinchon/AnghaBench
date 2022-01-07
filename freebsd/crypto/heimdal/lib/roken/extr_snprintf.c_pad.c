
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snprintf_state {int (* append_char ) (struct snprintf_state*,char) ;} ;


 int stub1 (struct snprintf_state*,char) ;

__attribute__((used)) static size_t
pad(struct snprintf_state *state, int width, char c)
{
    size_t len = 0;
    while(width-- > 0){
 (*state->append_char)(state, c);
 ++len;
    }
    return len;
}
