
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int u_long ;
struct proc_handle {int dummy; } ;
struct TYPE_8__ {int pr_mapname; } ;
typedef TYPE_1__ prmap_t ;
struct TYPE_9__ {scalar_t__ st_value; } ;
typedef TYPE_2__ GElf_Sym ;


 int ATF_CHECK_EQ_MSG (int ,scalar_t__,char*,int ,int ) ;
 int ATF_REQUIRE (int ) ;
 int ATF_REQUIRE_EQ (int ,int ) ;
 int ATF_REQUIRE_EQ_MSG (int,int ,char*,...) ;
 int ATF_REQUIRE_MSG (int ,char*,int ) ;
 int PS_STOP ;
 int REG_PC ;
 char* basename (char*) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memcmp (TYPE_2__*,TYPE_2__*,int) ;
 TYPE_1__* proc_addr2map (struct proc_handle*,int ) ;
 int proc_addr2sym (struct proc_handle*,int ,char*,size_t,TYPE_2__*) ;
 int proc_bkptregadj (int *) ;
 int proc_regget (struct proc_handle*,int ,int *) ;
 int proc_wstatus (struct proc_handle*) ;
 int strcmp (char const*,char*) ;
 char* strdup (int ) ;
 int strlen (char const*) ;
 int target_prog_file ;

__attribute__((used)) static void
verify_bkpt(struct proc_handle *phdl, GElf_Sym *sym, const char *symname,
    const char *mapname)
{
 char *name, *mapname_copy, *mapbname;
 GElf_Sym tsym;
 prmap_t *map;
 size_t namesz;
 u_long addr;
 int error, state;

 state = proc_wstatus(phdl);
 ATF_REQUIRE_EQ_MSG(state, PS_STOP, "process has state %d", state);


 error = proc_regget(phdl, REG_PC, &addr);
 ATF_REQUIRE_EQ_MSG(error, 0, "failed to obtain PC for '%s'",
     target_prog_file);
 proc_bkptregadj(&addr);





 ATF_CHECK_EQ_MSG(addr, sym->st_value,
     "program counter 0x%lx doesn't match expected value 0x%jx",
     addr, (uintmax_t)sym->st_value);






 namesz = strlen(symname) + 1;
 name = malloc(namesz);
 ATF_REQUIRE(name != ((void*)0));

 error = proc_addr2sym(phdl, addr, name, namesz, &tsym);
 ATF_REQUIRE_EQ_MSG(error, 0, "failed to look up symbol at 0x%lx", addr);
 ATF_REQUIRE_EQ(memcmp(sym, &tsym, sizeof(*sym)), 0);
 ATF_REQUIRE_EQ(strcmp(symname, name), 0);
 free(name);

 map = proc_addr2map(phdl, addr);
 ATF_REQUIRE_MSG(map != ((void*)0), "failed to look up map for address 0x%lx",
     addr);
 mapname_copy = strdup(map->pr_mapname);
 mapbname = basename(mapname_copy);
 ATF_REQUIRE_EQ_MSG(strcmp(mapname, mapbname), 0,
     "expected map name '%s' doesn't match '%s'", mapname, mapbname);
 free(mapname_copy);
}
