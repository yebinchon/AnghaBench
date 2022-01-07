
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int do_buff_decode (int *,size_t,void (*) (void*,int,void*,int,char*),void*,char const*,int *) ;

int
buff_decode_visit(u_int8_t *buff, size_t len, const char *fmt,
    void (*arg_put)(void *, int, void *, int, char *),
    void *puthook)
{





 if (arg_put == ((void*)0))
  return (-1);

 return (do_buff_decode(buff, len, arg_put, puthook, fmt, ((void*)0)));
}
