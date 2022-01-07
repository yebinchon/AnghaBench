
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* rem_dest; } ;
struct TYPE_3__ {int sockfd; } ;


 char* TERMINATION_FORMAT ;
 int TERMINATION_MSG ;
 int TERMINATION_MSG_SIZE ;
 TYPE_2__ ctx ;
 int fprintf (int ,char*) ;
 int sprintf (char*,char*,int ) ;
 int stderr ;
 int write (int,char*,int) ;

__attribute__((used)) static int send_termination_ack(int index)
{
 char msg[TERMINATION_MSG_SIZE];
 int sockfd = ctx.rem_dest[index].sockfd;

 sprintf(msg, TERMINATION_FORMAT, TERMINATION_MSG);

 if (write(sockfd, msg, TERMINATION_MSG_SIZE) != TERMINATION_MSG_SIZE) {
  fprintf(stderr, "Couldn't send termination ack\n");
  return 1;
 }

 return 0;
}
