
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msg_hdr {int command; int len; int id; int data; scalar_t__ version; } ;


 int CMD_RESP ;
 int rsend (int,char*,int,int ) ;

__attribute__((used)) static void msg_send_resp(int rs, struct msg_hdr *msg, uint32_t status)
{
 struct msg_hdr resp;

 resp.version = 0;
 resp.command = msg->command | CMD_RESP;
 resp.len = sizeof resp;
 resp.data = status;
 resp.id = msg->id;
 rsend(rs, (char *) &resp, sizeof resp, 0);
}
