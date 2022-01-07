
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int do_encode (int *,size_t,int *,int (*) (void*,char*),void*,char const*,int *) ;

int
buff_encode_visit(u_int8_t *buff, size_t len, const char *fmt,
    int (*arg_get)(void *hook, char *field_name), void *gethook)
{





 if (arg_get == ((void*)0))
  return (-1);

 return (do_encode(buff, len, ((void*)0), arg_get, gethook, fmt, ((void*)0)));
}
