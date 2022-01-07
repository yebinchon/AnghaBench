
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {char* strmode; } ;
typedef int mode_t ;
 int S_ISGID ;
 int S_ISUID ;
 int S_ISVTX ;
 scalar_t__ archive_entry_acl_types (struct archive_entry*) ;
 int archive_entry_filetype (struct archive_entry*) ;
 int * archive_entry_hardlink (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int strcpy (char*,char*) ;

const char *
archive_entry_strmode(struct archive_entry *entry)
{
 static const mode_t permbits[] =
     { 0400, 0200, 0100, 0040, 0020, 0010, 0004, 0002, 0001 };
 char *bp = entry->strmode;
 mode_t mode;
 int i;


 strcpy(bp, "?rwxrwxrwx ");

 mode = archive_entry_mode(entry);
 switch (archive_entry_filetype(entry)) {
 case 129: bp[0] = '-'; break;
 case 134: bp[0] = 'b'; break;
 case 133: bp[0] = 'c'; break;
 case 132: bp[0] = 'd'; break;
 case 130: bp[0] = 'l'; break;
 case 128: bp[0] = 's'; break;
 case 131: bp[0] = 'p'; break;
 default:
  if (archive_entry_hardlink(entry) != ((void*)0)) {
   bp[0] = 'h';
   break;
  }
 }

 for (i = 0; i < 9; i++)
  if (!(mode & permbits[i]))
   bp[i+1] = '-';

 if (mode & S_ISUID) {
  if (mode & 0100) bp[3] = 's';
  else bp[3] = 'S';
 }
 if (mode & S_ISGID) {
  if (mode & 0010) bp[6] = 's';
  else bp[6] = 'S';
 }
 if (mode & S_ISVTX) {
  if (mode & 0001) bp[9] = 't';
  else bp[9] = 'T';
 }
 if (archive_entry_acl_types(entry) != 0)
  bp[10] = '+';

 return (bp);
}
