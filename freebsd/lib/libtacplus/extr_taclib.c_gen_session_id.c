
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tac_msg {int* session_id; } ;


 int random () ;

__attribute__((used)) static void
gen_session_id(struct tac_msg *msg)
{
 int r;

 r = random();
 msg->session_id[0] = r >> 8;
 msg->session_id[1] = r;
 r = random();
 msg->session_id[2] = r >> 8;
 msg->session_id[3] = r;
}
