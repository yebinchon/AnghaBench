
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* Filename; int Handle; } ;
typedef int ACPI_STATUS ;


 int AE_ERROR ;
 int AE_OK ;
 int ASL_ERROR ;
 size_t ASL_FILE_ASM_INCLUDE_OUTPUT ;
 size_t ASL_FILE_ASM_SOURCE_OUTPUT ;
 size_t ASL_FILE_CONV_DEBUG_OUTPUT ;
 size_t ASL_FILE_C_INCLUDE_OUTPUT ;
 size_t ASL_FILE_C_OFFSET_OUTPUT ;
 size_t ASL_FILE_C_SOURCE_OUTPUT ;
 size_t ASL_FILE_DEBUG_OUTPUT ;
 size_t ASL_FILE_HEX_OUTPUT ;
 size_t ASL_FILE_LISTING_OUTPUT ;
 size_t ASL_FILE_MAP_OUTPUT ;
 size_t ASL_FILE_NAMESPACE_OUTPUT ;
 size_t ASL_FILE_PREPROCESSOR ;
 size_t ASL_FILE_PREPROCESSOR_USER ;
 size_t ASL_FILE_SOURCE_OUTPUT ;
 size_t ASL_FILE_XREF_OUTPUT ;
 scalar_t__ ASL_INPUT_TYPE_ASCII_DATA ;
 scalar_t__ ASL_INPUT_TYPE_BINARY_ACPI_TABLE ;
 int ASL_MSG_DEBUG_FILENAME ;
 int ASL_MSG_LISTING_FILENAME ;
 int ASL_MSG_PREPROCESSOR_FILENAME ;
 int AcpiGbl_ConvDebugFile ;
 scalar_t__ AcpiGbl_DebugAslConversion ;
 int AslCommonError (int ,int ,int ,int ,int ,int ,int *,int *) ;
 int AslCompilerFileHeader (size_t) ;
 int AslCompilerSignon (size_t) ;
 scalar_t__ AslGbl_AsmIncludeOutputFlag ;
 scalar_t__ AslGbl_AsmOutputFlag ;
 scalar_t__ AslGbl_C_IncludeOutputFlag ;
 scalar_t__ AslGbl_C_OffsetTableFlag ;
 scalar_t__ AslGbl_C_OutputFlag ;
 scalar_t__ AslGbl_CrossReferenceOutput ;
 scalar_t__ AslGbl_DebugFlag ;
 scalar_t__ AslGbl_FileType ;
 TYPE_1__* AslGbl_Files ;
 scalar_t__ AslGbl_HexOutputFlag ;
 scalar_t__ AslGbl_ListingFlag ;
 scalar_t__ AslGbl_MapfileFlag ;
 scalar_t__ AslGbl_NsOutputFlag ;
 scalar_t__ AslGbl_PreprocessFlag ;
 scalar_t__ AslGbl_PreprocessorOutputFlag ;
 int CmCleanupAndExit () ;
 int FILE_SUFFIX_ASM_INCLUDE ;
 int FILE_SUFFIX_ASM_SOURCE ;
 int FILE_SUFFIX_CONVERT_DEBUG ;
 int FILE_SUFFIX_C_INCLUDE ;
 int FILE_SUFFIX_C_OFFSET ;
 int FILE_SUFFIX_C_SOURCE ;
 int FILE_SUFFIX_DEBUG ;
 int FILE_SUFFIX_HEX_DUMP ;
 int FILE_SUFFIX_LISTING ;
 int FILE_SUFFIX_MAP ;
 int FILE_SUFFIX_NAMESPACE ;
 int FILE_SUFFIX_PREPROCESSOR ;
 int FILE_SUFFIX_PREPROC_USER ;
 int FILE_SUFFIX_SOURCE ;
 int FILE_SUFFIX_XREF ;
 char* FlGenerateFilename (char*,int ) ;
 int FlOpenFile (size_t,char*,char*) ;
 int FlPrintFile (size_t,char*) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int freopen (char*,char*,int ) ;
 int stderr ;
 int stdout ;

