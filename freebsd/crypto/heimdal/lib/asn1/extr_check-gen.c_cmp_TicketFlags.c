
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TicketFlags ;


 scalar_t__ TicketFlags2int (int ) ;

__attribute__((used)) static int
cmp_TicketFlags (void *a, void *b)
{
    TicketFlags *aa = a;
    TicketFlags *ab = b;

    return TicketFlags2int(*aa) != TicketFlags2int(*ab);
}
