
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_cmdline {int dummy; } ;


 scalar_t__ calloc (int,int) ;

struct archive_cmdline *
__archive_cmdline_allocate(void)
{
 return (struct archive_cmdline *)
  calloc(1, sizeof(struct archive_cmdline));
}
