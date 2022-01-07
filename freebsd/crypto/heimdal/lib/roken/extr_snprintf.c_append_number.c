
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_longest ;
struct snprintf_state {int (* append_char ) (struct snprintf_state*,char) ;} ;
typedef int nstr ;


 int alternate_flag ;
 int assert (int) ;
 int minus_flag ;
 scalar_t__ pad (struct snprintf_state*,int,char) ;
 int plus_flag ;
 int space_flag ;
 int stub1 (struct snprintf_state*,char) ;
 int stub2 (struct snprintf_state*,char) ;
 int stub3 (struct snprintf_state*,char const) ;
 int stub4 (struct snprintf_state*,char) ;
 scalar_t__ use_alternative (int,int,unsigned int) ;
 int zero_flag ;

__attribute__((used)) static int
append_number(struct snprintf_state *state,
       u_longest num, unsigned base, const char *rep,
       int width, int prec, int flags, int minusp)
{
    int len = 0;
    u_longest n = num;
    char nstr[64];
    int nstart, nlen;
    char signchar;


    if(prec != -1)
 flags &= ~zero_flag;
    else
 prec = 1;


    nstart = sizeof(nstr);
    nlen = 0;
    nstr[--nstart] = '\0';
    do {
 assert(nstart > 0);
 nstr[--nstart] = rep[n % base];
 ++nlen;
 n /= base;
    } while(n);


    if(prec == 0 && num == 0) {
 nlen--;
 nstart++;
    }


    if(minusp)
 signchar = '-';
    else if((flags & plus_flag))
 signchar = '+';
    else if((flags & space_flag))
 signchar = ' ';
    else
 signchar = '\0';

    if((flags & alternate_flag) && base == 8) {
 if(prec <= nlen && nstr[nstart] != '0' && nstr[nstart] != '\0')
     prec = nlen + 1;
    }
    if(!(flags & (minus_flag | zero_flag))) {
 if(prec > nlen)
     width -= prec;
 else
     width -= nlen;

 if(use_alternative(flags, num, base))
     width -= 2;

 if(signchar != '\0')
     width--;


 len += pad(state, width, ' ');
    }
    if(signchar != '\0') {
 (*state->append_char)(state, signchar);
 ++len;
    }
    if(use_alternative(flags, num, base)) {
 (*state->append_char)(state, '0');
 (*state->append_char)(state, rep[10] + 23);
 len += 2;
    }
    if(flags & zero_flag) {

 if(prec - nlen > width - len - nlen)
     len += pad(state, prec - nlen, '0');
 else
     len += pad(state, width - len - nlen, '0');
    } else

 len += pad(state, prec - nlen, '0');

    while(nstr[nstart] != '\0') {
 (*state->append_char)(state, nstr[nstart++]);
 ++len;
    }

    if(flags & minus_flag)
 len += pad(state, width - len, ' ');

    return len;
}
