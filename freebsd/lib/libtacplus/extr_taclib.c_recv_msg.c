
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct timeval {int tv_sec; } ;
struct TYPE_6__ {struct tac_msg* body; } ;
struct tac_msg {scalar_t__ type; scalar_t__ seq_no; int flags; TYPE_3__ u; int length; int session_id; } ;
struct TYPE_5__ {scalar_t__ type; int session_id; } ;
struct tac_handle {size_t cur_server; scalar_t__ last_seq_no; scalar_t__ single_connect; TYPE_2__ request; TYPE_1__* servers; struct tac_msg response; } ;
struct TYPE_4__ {scalar_t__ timeout; } ;


 scalar_t__ BODYSIZE ;
 scalar_t__ HDRSIZE ;
 int TAC_SINGLE_CONNECT ;
 int crypt_msg (struct tac_handle*,struct tac_msg*) ;
 int generr (struct tac_handle*,char*,...) ;
 int gettimeofday (struct timeval*,int *) ;
 scalar_t__ memcmp (int ,int ,int) ;
 scalar_t__ ntohl (int ) ;
 int read_timed (struct tac_handle*,struct tac_msg*,scalar_t__,struct timeval*) ;

__attribute__((used)) static int
recv_msg(struct tac_handle *h)
{
 struct timeval deadline;
 struct tac_msg *msg;
 u_int32_t len;

 msg = &h->response;
 gettimeofday(&deadline, ((void*)0));
 deadline.tv_sec += h->servers[h->cur_server].timeout;


 if (read_timed(h, msg, HDRSIZE, &deadline) == -1)
  return -1;
 if (memcmp(msg->session_id, h->request.session_id,
     sizeof msg->session_id) != 0) {
  generr(h, "Invalid session ID in received message");
  return -1;
 }
 if (msg->type != h->request.type) {
  generr(h, "Invalid type in received message"
     " (got %u, expected %u)",
     msg->type, h->request.type);
  return -1;
 }
 len = ntohl(msg->length);
 if (len > BODYSIZE) {
  generr(h, "Received message too large (%u > %u)",
     len, BODYSIZE);
  return -1;
 }
 if (msg->seq_no != ++h->last_seq_no) {
  generr(h, "Invalid sequence number in received message"
     " (got %u, expected %u)",
     msg->seq_no, h->last_seq_no);
  return -1;
 }


 if (read_timed(h, msg->u.body, len, &deadline) == -1)
  return -1;


 crypt_msg(h, msg);





 if (!(msg->flags & TAC_SINGLE_CONNECT))
  h->single_connect = 0;
 return 0;
}
