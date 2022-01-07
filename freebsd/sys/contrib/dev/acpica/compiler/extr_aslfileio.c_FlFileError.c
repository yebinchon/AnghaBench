
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
typedef size_t UINT32 ;
struct TYPE_4__ {char* Description; } ;
struct TYPE_3__ {char* Filename; } ;


 int ASL_ERROR ;
 int AslCommonError (int ,int ,int ,int ,int ,int ,int *,int ) ;
 TYPE_2__* AslGbl_FileDescs ;
 TYPE_1__* AslGbl_Files ;
 int AslGbl_MsgBuffer ;
 int errno ;
 int sprintf (int ,char*,char*,char*,char*) ;
 char* strerror (int ) ;

void
FlFileError (
    UINT32 FileId,
    UINT8 ErrorId)
{

    sprintf (AslGbl_MsgBuffer, "\"%s\" (%s) - %s", AslGbl_Files[FileId].Filename,
        AslGbl_FileDescs[FileId].Description, strerror (errno));

    AslCommonError (ASL_ERROR, ErrorId, 0, 0, 0, 0, ((void*)0), AslGbl_MsgBuffer);
}
