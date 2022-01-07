
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int recno_t ;
typedef int buf ;
struct TYPE_8__ {int * ep; } ;
typedef TYPE_1__ SCR ;
typedef int EXF ;


 int OS_STRDUP ;
 int O_FILEENCODING ;
 int O_ISSET (TYPE_1__*,int ) ;
 int O_STR (TYPE_1__*,int ) ;
 char* codeset () ;
 int conv_enc (TYPE_1__*,int ,int ) ;
 int db_rget (TYPE_1__*,int ,char**,size_t*) ;
 int looks_utf8 (char*,size_t) ;
 int memcpy (char*,char*,size_t) ;
 int o_set (TYPE_1__*,int ,int ,char*,int ) ;
 int strcasecmp (int ,char*) ;

__attribute__((used)) static void
file_encinit(SCR *sp)
{
}
