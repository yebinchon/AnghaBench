
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct ikev2_initiator_data {int state; } ;






 struct wpabuf* ikev2_build_sa_auth (struct ikev2_initiator_data*) ;
 struct wpabuf* ikev2_build_sa_init (struct ikev2_initiator_data*) ;

struct wpabuf * ikev2_initiator_build(struct ikev2_initiator_data *data)
{
 switch (data->state) {
 case 128:
  return ikev2_build_sa_init(data);
 case 129:
  return ikev2_build_sa_auth(data);
 case 131:
  return ((void*)0);
 case 130:
  return ((void*)0);
 }
 return ((void*)0);
}
