
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sa_query_result {int dummy; } ;
struct sa_handle {int dummy; } ;


 int get_any_records (struct sa_handle*,int ,int ,int ,int *,int ,struct sa_query_result*) ;

__attribute__((used)) static int get_all_records(struct sa_handle * h, uint16_t attr_id,
      struct sa_query_result *result)
{
 return get_any_records(h, attr_id, 0, 0, ((void*)0), 0, result);
}
