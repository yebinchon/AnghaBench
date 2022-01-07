
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef int buf ;


 int evbuffer_add (struct evbuffer*,char*,int) ;
 int evbuffer_add_reference (struct evbuffer*,char*,int,int ,int *) ;
 int evbuffer_free (struct evbuffer*) ;
 struct evbuffer* evbuffer_new () ;
 int evbuffer_remove_buffer (struct evbuffer*,struct evbuffer*,int) ;
 int evbuffer_validate (struct evbuffer*) ;
 int no_cleanup ;

__attribute__((used)) static void
test_evbuffer_remove_buffer_with_empty(void *ptr)
{
    struct evbuffer *src = evbuffer_new();
    struct evbuffer *dst = evbuffer_new();
    char buf[2];

    evbuffer_validate(src);
    evbuffer_validate(dst);



    evbuffer_add_reference(src, buf, sizeof(buf), no_cleanup, ((void*)0));
    evbuffer_add_reference(src, buf, sizeof(buf), no_cleanup, ((void*)0));

    evbuffer_add(dst, buf, sizeof(buf));
    evbuffer_add_reference(dst, buf, 0, no_cleanup, ((void*)0));

    evbuffer_validate(src);
    evbuffer_validate(dst);


    evbuffer_remove_buffer(src, dst, 3);

    evbuffer_validate(src);
    evbuffer_validate(dst);

end:
    evbuffer_free(src);
    evbuffer_free(dst);
}