ACPI_STATUS
FlOpenMiscOutputFiles (
    char *FilenamePrefix)
{
    char *Filename;




    if (AslGbl_MapfileFlag)
    {
        Filename = FlGenerateFilename (FilenamePrefix, FILE_SUFFIX_MAP);
        if (!Filename)
        {
            AslCommonError (ASL_ERROR, ASL_MSG_LISTING_FILENAME,
                0, 0, 0, 0, ((void*)0), ((void*)0));
            return (AE_ERROR);
        }



        FlOpenFile (ASL_FILE_MAP_OUTPUT, Filename, "w+t");

        AslCompilerSignon (ASL_FILE_MAP_OUTPUT);
        AslCompilerFileHeader (ASL_FILE_MAP_OUTPUT);
    }



    if (AslGbl_FileType == ASL_INPUT_TYPE_BINARY_ACPI_TABLE)
    {
        return (AE_OK);
    }



    if (AslGbl_HexOutputFlag)
    {
        Filename = FlGenerateFilename (FilenamePrefix, FILE_SUFFIX_HEX_DUMP);
        if (!Filename)
        {
            AslCommonError (ASL_ERROR, ASL_MSG_LISTING_FILENAME,
                0, 0, 0, 0, ((void*)0), ((void*)0));
            return (AE_ERROR);
        }



        FlOpenFile (ASL_FILE_HEX_OUTPUT, Filename, "w+t");

        AslCompilerSignon (ASL_FILE_HEX_OUTPUT);
        AslCompilerFileHeader (ASL_FILE_HEX_OUTPUT);
    }



    if (AslGbl_DebugFlag)
    {
        Filename = FlGenerateFilename (FilenamePrefix, FILE_SUFFIX_DEBUG);
        if (!Filename)
        {
            AslCommonError (ASL_ERROR, ASL_MSG_DEBUG_FILENAME,
                0, 0, 0, 0, ((void*)0), ((void*)0));
            return (AE_ERROR);
        }



        AslGbl_Files[ASL_FILE_DEBUG_OUTPUT].Filename = Filename;
        AslGbl_Files[ASL_FILE_DEBUG_OUTPUT].Handle =
            freopen (Filename, "w+t", stderr);

        if (!AslGbl_Files[ASL_FILE_DEBUG_OUTPUT].Handle)
        {





            fprintf (stdout,
                "\nCould not open debug output file: %s\n\n", Filename);

            CmCleanupAndExit ();
            exit (1);
        }

        AslCompilerSignon (ASL_FILE_DEBUG_OUTPUT);
        AslCompilerFileHeader (ASL_FILE_DEBUG_OUTPUT);
    }



    if (AslGbl_CrossReferenceOutput)
    {
        Filename = FlGenerateFilename (FilenamePrefix, FILE_SUFFIX_XREF);
        if (!Filename)
        {
            AslCommonError (ASL_ERROR, ASL_MSG_DEBUG_FILENAME,
                0, 0, 0, 0, ((void*)0), ((void*)0));
            return (AE_ERROR);
        }

        FlOpenFile (ASL_FILE_XREF_OUTPUT, Filename, "w+t");

        AslCompilerSignon (ASL_FILE_XREF_OUTPUT);
        AslCompilerFileHeader (ASL_FILE_XREF_OUTPUT);
    }



    if (AslGbl_ListingFlag)
    {
        Filename = FlGenerateFilename (FilenamePrefix, FILE_SUFFIX_LISTING);
        if (!Filename)
        {
            AslCommonError (ASL_ERROR, ASL_MSG_LISTING_FILENAME,
                0, 0, 0, 0, ((void*)0), ((void*)0));
            return (AE_ERROR);
        }



        FlOpenFile (ASL_FILE_LISTING_OUTPUT, Filename, "w+t");

        AslCompilerSignon (ASL_FILE_LISTING_OUTPUT);
        AslCompilerFileHeader (ASL_FILE_LISTING_OUTPUT);
    }



    if (AslGbl_PreprocessFlag)
    {
        Filename = FlGenerateFilename (FilenamePrefix, FILE_SUFFIX_PREPROCESSOR);
        if (!Filename)
        {
            AslCommonError (ASL_ERROR, ASL_MSG_PREPROCESSOR_FILENAME,
                0, 0, 0, 0, ((void*)0), ((void*)0));
            return (AE_ERROR);
        }

        FlOpenFile (ASL_FILE_PREPROCESSOR, Filename, "w+t");
    }





    if (AslGbl_PreprocessorOutputFlag)
    {
        Filename = FlGenerateFilename (FilenamePrefix, FILE_SUFFIX_PREPROC_USER);
        if (!Filename)
        {
            AslCommonError (ASL_ERROR, ASL_MSG_PREPROCESSOR_FILENAME,
                0, 0, 0, 0, ((void*)0), ((void*)0));
            return (AE_ERROR);
        }

        FlOpenFile (ASL_FILE_PREPROCESSOR_USER, Filename, "w+t");
    }



    if (AslGbl_FileType == ASL_INPUT_TYPE_ASCII_DATA)
    {
        return (AE_OK);
    }



    Filename = FlGenerateFilename (FilenamePrefix, FILE_SUFFIX_SOURCE);
    if (!Filename)
    {
        AslCommonError (ASL_ERROR, ASL_MSG_LISTING_FILENAME,
            0, 0, 0, 0, ((void*)0), ((void*)0));
        return (AE_ERROR);
    }






    FlOpenFile (ASL_FILE_SOURCE_OUTPUT, Filename, "w+b");







    if (AslGbl_AsmOutputFlag)
    {
        Filename = FlGenerateFilename (FilenamePrefix, FILE_SUFFIX_ASM_SOURCE);
        if (!Filename)
        {
            AslCommonError (ASL_ERROR, ASL_MSG_LISTING_FILENAME,
                0, 0, 0, 0, ((void*)0), ((void*)0));
            return (AE_ERROR);
        }



        FlOpenFile (ASL_FILE_ASM_SOURCE_OUTPUT, Filename, "w+t");

        AslCompilerSignon (ASL_FILE_ASM_SOURCE_OUTPUT);
        AslCompilerFileHeader (ASL_FILE_ASM_SOURCE_OUTPUT);
    }



    if (AslGbl_C_OutputFlag)
    {
        Filename = FlGenerateFilename (FilenamePrefix, FILE_SUFFIX_C_SOURCE);
        if (!Filename)
        {
            AslCommonError (ASL_ERROR, ASL_MSG_LISTING_FILENAME,
                0, 0, 0, 0, ((void*)0), ((void*)0));
            return (AE_ERROR);
        }



        FlOpenFile (ASL_FILE_C_SOURCE_OUTPUT, Filename, "w+t");

        FlPrintFile (ASL_FILE_C_SOURCE_OUTPUT, "/*\n");
        AslCompilerSignon (ASL_FILE_C_SOURCE_OUTPUT);
        AslCompilerFileHeader (ASL_FILE_C_SOURCE_OUTPUT);
    }



    if (AslGbl_C_OffsetTableFlag)
    {
        Filename = FlGenerateFilename (FilenamePrefix, FILE_SUFFIX_C_OFFSET);
        if (!Filename)
        {
            AslCommonError (ASL_ERROR, ASL_MSG_LISTING_FILENAME,
                0, 0, 0, 0, ((void*)0), ((void*)0));
            return (AE_ERROR);
        }



        FlOpenFile (ASL_FILE_C_OFFSET_OUTPUT, Filename, "w+t");

        FlPrintFile (ASL_FILE_C_OFFSET_OUTPUT, "/*\n");
        AslCompilerSignon (ASL_FILE_C_OFFSET_OUTPUT);
        AslCompilerFileHeader (ASL_FILE_C_OFFSET_OUTPUT);
    }



    if (AslGbl_AsmIncludeOutputFlag)
    {
        Filename = FlGenerateFilename (FilenamePrefix, FILE_SUFFIX_ASM_INCLUDE);
        if (!Filename)
        {
            AslCommonError (ASL_ERROR, ASL_MSG_LISTING_FILENAME,
                0, 0, 0, 0, ((void*)0), ((void*)0));
            return (AE_ERROR);
        }



        FlOpenFile (ASL_FILE_ASM_INCLUDE_OUTPUT, Filename, "w+t");

        AslCompilerSignon (ASL_FILE_ASM_INCLUDE_OUTPUT);
        AslCompilerFileHeader (ASL_FILE_ASM_INCLUDE_OUTPUT);
    }



    if (AslGbl_C_IncludeOutputFlag)
    {
        Filename = FlGenerateFilename (FilenamePrefix, FILE_SUFFIX_C_INCLUDE);
        if (!Filename)
        {
            AslCommonError (ASL_ERROR, ASL_MSG_LISTING_FILENAME,
                0, 0, 0, 0, ((void*)0), ((void*)0));
            return (AE_ERROR);
        }



        FlOpenFile (ASL_FILE_C_INCLUDE_OUTPUT, Filename, "w+t");

        FlPrintFile (ASL_FILE_C_INCLUDE_OUTPUT, "/*\n");
        AslCompilerSignon (ASL_FILE_C_INCLUDE_OUTPUT);
        AslCompilerFileHeader (ASL_FILE_C_INCLUDE_OUTPUT);
    }



    if (AslGbl_NsOutputFlag)
    {
        Filename = FlGenerateFilename (FilenamePrefix, FILE_SUFFIX_NAMESPACE);
        if (!Filename)
        {
            AslCommonError (ASL_ERROR, ASL_MSG_LISTING_FILENAME,
                0, 0, 0, 0, ((void*)0), ((void*)0));
            return (AE_ERROR);
        }



        FlOpenFile (ASL_FILE_NAMESPACE_OUTPUT, Filename, "w+t");

        AslCompilerSignon (ASL_FILE_NAMESPACE_OUTPUT);
        AslCompilerFileHeader (ASL_FILE_NAMESPACE_OUTPUT);
    }



    if (AcpiGbl_DebugAslConversion)
    {
        Filename = FlGenerateFilename (FilenamePrefix, FILE_SUFFIX_CONVERT_DEBUG);
        if (!Filename)
        {
            AslCommonError (ASL_ERROR, ASL_MSG_LISTING_FILENAME,
                0, 0, 0, 0, ((void*)0), ((void*)0));
            return (AE_ERROR);
        }



        FlOpenFile (ASL_FILE_CONV_DEBUG_OUTPUT, Filename, "w+t");

        AslCompilerSignon (ASL_FILE_CONV_DEBUG_OUTPUT);
        AslCompilerFileHeader (ASL_FILE_CONV_DEBUG_OUTPUT);

        AcpiGbl_ConvDebugFile = AslGbl_Files[ASL_FILE_CONV_DEBUG_OUTPUT].Handle;
    }

    return (AE_OK);
}
