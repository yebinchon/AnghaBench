
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlink {int file; TYPE_1__* mpage; int arch; int fsec; int dsec; int name; } ;
struct TYPE_2__ {int dba; } ;


 int DBP_ARCH ;
 int DBP_FILE ;
 int DBP_SECT ;
 int NAME_FILE ;
 int dba_page_add (int ,int ,int ) ;
 int dba_page_alias (int ,int ,int ) ;

__attribute__((used)) static void
dbadd_mlink(const struct mlink *mlink)
{
 dba_page_alias(mlink->mpage->dba, mlink->name, NAME_FILE);
 dba_page_add(mlink->mpage->dba, DBP_SECT, mlink->dsec);
 dba_page_add(mlink->mpage->dba, DBP_SECT, mlink->fsec);
 dba_page_add(mlink->mpage->dba, DBP_ARCH, mlink->arch);
 dba_page_add(mlink->mpage->dba, DBP_FILE, mlink->file);
}
