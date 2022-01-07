
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct evbuffer {int dummy; } ;


 int EVBUFFER_INITIAL_LENGTH ;
 int evbuffer_add (struct evbuffer*,int *,int) ;
 int evbuffer_drain (struct evbuffer*,int) ;
 int * evbuffer_find (struct evbuffer*,int *,int) ;
 int evbuffer_free (struct evbuffer*) ;
 struct evbuffer* evbuffer_new () ;
 int evbuffer_validate (struct evbuffer*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int tt_assert (struct evbuffer*) ;
 int tt_want (int) ;

__attribute__((used)) static void
test_evbuffer_find(void *ptr)
{
 u_char* p;
 const char* test1 = "1234567890\r\n";
 const char* test2 = "1234567890\r";

 char test3[256];
 unsigned int i;
 struct evbuffer * buf = evbuffer_new();

 tt_assert(buf);


 evbuffer_add(buf, (u_char*)test1, strlen(test1));
 evbuffer_validate(buf);
 evbuffer_drain(buf, strlen(test1));
 evbuffer_validate(buf);
 evbuffer_add(buf, (u_char*)test2, strlen(test2));
 evbuffer_validate(buf);
 p = evbuffer_find(buf, (u_char*)"\r\n", 2);
 tt_want(p == ((void*)0));





 evbuffer_drain(buf, strlen(test2));
 evbuffer_validate(buf);
 for (i = 0; i < 256; ++i)
  test3[i] = 'a';
 test3[256 - 1] = 'x';
 evbuffer_add(buf, (u_char *)test3, 256);
 evbuffer_validate(buf);
 p = evbuffer_find(buf, (u_char *)"xy", 2);
 tt_want(p == ((void*)0));


 p = evbuffer_find(buf, (u_char *)"ax", 2);
 tt_assert(p != ((void*)0));
 tt_want(strncmp((char*)p, "ax", 2) == 0);

end:
 if (buf)
  evbuffer_free(buf);
}
