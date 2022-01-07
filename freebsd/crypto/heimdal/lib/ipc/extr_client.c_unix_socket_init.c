
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int common_path_init (char const*,char*,void**) ;
 int common_release (void*) ;
 int connect_unix (void*) ;

__attribute__((used)) static int
unix_socket_init(const char *service,
   void **ctx)
{
    int ret;

    ret = common_path_init(service, "socket", ctx);
    if (ret)
 return ret;
    ret = connect_unix(*ctx);
    if (ret)
 common_release(*ctx);

    return ret;
}
