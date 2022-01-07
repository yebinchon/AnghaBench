
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scard_data {int sim_type; } ;


 int _scard_select_file (struct scard_data*,unsigned short,unsigned char*,size_t*,int ,int *,int ) ;

__attribute__((used)) static int scard_select_file(struct scard_data *scard, unsigned short file_id,
        unsigned char *buf, size_t *buf_len)
{
 return _scard_select_file(scard, file_id, buf, buf_len,
      scard->sim_type, ((void*)0), 0);
}
