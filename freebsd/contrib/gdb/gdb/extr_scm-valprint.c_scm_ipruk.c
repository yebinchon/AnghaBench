
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
typedef int LONGEST ;


 scalar_t__ SCM_CAR (int ) ;
 scalar_t__ SCM_CDR (int ) ;
 scalar_t__ SCM_CELLP (int ) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 char* paddr_nz (int ) ;

__attribute__((used)) static void
scm_ipruk (char *hdr, LONGEST ptr, struct ui_file *stream)
{
  fprintf_filtered (stream, "#<unknown-%s", hdr);

  if (SCM_CELLP (ptr))
    fprintf_filtered (stream, " (0x%lx . 0x%lx) @",
        (long) SCM_CAR (ptr), (long) SCM_CDR (ptr));
  fprintf_filtered (stream, " 0x%s>", paddr_nz (ptr));
}
