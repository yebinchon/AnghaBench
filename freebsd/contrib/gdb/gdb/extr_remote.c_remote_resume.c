
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct remote_state {int remote_packet_size; } ;
typedef int ptid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
typedef int ULONGEST ;
struct TYPE_4__ {scalar_t__ support; } ;


 scalar_t__ PACKET_DISABLE ;
 scalar_t__ PACKET_OK ;
 int PIDGET (int ) ;
 int TARGET_SIGNAL_0 ;
 char* alloca (int ) ;
 struct remote_state* get_remote_state () ;
 int getpkt (char*,int ,int ) ;
 int hexnumstr (char*,int ) ;
 int last_sent_signal ;
 int last_sent_step ;
 scalar_t__ packet_ok (char*,TYPE_1__*) ;
 int putpkt (char*) ;
 TYPE_1__ remote_protocol_E ;
 TYPE_1__ remote_protocol_e ;
 scalar_t__ remote_vcont_resume (int ,int,int) ;
 int set_thread (int,int ) ;
 scalar_t__ step_range_end ;
 scalar_t__ step_range_start ;
 int strcpy (char*,char*) ;
 int stub1 () ;
 int target_resume_hook () ;
 void* tohex (int) ;

__attribute__((used)) static void
remote_resume (ptid_t ptid, int step, enum target_signal siggnal)
{
  struct remote_state *rs = get_remote_state ();
  char *buf = alloca (rs->remote_packet_size);
  int pid = PIDGET (ptid);
  char *p;

  last_sent_signal = siggnal;
  last_sent_step = step;



  if (target_resume_hook)
    (*target_resume_hook) ();


  if (remote_vcont_resume (ptid, step, siggnal))
    return;


  if (pid == -1)
    set_thread (0, 0);
  else
    set_thread (pid, 0);






  if (step && step_range_end)
    {






      if (siggnal != TARGET_SIGNAL_0)
 {
   if (remote_protocol_E.support != PACKET_DISABLE)
     {
       p = buf;
       *p++ = 'E';
       *p++ = tohex (((int) siggnal >> 4) & 0xf);
       *p++ = tohex (((int) siggnal) & 0xf);
       *p++ = ',';
       p += hexnumstr (p, (ULONGEST) step_range_start);
       *p++ = ',';
       p += hexnumstr (p, (ULONGEST) step_range_end);
       *p++ = 0;

       putpkt (buf);
       getpkt (buf, (rs->remote_packet_size), 0);

       if (packet_ok (buf, &remote_protocol_E) == PACKET_OK)
  return;
     }
 }
      else
 {
   if (remote_protocol_e.support != PACKET_DISABLE)
     {
       p = buf;
       *p++ = 'e';
       p += hexnumstr (p, (ULONGEST) step_range_start);
       *p++ = ',';
       p += hexnumstr (p, (ULONGEST) step_range_end);
       *p++ = 0;

       putpkt (buf);
       getpkt (buf, (rs->remote_packet_size), 0);

       if (packet_ok (buf, &remote_protocol_e) == PACKET_OK)
  return;
     }
 }
    }

  if (siggnal != TARGET_SIGNAL_0)
    {
      buf[0] = step ? 'S' : 'C';
      buf[1] = tohex (((int) siggnal >> 4) & 0xf);
      buf[2] = tohex (((int) siggnal) & 0xf);
      buf[3] = '\0';
    }
  else
    strcpy (buf, step ? "s" : "c");

  putpkt (buf);
}
