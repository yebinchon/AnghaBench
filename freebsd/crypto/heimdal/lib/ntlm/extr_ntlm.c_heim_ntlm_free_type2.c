
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntlm_type2 {int targetinfo; scalar_t__ targetname; } ;


 int free (scalar_t__) ;
 int heim_ntlm_free_buf (int *) ;
 int memset (struct ntlm_type2*,int ,int) ;

void
heim_ntlm_free_type2(struct ntlm_type2 *data)
{
    if (data->targetname)
 free(data->targetname);
    heim_ntlm_free_buf(&data->targetinfo);
    memset(data, 0, sizeof(*data));
}
