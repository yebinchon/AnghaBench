
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct receive_sa {int dummy; } ;
struct ieee802_1x_kay {int dummy; } ;


 int ieee802_1x_kay_deinit_receive_sa (struct receive_sa*) ;
 int secy_delete_receive_sa (struct ieee802_1x_kay*,struct receive_sa*) ;
 int secy_disable_receive_sa (struct ieee802_1x_kay*,struct receive_sa*) ;

__attribute__((used)) static void ieee802_1x_delete_receive_sa(struct ieee802_1x_kay *kay,
      struct receive_sa *sa)
{
 secy_disable_receive_sa(kay, sa);
 secy_delete_receive_sa(kay, sa);
 ieee802_1x_kay_deinit_receive_sa(sa);
}
