
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;
typedef int buf ;


 int PIDGET (int ) ;
 int getpkt (char*,int,int ) ;
 int putpkt (char*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int
remote_thread_alive (ptid_t ptid)
{
  int tid = PIDGET (ptid);
  char buf[16];

  if (tid < 0)
    sprintf (buf, "T-%08x", -tid);
  else
    sprintf (buf, "T%08x", tid);
  putpkt (buf);
  getpkt (buf, sizeof (buf), 0);
  return (buf[0] == 'O' && buf[1] == 'K');
}
