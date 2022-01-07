
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* as_pointer; } ;
typedef TYPE_1__ isc_symvalue_t ;


 int ATF_REQUIRE_EQ (unsigned int,int) ;
 int UNUSED (void*) ;
 int isc_mem_free (int ,char*) ;
 int mctx ;

__attribute__((used)) static void
undefine(char *key, unsigned int type, isc_symvalue_t value, void *arg) {
 UNUSED(arg);

 ATF_REQUIRE_EQ(type, 1);
 isc_mem_free(mctx, key);
 isc_mem_free(mctx, value.as_pointer);
}
