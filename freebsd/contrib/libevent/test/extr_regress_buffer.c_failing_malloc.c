
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int errno ;

__attribute__((used)) static void *
failing_malloc(size_t how_much)
{
 errno = ENOMEM;
 return ((void*)0);
}
