
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntlm_type1 {scalar_t__ hostname; scalar_t__ domain; } ;


 int free (scalar_t__) ;
 int memset (struct ntlm_type1*,int ,int) ;

void
heim_ntlm_free_type1(struct ntlm_type1 *data)
{
    if (data->domain)
 free(data->domain);
    if (data->hostname)
 free(data->hostname);
    memset(data, 0, sizeof(*data));
}
