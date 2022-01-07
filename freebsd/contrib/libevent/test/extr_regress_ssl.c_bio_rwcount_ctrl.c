
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;
 long BIO_get_shutdown (int *) ;
 int BIO_set_shutdown (int *,int) ;

__attribute__((used)) static long
bio_rwcount_ctrl(BIO *b, int cmd, long num, void *ptr)
{
 long ret = 0;
 switch (cmd) {
 case 131:
  ret = BIO_get_shutdown(b);
  break;
 case 129:
  BIO_set_shutdown(b, (int)num);
  break;
 case 130:
  ret = 0;
  break;
 case 128:
  ret = 0;
  break;
 case 133:
 case 132:
  ret = 1;
  break;
 }
 return ret;
}
