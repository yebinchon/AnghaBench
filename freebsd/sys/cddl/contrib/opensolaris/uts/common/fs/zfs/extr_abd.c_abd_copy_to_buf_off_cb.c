
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf_arg {char* arg_buf; } ;


 int memcpy (char*,void*,size_t) ;

__attribute__((used)) static int
abd_copy_to_buf_off_cb(void *buf, size_t size, void *private)
{
 struct buf_arg *ba_ptr = private;

 (void) memcpy(ba_ptr->arg_buf, buf, size);
 ba_ptr->arg_buf = (char *)ba_ptr->arg_buf + size;

 return (0);
}
