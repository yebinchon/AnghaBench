
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int LABEL_IS_PTR (size_t) ;
 int log_assert (int) ;

void
dname_remove_label(uint8_t** dname, size_t* len)
{
 size_t lablen;
 log_assert(dname && *dname && len);
 lablen = (*dname)[0];
 log_assert(!LABEL_IS_PTR(lablen));
 log_assert(*len > lablen);
 if(lablen == 0)
  return;
 *len -= lablen+1;
 *dname += lablen+1;
}
