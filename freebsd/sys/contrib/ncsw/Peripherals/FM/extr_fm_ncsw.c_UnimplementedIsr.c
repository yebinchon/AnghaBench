
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_Handle ;


 int E_NOT_SUPPORTED ;
 int MAJOR ;
 int REPORT_ERROR (int ,int ,char*) ;
 int UNUSED (int ) ;

__attribute__((used)) static void UnimplementedIsr(t_Handle h_Arg)
{
    UNUSED(h_Arg);

    REPORT_ERROR(MAJOR, E_NOT_SUPPORTED, ("Unimplemented ISR!"));
}
