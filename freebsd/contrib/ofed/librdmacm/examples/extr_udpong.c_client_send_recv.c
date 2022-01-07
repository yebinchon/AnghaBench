
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct message {scalar_t__ seqno; } ;


 int client_recv (struct message*,size_t,int) ;
 int client_send (struct message*,size_t) ;

__attribute__((used)) static int client_send_recv(struct message *msg, size_t size, int timeout)
{
 static uint8_t seqno;
 int ret;

 msg->seqno = seqno;
 do {
  ret = client_send(msg, size);
  if (ret != size)
   return ret;

  ret = client_recv(msg, size, timeout);
 } while (ret <= 0 || msg->seqno != seqno);

 seqno++;
 return ret;
}
