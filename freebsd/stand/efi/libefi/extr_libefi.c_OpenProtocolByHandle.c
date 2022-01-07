
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* OpenProtocol ) (int ,int *,void**,int ,int *,int ) ;} ;
typedef int EFI_STATUS ;
typedef int EFI_HANDLE ;
typedef int EFI_GUID ;


 TYPE_1__* BS ;
 int EFI_OPEN_PROTOCOL_BY_HANDLE_PROTOCOL ;
 int IH ;
 int stub1 (int ,int *,void**,int ,int *,int ) ;

EFI_STATUS
OpenProtocolByHandle(EFI_HANDLE handle, EFI_GUID *protocol, void **interface)
{
 return (BS->OpenProtocol(handle, protocol, interface, IH, ((void*)0),
     EFI_OPEN_PROTOCOL_BY_HANDLE_PROTOCOL));
}
