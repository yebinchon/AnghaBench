
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_METHOD ;


 int methods_bufferevent ;

__attribute__((used)) static BIO_METHOD *
BIO_s_bufferevent(void)
{
 return &methods_bufferevent;
}
