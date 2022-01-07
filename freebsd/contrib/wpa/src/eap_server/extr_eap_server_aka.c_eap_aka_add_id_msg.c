
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct eap_aka_data {int * id_msgs; } ;


 int * wpabuf_dup (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;
 int wpabuf_put_buf (int *,struct wpabuf const*) ;
 scalar_t__ wpabuf_resize (int **,int ) ;

__attribute__((used)) static int eap_aka_add_id_msg(struct eap_aka_data *data,
         const struct wpabuf *msg)
{
 if (msg == ((void*)0))
  return -1;

 if (data->id_msgs == ((void*)0)) {
  data->id_msgs = wpabuf_dup(msg);
  return data->id_msgs == ((void*)0) ? -1 : 0;
 }

 if (wpabuf_resize(&data->id_msgs, wpabuf_len(msg)) < 0)
  return -1;
 wpabuf_put_buf(data->id_msgs, msg);

 return 0;
}
