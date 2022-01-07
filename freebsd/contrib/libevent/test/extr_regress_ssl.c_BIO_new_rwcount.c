
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int * BIO_new (int ) ;
 int BIO_s_rwcount () ;
 int BIO_set_data (int *,int *) ;
 int BIO_set_init (int *,int) ;
 int BIO_set_shutdown (int *,int) ;

__attribute__((used)) static BIO *
BIO_new_rwcount(int close_flag)
{
 BIO *result;
 if (!(result = BIO_new(BIO_s_rwcount())))
  return ((void*)0);
 BIO_set_init(result, 1);
 BIO_set_data(result, ((void*)0));
 BIO_set_shutdown(result, !!close_flag);
 return result;
}
