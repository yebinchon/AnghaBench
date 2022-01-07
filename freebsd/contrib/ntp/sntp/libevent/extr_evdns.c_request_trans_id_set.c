
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct request {scalar_t__ request; int trans_id; } ;


 int htons (int const) ;

__attribute__((used)) static void
request_trans_id_set(struct request *const req, const u16 trans_id) {
 req->trans_id = trans_id;
 *((u16 *) req->request) = htons(trans_id);
}
