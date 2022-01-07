
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 int MSGBUF_SEQ_TO_POS (int,int) ;
 scalar_t__ kgdb_parse (char*) ;
 int printf (char*) ;
 int putchar (char) ;
 scalar_t__ quiet ;
 int read_memory (scalar_t__,char*,int) ;

void
kgdb_dmesg(void)
{
 CORE_ADDR bufp;
 int size, rseq, wseq;
 char c;





 if (quiet)
  return;
 bufp = kgdb_parse("msgbufp->msg_ptr");
 size = (int)kgdb_parse("msgbufp->msg_size");
 if (bufp == 0 || size == 0)
  return;
 rseq = (int)kgdb_parse("msgbufp->msg_rseq");
 wseq = (int)kgdb_parse("msgbufp->msg_wseq");
 rseq = MSGBUF_SEQ_TO_POS(size, rseq);
 wseq = MSGBUF_SEQ_TO_POS(size, wseq);
 if (rseq == wseq)
  return;

 printf("\nUnread portion of the kernel message buffer:\n");
 while (rseq < wseq) {
  read_memory(bufp + rseq, &c, 1);
  putchar(c);
  rseq++;
  if (rseq == size)
   rseq = 0;
 }
 if (c != '\n')
  putchar('\n');
 putchar('\n');
}
