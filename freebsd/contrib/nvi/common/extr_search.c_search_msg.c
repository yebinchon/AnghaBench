
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smsg_t ;
typedef int SCR ;


 int M_ERR ;






 int abort () ;
 int msgq (int *,int ,char*) ;

__attribute__((used)) static void
search_msg(
 SCR *sp,
 smsg_t msg)
{
 switch (msg) {
 case 133:
  msgq(sp, M_ERR, "072|File empty; nothing to search");
  break;
 case 132:
  msgq(sp, M_ERR,
      "073|Reached end-of-file without finding the pattern");
  break;
 case 131:
  msgq(sp, M_ERR, "074|No previous search pattern");
  break;
 case 130:
  msgq(sp, M_ERR, "075|Pattern not found");
  break;
 case 129:
  msgq(sp, M_ERR,
      "076|Reached top-of-file without finding the pattern");
  break;
 case 128:
  msgq(sp, M_ERR, "077|Search wrapped");
  break;
 default:
  abort();
 }
}
