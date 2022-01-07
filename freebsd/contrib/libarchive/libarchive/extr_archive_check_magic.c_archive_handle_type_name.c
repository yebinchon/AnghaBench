
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
archive_handle_type_name(unsigned m)
{
 switch (m) {
 case 128: return ("archive_write");
 case 130: return ("archive_read");
 case 129: return ("archive_write_disk");
 case 131: return ("archive_read_disk");
 case 132: return ("archive_match");
 default: return ((void*)0);
 }
}
