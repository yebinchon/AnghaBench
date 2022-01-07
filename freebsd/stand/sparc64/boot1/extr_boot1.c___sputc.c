
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_data {size_t sp_len; size_t sp_size; char* sp_buf; } ;



__attribute__((used)) static int
__sputc(char c, void *arg)
{
 struct sp_data *sp;

 sp = arg;
 if (sp->sp_len < sp->sp_size)
  sp->sp_buf[sp->sp_len++] = c;
 sp->sp_buf[sp->sp_len] = '\0';
 return (1);
}
