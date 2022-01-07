
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_short ;
struct TYPE_3__ {int followedby; int token; int key; } ;


 size_t COUNTOF (TYPE_1__*) ;
 size_t create_scan_states (int ,int ,int ,size_t) ;
 int current_keyword ;
 TYPE_1__* ntp_keywords ;
 int sst_highwater ;

__attribute__((used)) static u_short
create_keyword_scanner(void)
{
 u_short scanner;
 u_short i;

 sst_highwater = 1;
 scanner = 0;

 for (i = 0; i < COUNTOF(ntp_keywords); i++) {
  current_keyword = ntp_keywords[i].key;
  scanner =
      create_scan_states(
   ntp_keywords[i].key,
   ntp_keywords[i].token,
   ntp_keywords[i].followedby,
   scanner);
 }

 return scanner;
}
