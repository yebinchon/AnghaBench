
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tagmsg_t ;
typedef int SCR ;


 int M_ERR ;
 int M_INFO ;



 int abort () ;
 int msgq (int *,int ,char*) ;
 int msgq_str (int *,int ,char*,char*) ;

void
tag_msg(SCR *sp, tagmsg_t msg, char *tag)
{
 switch (msg) {
 case 130:
  msgq_str(sp, M_ERR, tag,
     "164|%s: the tag's line number is past the end of the file");
  break;
 case 129:
  msgq(sp, M_INFO, "165|The tags stack is empty");
  break;
 case 128:
  msgq_str(sp, M_ERR, tag, "166|%s: search pattern not found");
  break;
 default:
  abort();
 }
}
