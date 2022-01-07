
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
 int NOTE_FFCTRLMASK ;
 int NOTE_FFLAGSMASK ;
 unsigned int NOTE_FFNOP ;
 int NOTE_TRIGGER ;
 int fprintf (int *,char*,...) ;
 int fputc (char,int *) ;
 int fputs (char*,int *) ;
 int kevent_proc_fflags ;
 int kevent_rdwr_fflags ;
 int kevent_timer_fflags ;
 int kevent_user_ffctrl ;
 int kevent_vnode_fflags ;
 char* lookup_value (int ,unsigned int) ;
 int print_integer (int *,int,int) ;
 int print_mask_int (int *,int ,int,int*) ;

void
sysdecode_kevent_fflags(FILE *fp, short filter, int fflags, int base)
{
 int rem;

 if (fflags == 0) {
  fputs("0", fp);
  return;
 }

 switch (filter) {
 case 132:
 case 128:
  if (!print_mask_int(fp, kevent_rdwr_fflags, fflags, &rem))
   fprintf(fp, "%#x", rem);
  else if (rem != 0)
   fprintf(fp, "|%#x", rem);
  break;
 case 129:
  if (!print_mask_int(fp, kevent_vnode_fflags, fflags, &rem))
   fprintf(fp, "%#x", rem);
  else if (rem != 0)
   fprintf(fp, "|%#x", rem);
  break;
 case 134:
 case 133:
  if (!print_mask_int(fp, kevent_proc_fflags, fflags, &rem))
   fprintf(fp, "%#x", rem);
  else if (rem != 0)
   fprintf(fp, "|%#x", rem);
  break;
 case 131:
  if (!print_mask_int(fp, kevent_timer_fflags, fflags, &rem))
   fprintf(fp, "%#x", rem);
  else if (rem != 0)
   fprintf(fp, "|%#x", rem);
  break;
 case 130: {
  unsigned int ctrl, data;

  ctrl = fflags & NOTE_FFCTRLMASK;
  data = fflags & NOTE_FFLAGSMASK;

  if (fflags & NOTE_TRIGGER) {
   fputs("NOTE_TRIGGER", fp);
   if (fflags == NOTE_TRIGGER)
    return;
   fputc('|', fp);
  }
  if (ctrl != NOTE_FFNOP || fflags & NOTE_TRIGGER) {
   fprintf(fp, "%s|%#x",
       lookup_value(kevent_user_ffctrl, ctrl), data);
  } else {
   print_integer(fp, data, base);
  }
  break;
 }
 default:
  print_integer(fp, fflags, base);
  break;
 }
}
