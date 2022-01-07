
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ostream_tail; int * ostream_head; } ;
typedef TYPE_1__ serf_connection_t ;


 int serf_bucket_destroy (int *) ;

__attribute__((used)) static void destroy_ostream(serf_connection_t *conn)
{
    if (conn->ostream_head != ((void*)0)) {
        serf_bucket_destroy(conn->ostream_head);
        conn->ostream_head = ((void*)0);
        conn->ostream_tail = ((void*)0);
    }
}
