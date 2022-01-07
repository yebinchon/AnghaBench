
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_printf (int *,char*,...) ;
 unsigned int ENGINE_CMD_FLAG_INTERNAL ;
 unsigned int ENGINE_CMD_FLAG_NO_INPUT ;
 unsigned int ENGINE_CMD_FLAG_NUMERIC ;
 unsigned int ENGINE_CMD_FLAG_STRING ;

__attribute__((used)) static int util_flags(BIO *out, unsigned int flags, const char *indent)
{
    int started = 0, err = 0;

    BIO_printf(out, "%s%s(input flags): ", indent, indent);
    if (flags == 0) {
        BIO_printf(out, "<no flags>\n");
        return 1;
    }




    if (flags & ENGINE_CMD_FLAG_INTERNAL) {
        BIO_printf(out, "[Internal] ");
    }

    if (flags & ENGINE_CMD_FLAG_NUMERIC) {
        BIO_printf(out, "NUMERIC");
        started = 1;
    }






    if (flags & ENGINE_CMD_FLAG_STRING) {
        if (started) {
            BIO_printf(out, "|");
            err = 1;
        }
        BIO_printf(out, "STRING");
        started = 1;
    }
    if (flags & ENGINE_CMD_FLAG_NO_INPUT) {
        if (started) {
            BIO_printf(out, "|");
            err = 1;
        }
        BIO_printf(out, "NO_INPUT");
        started = 1;
    }

    flags = flags & ~ENGINE_CMD_FLAG_NUMERIC &
        ~ENGINE_CMD_FLAG_STRING &
        ~ENGINE_CMD_FLAG_NO_INPUT & ~ENGINE_CMD_FLAG_INTERNAL;
    if (flags) {
        if (started)
            BIO_printf(out, "|");
        BIO_printf(out, "<0x%04X>", flags);
    }
    if (err)
        BIO_printf(out, "  <illegal flags!>");
    BIO_printf(out, "\n");
    return 1;
}
