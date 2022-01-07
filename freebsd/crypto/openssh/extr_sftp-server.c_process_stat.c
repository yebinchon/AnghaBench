
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int process_do_stat (int ,int ) ;

__attribute__((used)) static void
process_stat(u_int32_t id)
{
 process_do_stat(id, 0);
}
