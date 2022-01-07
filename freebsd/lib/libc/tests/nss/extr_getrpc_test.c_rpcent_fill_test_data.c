
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcent_test_data {int dummy; } ;
struct rpcent {int dummy; } ;


 int TEST_DATA_APPEND (int ,struct rpcent_test_data*,struct rpcent*) ;
 int endrpcent () ;
 struct rpcent* getrpcent () ;
 int rpcent ;
 scalar_t__ rpcent_test_correctness (struct rpcent*,int *) ;
 int setrpcent (int) ;

__attribute__((used)) static int
rpcent_fill_test_data(struct rpcent_test_data *td)
{
 struct rpcent *rpc;

 setrpcent(1);
 while ((rpc = getrpcent()) != ((void*)0)) {
  if (rpcent_test_correctness(rpc, ((void*)0)) == 0)
   TEST_DATA_APPEND(rpcent, td, rpc);
  else
   return (-1);
 }
 endrpcent();

 return (0);
}
