
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ref_done_cb_called_count ;
 void* ref_done_cb_called_with ;
 void const* ref_done_cb_called_with_data ;
 size_t ref_done_cb_called_with_len ;

__attribute__((used)) static void ref_done_cb(const void *data, size_t len, void *info)
{
 ++ref_done_cb_called_count;
 ref_done_cb_called_with = info;
 ref_done_cb_called_with_data = data;
 ref_done_cb_called_with_len = len;
}
