
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TS_RESP_CTX ;
typedef int ASN1_INTEGER ;


 int TS_INFO_ADD_INFO_NOT_AVAILABLE ;
 int TS_RESP_CTX_add_failure_info (int *,int ) ;
 int TS_RESP_CTX_set_status_info (int *,int ,char*) ;
 int TS_STATUS_REJECTION ;
 int * next_serial (char const*) ;
 int save_ts_serial (char const*,int *) ;

__attribute__((used)) static ASN1_INTEGER *serial_cb(TS_RESP_CTX *ctx, void *data)
{
    const char *serial_file = (const char *)data;
    ASN1_INTEGER *serial = next_serial(serial_file);

    if (serial == ((void*)0)) {
        TS_RESP_CTX_set_status_info(ctx, TS_STATUS_REJECTION,
                                    "Error during serial number "
                                    "generation.");
        TS_RESP_CTX_add_failure_info(ctx, TS_INFO_ADD_INFO_NOT_AVAILABLE);
    } else {
        save_ts_serial(serial_file, serial);
    }

    return serial;
}
