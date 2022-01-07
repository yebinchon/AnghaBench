
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct local_bp_list_entry {struct local_bp_list_entry* next; } ;
struct TYPE_6__ {int bytesex; int fpe; int rditype; int heartbeat_on; int flags; } ;
struct TYPE_5__ {int reset; int * hostosarg; int gets; int write; int readc; int writec; int * dbgarg; int dbgpause; int dbgprint; } ;


 int Adp_CloseDevice () ;
 int Adp_OpenDevice (char*,char*,int ) ;
 scalar_t__ BFD_ENDIAN_BIG ;
 int RDIError_BigEndian ;
 int RDIError_LittleEndian ;
 int RDIError_NoError ;
 int RDIInfo_CoPro ;
 int RDIInfo_GetLoadSize ;
 int RDIInfo_Points ;
 int RDIInfo_SemiHosting ;
 int RDIInfo_Step ;
 int RDIInfo_Target ;
 int RDISet_Cmdline ;
 int RDIVector_Catch ;
 scalar_t__ TARGET_BYTE_ORDER ;
 int adp_ok ;
 int angel_RDI_info (int ,unsigned long*,unsigned long*) ;
 int angel_RDI_open (int,TYPE_2__*,TYPE_1__*,int *) ;
 int arm_rdi_close (int ) ;
 int arm_rdi_ops ;
 scalar_t__ closed_already ;
 int error (char*,...) ;
 TYPE_2__ gdb_config ;
 TYPE_1__ gdb_hostif ;
 int inferior_ptid ;
 struct local_bp_list_entry* local_bp_list ;
 unsigned long max_load_size ;
 int mygets ;
 int mypause ;
 int myprint ;
 int myreadc ;
 int mywrite ;
 int mywritec ;
 int pid_to_ptid (int) ;
 int printf_filtered (char*,...) ;
 int push_target (int *) ;
 int rdi_error_message (int) ;
 int rdi_heartbeat ;
 scalar_t__ rom_at_zero ;
 char* strchr (char*,char) ;
 int target_fetch_registers (int) ;
 int voiddummy ;
 int xfree (struct local_bp_list_entry*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
arm_rdi_open (char *name, int from_tty)
{
  int rslt, i;
  unsigned long arg1, arg2;
  char *openArgs = ((void*)0);
  char *devName = ((void*)0);
  char *p;

  if (name == ((void*)0))
    error ("To open an RDI connection, you need to specify what serial\ndevice is attached to the remote system (e.g. /dev/ttya).");




  devName = xstrdup (name);
  p = strchr (devName, ' ');
  if (p)
    {
      *p = '\0';
      ++p;

      while (*p == ' ')
 ++p;

      openArgs = p;
    }



  arm_rdi_close (0);
  rslt = Adp_OpenDevice (devName, openArgs, rdi_heartbeat);

  if (rslt != adp_ok)
    error ("Could not open device \"%s\"", name);

  gdb_config.bytesex = 2 | (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG ? 1 : 0);
  gdb_config.fpe = 1;
  gdb_config.rditype = 2;
  gdb_config.heartbeat_on = 1;
  gdb_config.flags = 2;

  gdb_hostif.dbgprint = myprint;
  gdb_hostif.dbgpause = mypause;
  gdb_hostif.dbgarg = ((void*)0);
  gdb_hostif.writec = mywritec;
  gdb_hostif.readc = myreadc;
  gdb_hostif.write = mywrite;
  gdb_hostif.gets = mygets;
  gdb_hostif.hostosarg = ((void*)0);
  gdb_hostif.reset = voiddummy;

  rslt = angel_RDI_open (10, &gdb_config, &gdb_hostif, ((void*)0));
  if (rslt == RDIError_BigEndian || rslt == RDIError_LittleEndian)
    ;
  else if (rslt != RDIError_NoError)
    {
      printf_filtered ("RDI_open: %s\n", rdi_error_message (rslt));
      Adp_CloseDevice ();
      error ("RDI_open failed\n");
    }

  rslt = angel_RDI_info (RDIInfo_Target, &arg1, &arg2);
  if (rslt != RDIError_NoError)
    {
      printf_filtered ("RDI_info: %s\n", rdi_error_message (rslt));
    }
  rslt = angel_RDI_info (RDIInfo_Points, &arg1, &arg2);
  if (rslt != RDIError_NoError)
    {
      printf_filtered ("RDI_info: %s\n", rdi_error_message (rslt));
    }
  rslt = angel_RDI_info (RDIInfo_Step, &arg1, &arg2);
  if (rslt != RDIError_NoError)
    {
      printf_filtered ("RDI_info: %s\n", rdi_error_message (rslt));
    }
  rslt = angel_RDI_info (RDIInfo_CoPro, &arg1, &arg2);
  if (rslt != RDIError_NoError)
    {
      printf_filtered ("RDI_info: %s\n", rdi_error_message (rslt));
    }
  rslt = angel_RDI_info (RDIInfo_SemiHosting, &arg1, &arg2);
  if (rslt != RDIError_NoError)
    {
      printf_filtered ("RDI_info: %s\n", rdi_error_message (rslt));
    }

  rslt = angel_RDI_info (RDIInfo_GetLoadSize, &arg1, &arg2);
  if (rslt != RDIError_NoError)
    {
      printf_filtered ("RDI_info: %s\n", rdi_error_message (rslt));
    }
  max_load_size = arg1;

  push_target (&arm_rdi_ops);

  target_fetch_registers (-1);

  rslt = angel_RDI_open (1, &gdb_config, ((void*)0), ((void*)0));
  if (rslt != RDIError_NoError)
    {
      printf_filtered ("RDI_open: %s\n", rdi_error_message (rslt));
    }

  arg1 = rom_at_zero ? 0x0 : 0x13b;

  rslt = angel_RDI_info (RDIVector_Catch, &arg1, &arg2);
  if (rslt != RDIError_NoError)
    {
      printf_filtered ("RDI_info: %s\n", rdi_error_message (rslt));
    }

  arg1 = (unsigned long) "";
  rslt = angel_RDI_info (RDISet_Cmdline, &arg1, &arg2);
  if (rslt != RDIError_NoError)
    {
      printf_filtered ("RDI_info: %s\n", rdi_error_message (rslt));
    }


  {
    struct local_bp_list_entry *entry, *preventry = ((void*)0);

    for (entry = local_bp_list; entry != ((void*)0); entry = entry->next)
      {
 if (preventry)
   xfree (preventry);
      }
  }

  printf_filtered ("Connected to ARM RDI target.\n");
  closed_already = 0;
  inferior_ptid = pid_to_ptid (42);
}
