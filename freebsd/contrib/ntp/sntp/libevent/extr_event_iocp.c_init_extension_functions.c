
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct win32_extension_fns {void* GetAcceptExSockaddrs; void* ConnectEx; void* AcceptEx; } ;
typedef scalar_t__ SOCKET ;
typedef int GUID ;


 int AF_INET ;
 scalar_t__ INVALID_SOCKET ;
 int SOCK_STREAM ;
 int WSAID_ACCEPTEX ;
 int WSAID_CONNECTEX ;
 int WSAID_GETACCEPTEXSOCKADDRS ;
 int closesocket (scalar_t__) ;
 int extension_fns_initialized ;
 void* get_extension_function (scalar_t__,int const*) ;
 scalar_t__ socket (int ,int ,int ) ;

__attribute__((used)) static void
init_extension_functions(struct win32_extension_fns *ext)
{
 const GUID acceptex = WSAID_ACCEPTEX;
 const GUID connectex = WSAID_CONNECTEX;
 const GUID getacceptexsockaddrs = WSAID_GETACCEPTEXSOCKADDRS;
 SOCKET s = socket(AF_INET, SOCK_STREAM, 0);
 if (s == INVALID_SOCKET)
  return;
 ext->AcceptEx = get_extension_function(s, &acceptex);
 ext->ConnectEx = get_extension_function(s, &connectex);
 ext->GetAcceptExSockaddrs = get_extension_function(s,
     &getacceptexsockaddrs);
 closesocket(s);

 extension_fns_initialized = 1;
}
