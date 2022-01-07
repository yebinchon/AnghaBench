
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CA_DB ;


 int print_entry (int *,int,int,char*) ;

__attribute__((used)) static void print_index(CA_DB *db, int indexindex, int verbose)
{
    print_entry(db, indexindex, verbose, "g N entry");
}
