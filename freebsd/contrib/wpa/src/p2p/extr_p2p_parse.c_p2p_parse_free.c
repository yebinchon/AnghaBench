
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_message {int * wfd_subelems; int * wps_attributes; int * p2p_attributes; } ;


 int wpabuf_free (int *) ;

void p2p_parse_free(struct p2p_message *msg)
{
 wpabuf_free(msg->p2p_attributes);
 msg->p2p_attributes = ((void*)0);
 wpabuf_free(msg->wps_attributes);
 msg->wps_attributes = ((void*)0);




}
