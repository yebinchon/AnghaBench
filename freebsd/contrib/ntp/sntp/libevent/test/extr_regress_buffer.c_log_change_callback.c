
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_cb_info {size_t orig_size; size_t n_added; size_t n_deleted; } ;
struct evbuffer {int dummy; } ;


 int evbuffer_add_printf (struct evbuffer*,char*,unsigned long,unsigned long) ;

__attribute__((used)) static void
log_change_callback(struct evbuffer *buffer,
    const struct evbuffer_cb_info *cbinfo,
    void *arg)
{

 size_t old_len = cbinfo->orig_size;
 size_t new_len = old_len + cbinfo->n_added - cbinfo->n_deleted;
 struct evbuffer *out = arg;
 evbuffer_add_printf(out, "%lu->%lu; ", (unsigned long)old_len,
       (unsigned long)new_len);
}
