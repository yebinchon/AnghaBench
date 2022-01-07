
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONGEST ;


 int builtin_type_int ;
 int lookup_internalvar (char*) ;
 int set_internalvar (int ,int ) ;
 int traceframe_number ;
 int value_from_longest (int ,int ) ;

__attribute__((used)) static void
set_traceframe_num (int num)
{
  traceframe_number = num;
  set_internalvar (lookup_internalvar ("trace_frame"),
     value_from_longest (builtin_type_int, (LONGEST) num));
}
