
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct state {size_t sz; unsigned char* str; unsigned char* s; unsigned char* theend; int reserve; int append_char; scalar_t__ max_sz; } ;


 int sn_append_char ;
 int sn_reserve ;
 int xyzprintf (struct state*,char const*,int ) ;

int
pcap_vsnprintf (char *str, size_t sz, const char *format, va_list args)
{
  struct state state;
  int ret;
  unsigned char *ustr = (unsigned char *)str;

  state.max_sz = 0;
  state.sz = sz;
  state.str = ustr;
  state.s = ustr;
  state.theend = ustr + sz - 1;
  state.append_char = sn_append_char;
  state.reserve = sn_reserve;

  ret = xyzprintf (&state, format, args);
  *state.s = '\0';
  if (ret)
    return sz;
  else
    return state.s - state.str;
}
