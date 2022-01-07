
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_incoming_t ;
typedef int apr_status_t ;


 int APR_ENOTIMPL ;

__attribute__((used)) static apr_status_t read_from_client(serf_incoming_t *client)
{
    return APR_ENOTIMPL;
}
