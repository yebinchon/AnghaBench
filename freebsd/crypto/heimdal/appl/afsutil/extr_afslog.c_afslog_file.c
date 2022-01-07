
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cell ;


 int afslog_cell (char*,int ) ;
 scalar_t__ k_afs_cell_of_file (char const*,char*,int) ;
 scalar_t__ verbose ;
 int warnx (char*,char const*,...) ;

__attribute__((used)) static int
afslog_file(const char *path)
{
    char cell[64];
    if(k_afs_cell_of_file(path, cell, sizeof(cell))){
 warnx("No cell found for file \"%s\".", path);
 return -1;
    }
    if(verbose)
 warnx("File \"%s\" lives in cell \"%s\"", path, cell);
    return afslog_cell(cell, 0);
}
