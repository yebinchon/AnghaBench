
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _pthread_key_create (int *,int ) ;
 int free ;
 int localtime_key ;
 int localtime_key_error ;

__attribute__((used)) static void
localtime_key_init(void)
{

 localtime_key_error = _pthread_key_create(&localtime_key, free);
}
