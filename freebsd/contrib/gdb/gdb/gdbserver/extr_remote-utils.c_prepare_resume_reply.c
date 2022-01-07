
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inferior_list_entry {int id; } ;


 scalar_t__ current_inferior ;
 scalar_t__ debug_threads ;
 int find_regno (char const*) ;
 int fprintf (int ,char*,int) ;
 char** gdbserver_expedite_regs ;
 int general_thread ;
 int old_thread_from_wait ;
 char* outreg (int ,char*) ;
 int sprintf (char*,char*,int) ;
 int stderr ;
 int strlen (char*) ;
 scalar_t__ target_signal_from_host (unsigned char) ;
 int thread_from_wait ;
 void* tohex (int) ;
 scalar_t__ using_threads ;

void
prepare_resume_reply (char *buf, char status, unsigned char signo)
{
  int nib, sig;

  *buf++ = status;

  sig = (int)target_signal_from_host (signo);

  nib = ((sig & 0xf0) >> 4);
  *buf++ = tohex (nib);
  nib = sig & 0x0f;
  *buf++ = tohex (nib);

  if (status == 'T')
    {
      const char **regp = gdbserver_expedite_regs;
      while (*regp)
 {
   buf = outreg (find_regno (*regp), buf);
   regp ++;
 }
      if (using_threads)
 {

   thread_from_wait = ((struct inferior_list_entry *)current_inferior)->id;
   if (debug_threads)
     fprintf (stderr, "Writing resume reply for %d\n\n", thread_from_wait);




   if (1 || old_thread_from_wait != thread_from_wait)
     {
       general_thread = thread_from_wait;
       sprintf (buf, "thread:%x;", thread_from_wait);
       buf += strlen (buf);
       old_thread_from_wait = thread_from_wait;
     }
 }
    }

  *buf++ = 0;
}
