
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_file_segment {scalar_t__ refcnt; void* cleanup_cb_arg; int cleanup_cb; } ;
typedef int evbuffer_file_segment_cleanup_cb ;


 int EVUTIL_ASSERT (int) ;

void evbuffer_file_segment_add_cleanup_cb(struct evbuffer_file_segment *seg,
 evbuffer_file_segment_cleanup_cb cb, void* arg)
{
 EVUTIL_ASSERT(seg->refcnt > 0);
 seg->cleanup_cb = cb;
 seg->cleanup_cb_arg = arg;
}
