
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_user_mad {int timeout_ms; int retries; int agent_id; } ;


 int DEBUG (char*,int,int,int) ;
 int EIO ;
 int TRACE (char*,int,int,void*,int) ;
 int errno ;
 int umad_dump (struct ib_user_mad*) ;
 int umad_size () ;
 int umaddebug ;
 int write (int,struct ib_user_mad*,int) ;

int umad_send(int fd, int agentid, void *umad, int length,
       int timeout_ms, int retries)
{
 struct ib_user_mad *mad = umad;
 int n;

 TRACE("fd %d agentid %d umad %p timeout %u",
       fd, agentid, umad, timeout_ms);
 errno = 0;

 mad->timeout_ms = timeout_ms;
 mad->retries = retries;
 mad->agent_id = agentid;

 if (umaddebug > 1)
  umad_dump(mad);

 n = write(fd, mad, length + umad_size());
 if (n == length + umad_size())
  return 0;

 DEBUG("write returned %d != sizeof umad %zu + length %d (%m)",
       n, umad_size(), length);
 if (!errno)
  errno = EIO;
 return -EIO;
}
