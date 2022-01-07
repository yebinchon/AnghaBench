
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_client {unsigned int flags; } ;



void tlsv1_client_set_flags(struct tlsv1_client *conn, unsigned int flags)
{
 conn->flags = flags;
}
