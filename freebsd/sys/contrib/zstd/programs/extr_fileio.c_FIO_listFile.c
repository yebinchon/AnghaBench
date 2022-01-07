
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int info ;
typedef int fileInfo_t ;
typedef int InfoError ;


 int DISPLAYLEVEL (int,char*,char const*) ;
 int DISPLAYOUT (char*,...) ;
 int FIO_addFInfo (int ,int ) ;
 int assert (int) ;
 int displayInfo (char const*,int *,int) ;
 int getFileInfo (int *,char const*) ;





 int memset (int *,int ,int) ;

__attribute__((used)) static int
FIO_listFile(fileInfo_t* total, const char* inFileName, int displayLevel)
{
    fileInfo_t info;
    memset(&info, 0, sizeof(info));
    { InfoError const error = getFileInfo(&info, inFileName);
        switch (error) {
            case 131:

                DISPLAYLEVEL(1, "Error while parsing \"%s\" \n", inFileName);
                break;
            case 130:
                DISPLAYOUT("File \"%s\" not compressed by zstd \n", inFileName);
                if (displayLevel > 2) DISPLAYOUT("\n");
                return 1;
            case 132:

                if (displayLevel > 2) DISPLAYOUT("\n");
                return 1;
            case 128:
                DISPLAYOUT("File \"%s\" is truncated \n", inFileName);
                if (displayLevel > 2) DISPLAYOUT("\n");
                return 1;
            case 129:
            default:
                break;
        }

        displayInfo(inFileName, &info, displayLevel);
        *total = FIO_addFInfo(*total, info);
        assert(error == 129 || error == 131);
        return error;
    }
}
