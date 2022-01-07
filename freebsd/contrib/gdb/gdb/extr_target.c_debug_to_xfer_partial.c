
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct target_ops {int dummy; } ;
typedef enum target_object { ____Placeholder_target_object } target_object ;
typedef int ULONGEST ;
struct TYPE_3__ {int (* to_xfer_partial ) (TYPE_1__*,int,char const*,void*,void const*,int ,int ) ;} ;
typedef int LONGEST ;


 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,int,char const*,long,long,int ,int ,int ) ;
 int gdb_stdlog ;
 int paddr_d (int ) ;
 int paddr_nz (int ) ;
 int stub1 (TYPE_1__*,int,char const*,void*,void const*,int ,int ) ;

__attribute__((used)) static LONGEST
debug_to_xfer_partial (struct target_ops *ops, enum target_object object,
         const char *annex, void *readbuf, const void *writebuf,
         ULONGEST offset, LONGEST len)
{
  LONGEST retval;

  retval = debug_target.to_xfer_partial (&debug_target, object, annex,
      readbuf, writebuf, offset, len);

  fprintf_unfiltered (gdb_stdlog,
        "target_xfer_partial (%d, %s, 0x%lx,  0x%lx,  0x%s, %s) = %s\n",
        (int) object, (annex ? annex : "(null)"),
        (long) readbuf, (long) writebuf, paddr_nz (offset),
        paddr_d (len), paddr_d (retval));

  return retval;
}
