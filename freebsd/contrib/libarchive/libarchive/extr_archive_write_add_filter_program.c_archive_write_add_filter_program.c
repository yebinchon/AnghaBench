
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int s; } ;
struct private_data {TYPE_1__ description; int * pdata; int * cmd; } ;
struct archive_write_filter {int (* free ) (struct archive_write_filter*) ;int close; int write; int open; int code; int name; int * data; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_FILTER_PROGRAM ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WRITE_MAGIC ;
 int ENOMEM ;
 struct archive_write_filter* __archive_write_allocate_filter (struct archive*) ;
 int * __archive_write_program_allocate (char const*) ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_compressor_program_close ;
 int archive_compressor_program_free (struct archive_write_filter*) ;
 int archive_compressor_program_open ;
 int archive_compressor_program_write ;
 int archive_set_error (struct archive*,int ,char*) ;
 int archive_strcat (TYPE_1__*,char const*) ;
 int archive_strcpy (TYPE_1__*,char const*) ;
 int * archive_string_ensure (TYPE_1__*,scalar_t__) ;
 int * calloc (int,int) ;
 int * strdup (char const*) ;
 scalar_t__ strlen (char const*) ;

int
archive_write_add_filter_program(struct archive *_a, const char *cmd)
{
 struct archive_write_filter *f = __archive_write_allocate_filter(_a);
 struct private_data *data;
 static const char prefix[] = "Program: ";

 archive_check_magic(_a, ARCHIVE_WRITE_MAGIC,
     ARCHIVE_STATE_NEW, "archive_write_add_filter_program");

 f->data = calloc(1, sizeof(*data));
 if (f->data == ((void*)0))
  goto memerr;
 data = (struct private_data *)f->data;

 data->cmd = strdup(cmd);
 if (data->cmd == ((void*)0))
  goto memerr;

 data->pdata = __archive_write_program_allocate(cmd);
 if (data->pdata == ((void*)0))
  goto memerr;


 if (archive_string_ensure(&data->description,
     strlen(prefix) + strlen(cmd) + 1) == ((void*)0))
  goto memerr;
 archive_strcpy(&data->description, prefix);
 archive_strcat(&data->description, cmd);

 f->name = data->description.s;
 f->code = ARCHIVE_FILTER_PROGRAM;
 f->open = archive_compressor_program_open;
 f->write = archive_compressor_program_write;
 f->close = archive_compressor_program_close;
 f->free = archive_compressor_program_free;
 return (ARCHIVE_OK);
memerr:
 archive_compressor_program_free(f);
 archive_set_error(_a, ENOMEM,
     "Can't allocate memory for filter program");
 return (ARCHIVE_FATAL);
}
