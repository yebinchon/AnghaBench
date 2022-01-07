
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int32_t ;
struct TYPE_4__ {char* key; scalar_t__ data; } ;
typedef TYPE_1__ ENTRY ;


 int FIND ;
 scalar_t__ hsearch_r (TYPE_1__,int ,TYPE_1__**,int *) ;
 int qid_map ;

__attribute__((used)) static u_int32_t
qname_to_qid(char *qname)
{
 ENTRY item;
 ENTRY *ret_item;
 uint32_t qid;





 item.key = qname;
 if (hsearch_r(item, FIND, &ret_item, &qid_map) == 0)
  return (0);

 qid = *(uint32_t *)ret_item->data;
 return (qid);
}
