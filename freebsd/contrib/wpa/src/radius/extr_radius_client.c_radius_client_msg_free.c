
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_msg_list {int msg; } ;


 int os_free (struct radius_msg_list*) ;
 int radius_msg_free (int ) ;

__attribute__((used)) static void radius_client_msg_free(struct radius_msg_list *req)
{
 radius_msg_free(req->msg);
 os_free(req);
}
