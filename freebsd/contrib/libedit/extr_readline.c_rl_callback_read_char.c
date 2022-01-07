
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const** t_c; } ;
struct TYPE_6__ {TYPE_1__ el_tty; } ;


 size_t C_EOF ;
 int EL_UNBUFFERED ;
 size_t TS_IO ;
 TYPE_2__* e ;
 char* el_gets (TYPE_2__*,int*) ;
 int el_set (TYPE_2__*,int ,int) ;
 int * rl_linefunc ;
 char* strdup (char const*) ;
 void stub1 (char const*) ;

void
rl_callback_read_char(void)
{
 int count = 0, done = 0;
 const char *buf = el_gets(e, &count);
 char *wbuf;

 if (buf == ((void*)0) || count-- <= 0)
  return;
 if (count == 0 && buf[0] == e->el_tty.t_c[TS_IO][C_EOF])
  done = 1;
 if (buf[count] == '\n' || buf[count] == '\r')
  done = 2;

 if (done && rl_linefunc != ((void*)0)) {
  el_set(e, EL_UNBUFFERED, 0);
  if (done == 2) {
   if ((wbuf = strdup(buf)) != ((void*)0))
    wbuf[count] = '\0';
  } else
   wbuf = ((void*)0);
  (*(void (*)(const char *))rl_linefunc)(wbuf);
  el_set(e, EL_UNBUFFERED, 1);
 }
}
