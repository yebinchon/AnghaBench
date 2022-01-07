
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_compressionParameters ;
typedef int BMK_benchOutcome_t ;
typedef int BMK_advancedParams_t ;


 int BMK_benchFilesAdvanced (char const* const*,unsigned int,char const*,int,int const*,int,int const*) ;
 int BMK_initAdvancedParams () ;

BMK_benchOutcome_t BMK_benchFiles(
                    const char* const * fileNamesTable, unsigned nbFiles,
                    const char* dictFileName,
                    int cLevel, const ZSTD_compressionParameters* compressionParams,
                    int displayLevel)
{
    BMK_advancedParams_t const adv = BMK_initAdvancedParams();
    return BMK_benchFilesAdvanced(fileNamesTable, nbFiles, dictFileName, cLevel, compressionParams, displayLevel, &adv);
}
