
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptr ;
typedef int SOCKET ;
typedef int GUID ;
typedef int DWORD ;


 int SIO_GET_EXTENSION_FUNCTION_POINTER ;
 int WSAIoctl (int ,int ,int *,int,void**,int,int *,int *,int *) ;

__attribute__((used)) static void *
get_extension_function(SOCKET s, const GUID *which_fn)
{
 void *ptr = ((void*)0);
 DWORD bytes=0;
 WSAIoctl(s, SIO_GET_EXTENSION_FUNCTION_POINTER,
     (GUID*)which_fn, sizeof(*which_fn),
     &ptr, sizeof(ptr),
     &bytes, ((void*)0), ((void*)0));





 return ptr;
}
