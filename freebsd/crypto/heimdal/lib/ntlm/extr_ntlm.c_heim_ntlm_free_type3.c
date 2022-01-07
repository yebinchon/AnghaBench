
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntlm_type3 {int sessionkey; scalar_t__ ws; scalar_t__ username; scalar_t__ targetname; int ntlm; int lm; } ;


 int free (scalar_t__) ;
 int heim_ntlm_free_buf (int *) ;
 int memset (struct ntlm_type3*,int ,int) ;

void
heim_ntlm_free_type3(struct ntlm_type3 *data)
{
    heim_ntlm_free_buf(&data->lm);
    heim_ntlm_free_buf(&data->ntlm);
    if (data->targetname)
 free(data->targetname);
    if (data->username)
 free(data->username);
    if (data->ws)
 free(data->ws);
    heim_ntlm_free_buf(&data->sessionkey);
    memset(data, 0, sizeof(*data));
}
