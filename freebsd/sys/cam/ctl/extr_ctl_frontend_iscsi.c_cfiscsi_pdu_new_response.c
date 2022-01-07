
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icl_pdu {int ip_conn; } ;


 struct icl_pdu* icl_pdu_new (int ,int) ;

__attribute__((used)) static struct icl_pdu *
cfiscsi_pdu_new_response(struct icl_pdu *request, int flags)
{

 return (icl_pdu_new(request->ip_conn, flags));
}
