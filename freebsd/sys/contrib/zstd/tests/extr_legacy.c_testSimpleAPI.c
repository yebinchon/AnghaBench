
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMPRESSED ;
 int COMPRESSED_SIZE ;
 int DISPLAY (char*,...) ;
 int EXPECTED ;
 size_t ZSTD_decompress (char* const,size_t const,int ,int ) ;
 size_t const ZSTD_error_prefix_unknown ;
 int ZSTD_getErrorName (size_t const) ;
 scalar_t__ ZSTD_isError (size_t const) ;
 int free (char* const) ;
 char* malloc (size_t const) ;
 scalar_t__ memcmp (int ,char* const,size_t const) ;
 size_t strlen (int ) ;

__attribute__((used)) static int testSimpleAPI(void)
{
    size_t const size = strlen(EXPECTED);
    char* const output = malloc(size);

    if (!output) {
        DISPLAY("ERROR: Not enough memory!\n");
        return 1;
    }

    {
        size_t const ret = ZSTD_decompress(output, size, COMPRESSED, COMPRESSED_SIZE);
        if (ZSTD_isError(ret)) {
            if (ret == ZSTD_error_prefix_unknown) {
                DISPLAY("ERROR: Invalid frame magic number, was this compiled "
                        "without legacy support?\n");
            } else {
                DISPLAY("ERROR: %s\n", ZSTD_getErrorName(ret));
            }
            return 1;
        }
        if (ret != size) {
            DISPLAY("ERROR: Wrong decoded size\n");
        }
    }
    if (memcmp(EXPECTED, output, size) != 0) {
        DISPLAY("ERROR: Wrong decoded output produced\n");
        return 1;
    }

    free(output);
    DISPLAY("Simple API OK\n");
    return 0;
}
