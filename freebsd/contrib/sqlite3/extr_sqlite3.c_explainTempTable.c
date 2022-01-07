
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Parse ;


 int ExplainQueryPlan (int *) ;

__attribute__((used)) static void explainTempTable(Parse *pParse, const char *zUsage){
  ExplainQueryPlan((pParse, 0, "USE TEMP B-TREE FOR %s", zUsage));
}
