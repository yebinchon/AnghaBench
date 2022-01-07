
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int i; } ;
typedef TYPE_1__ krb5_ticket_flags ;
typedef int krb5_context ;
typedef int ff ;
struct TYPE_7__ {int proxy; } ;
typedef TYPE_2__ TicketFlags ;


 size_t TicketFlags2int (TYPE_2__) ;
 int asn1_TicketFlags_units () ;
 int bitswap32 (int) ;
 int krb5_errx (int ,int,char*,char const*) ;
 int memset (TYPE_2__*,int ,int) ;
 int parse_flags (char const*,int ,int ) ;

__attribute__((used)) static void
parse_ticket_flags(krb5_context context,
     const char *string, krb5_ticket_flags *ret_flags)
{
    TicketFlags ff;
    int flags = parse_flags(string, asn1_TicketFlags_units(), 0);
    if (flags == -1)
 krb5_errx(context, 1, "bad flags specified: \"%s\"", string);

    memset(&ff, 0, sizeof(ff));
    ff.proxy = 1;
    if ((size_t)parse_flags("proxy", asn1_TicketFlags_units(), 0) == TicketFlags2int(ff))
 ret_flags->i = flags;
    else
 ret_flags->i = bitswap32(flags);
}
