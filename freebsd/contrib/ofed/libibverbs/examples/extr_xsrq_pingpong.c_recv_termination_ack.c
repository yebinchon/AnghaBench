
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* rem_dest; } ;
struct TYPE_3__ {int sockfd; } ;


 int TERMINATION_MSG ;
 int TERMINATION_MSG_SIZE ;
 TYPE_2__ ctx ;
 int fprintf (int ,char*,...) ;
 int perror (char*) ;
 int read (int,char*,int) ;
 int stderr ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int recv_termination_ack(int index)
{
 char msg[TERMINATION_MSG_SIZE];
 int n = 0, r;
 int sockfd = ctx.rem_dest[index].sockfd;

 while (n < TERMINATION_MSG_SIZE) {
  r = read(sockfd, msg + n, TERMINATION_MSG_SIZE - n);
  if (r < 0) {
   perror("client read");
   fprintf(stderr,
    "%d/%d: Couldn't read remote termination ack\n",
    n, TERMINATION_MSG_SIZE);
   return 1;
  }
  n += r;
 }

 if (strcmp(msg, TERMINATION_MSG)) {
  fprintf(stderr, "Invalid termination ack was accepted\n");
  return 1;
 }

 return 0;
}
