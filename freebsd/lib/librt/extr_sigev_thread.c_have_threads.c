
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _pthread_create ;

__attribute__((used)) static __inline int
have_threads(void)
{
 return (&_pthread_create != ((void*)0));
}
