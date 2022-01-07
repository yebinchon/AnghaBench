
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EFI_STATUS ;



 int EFI_ACCESS_DENIED ;
 int EFI_BUFFER_TOO_SMALL ;
 int EFI_DEVICE_ERROR ;
 int EFI_INVALID_PARAMETER ;
 int EFI_MEDIA_CHANGED ;
 int EFI_NOT_FOUND ;
 int EFI_NO_MEDIA ;
 int EFI_OUT_OF_RESOURCES ;
 int EFI_SUCCESS ;
 int EFI_UNSUPPORTED ;
 int EFI_VOLUME_FULL ;
 int EFI_WRITE_PROTECTED ;
EFI_STATUS
errno_to_efi_status(int errno)
{
        EFI_STATUS status;

        switch (errno) {
        case 129:
                status = EFI_ACCESS_DENIED;
                break;

        case 130:
                status = EFI_BUFFER_TOO_SMALL;
                break;

        case 137:
                status = EFI_DEVICE_ERROR;
                break;

        case 138:
                status = EFI_INVALID_PARAMETER;
                break;

        case 128:
                status = EFI_MEDIA_CHANGED;
                break;

        case 131:
                status = EFI_NO_MEDIA;
                break;

        case 135:
                status = EFI_NOT_FOUND;
                break;

        case 134:
                status = EFI_OUT_OF_RESOURCES;
                break;

        case 132:
        case 136:
                status = EFI_UNSUPPORTED;
                break;

        case 133:
                status = EFI_VOLUME_FULL;
                break;

        case 139:
                status = EFI_WRITE_PROTECTED;
                break;

        case 0:
                status = EFI_SUCCESS;
                break;

        default:
                status = EFI_DEVICE_ERROR;
                break;
        }

        return (status);
}
