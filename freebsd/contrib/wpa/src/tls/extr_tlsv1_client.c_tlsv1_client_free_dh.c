
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_client {int * dh_ys; int * dh_g; int * dh_p; } ;


 int os_free (int *) ;

void tlsv1_client_free_dh(struct tlsv1_client *conn)
{
 os_free(conn->dh_p);
 os_free(conn->dh_g);
 os_free(conn->dh_ys);
 conn->dh_p = conn->dh_g = conn->dh_ys = ((void*)0);
}
