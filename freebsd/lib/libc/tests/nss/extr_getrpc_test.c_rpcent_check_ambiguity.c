
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcent_test_data {int dummy; } ;
struct rpcent {int dummy; } ;


 int * TEST_DATA_FIND (int ,struct rpcent_test_data*,struct rpcent*,int ,int *) ;
 int compare_rpcent ;
 int rpcent ;

__attribute__((used)) static int
rpcent_check_ambiguity(struct rpcent_test_data *td, struct rpcent *rpc)
{

 return (TEST_DATA_FIND(rpcent, td, rpc, compare_rpcent,
  ((void*)0)) != ((void*)0) ? 0 : -1);
}
