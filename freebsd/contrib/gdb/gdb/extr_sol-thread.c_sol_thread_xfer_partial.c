
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct target_ops {int dummy; } ;
struct cleanup {int dummy; } ;
typedef enum target_object { ____Placeholder_target_object } target_object ;
typedef int ULONGEST ;
struct TYPE_4__ {int (* to_xfer_partial ) (struct target_ops*,int,char const*,void*,void const*,int ,int) ;} ;
struct TYPE_3__ {int (* to_xfer_partial ) (struct target_ops*,int,char const*,void*,void const*,int ,int) ;} ;
typedef int LONGEST ;


 int do_cleanups (struct cleanup*) ;
 int inferior_ptid ;
 scalar_t__ is_thread (int ) ;
 TYPE_2__ orig_core_ops ;
 int procfs_first_available () ;
 TYPE_1__ procfs_ops ;
 struct cleanup* save_inferior_ptid () ;
 int stub1 (struct target_ops*,int,char const*,void*,void const*,int ,int) ;
 int stub2 (struct target_ops*,int,char const*,void*,void const*,int ,int) ;
 scalar_t__ target_has_execution ;
 int target_thread_alive (int ) ;

__attribute__((used)) static LONGEST
sol_thread_xfer_partial (struct target_ops *ops, enum target_object object,
     const char *annex, void *readbuf,
     const void *writebuf, ULONGEST offset, LONGEST len)
{
  int retval;
  struct cleanup *old_chain;

  old_chain = save_inferior_ptid ();

  if (is_thread (inferior_ptid) ||
      !target_thread_alive (inferior_ptid))
    inferior_ptid = procfs_first_available ();


  if (target_has_execution)
    retval = procfs_ops.to_xfer_partial (ops, object, annex,
      readbuf, writebuf, offset, len);
  else
    retval = orig_core_ops.to_xfer_partial (ops, object, annex,
         readbuf, writebuf, offset, len);

  do_cleanups (old_chain);

  return retval;
}
