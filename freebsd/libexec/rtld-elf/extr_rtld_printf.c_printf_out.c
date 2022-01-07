
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snprintf_arg {scalar_t__ remain; scalar_t__ buf_total; int buf; int str; int fd; } ;


 int write (int ,int ,scalar_t__) ;

__attribute__((used)) static void
printf_out(struct snprintf_arg *info)
{

 if (info->remain == info->buf_total)
  return;
 write(info->fd, info->buf, info->buf_total - info->remain);
 info->str = info->buf;
 info->remain = info->buf_total;
}
