
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct ctl_be_block_lun {int num_threads; } ;


 int sbuf_printf (struct sbuf*,char*,...) ;

__attribute__((used)) static int
ctl_be_block_lun_info(void *be_lun, struct sbuf *sb)
{
 struct ctl_be_block_lun *lun;
 int retval;

 lun = (struct ctl_be_block_lun *)be_lun;

 retval = sbuf_printf(sb, "\t<num_threads>");
 if (retval != 0)
  goto bailout;
 retval = sbuf_printf(sb, "%d", lun->num_threads);
 if (retval != 0)
  goto bailout;
 retval = sbuf_printf(sb, "</num_threads>\n");

bailout:
 return (retval);
}
