
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abd_t ;


 void* abd_borrow_buf (int *,size_t) ;
 int abd_copy_to_buf (void*,int *,size_t) ;
 int abd_is_linear (int *) ;

void *
abd_borrow_buf_copy(abd_t *abd, size_t n)
{
 void *buf = abd_borrow_buf(abd, n);
 if (!abd_is_linear(abd)) {
  abd_copy_to_buf(buf, abd, n);
 }
 return (buf);
}
