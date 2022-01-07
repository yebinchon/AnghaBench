
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inferior_list_entry {int id; struct inferior_list_entry* next; } ;
struct TYPE_4__ {struct inferior_list_entry* head; } ;
struct TYPE_3__ {int (* read_auxv ) (int ,char*,unsigned int) ;int (* look_up_symbols ) () ;} ;
typedef int CORE_ADDR ;


 int PBUFSIZ ;
 TYPE_2__ all_threads ;
 int convert_int_to_ascii (char*,char*,int) ;
 int decode_m_packet (char*,int *,unsigned int*) ;
 int sprintf (char*,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int stub1 () ;
 int stub2 (int ,char*,unsigned int) ;
 TYPE_1__* the_target ;
 int write_enn (char*) ;
 int write_ok (char*) ;

void
handle_query (char *own_buf)
{
  static struct inferior_list_entry *thread_ptr;

  if (strcmp ("qSymbol::", own_buf) == 0)
    {
      if (the_target->look_up_symbols != ((void*)0))
 (*the_target->look_up_symbols) ();

      strcpy (own_buf, "OK");
      return;
    }

  if (strcmp ("qfThreadInfo", own_buf) == 0)
    {
      thread_ptr = all_threads.head;
      sprintf (own_buf, "m%x", thread_ptr->id);
      thread_ptr = thread_ptr->next;
      return;
    }

  if (strcmp ("qsThreadInfo", own_buf) == 0)
    {
      if (thread_ptr != ((void*)0))
 {
   sprintf (own_buf, "m%x", thread_ptr->id);
   thread_ptr = thread_ptr->next;
   return;
 }
      else
 {
   sprintf (own_buf, "l");
   return;
 }
    }

  if (the_target->read_auxv != ((void*)0)
      && strncmp ("qPart:auxv:read::", own_buf, 17) == 0)
    {
      char data[(PBUFSIZ - 1) / 2];
      CORE_ADDR ofs;
      unsigned int len;
      int n;
      decode_m_packet (&own_buf[17], &ofs, &len);
      if (len > sizeof data)
 len = sizeof data;
      n = (*the_target->read_auxv) (ofs, data, len);
      if (n == 0)
 write_ok (own_buf);
      else if (n < 0)
 write_enn (own_buf);
      else
 convert_int_to_ascii (data, own_buf, n);
      return;
    }



  own_buf[0] = 0;
}
