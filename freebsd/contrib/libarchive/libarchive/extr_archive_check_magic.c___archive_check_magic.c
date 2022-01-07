
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {unsigned int magic; unsigned int state; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 void* ARCHIVE_STATE_FATAL ;
 char* archive_handle_type_name (unsigned int) ;
 int archive_set_error (struct archive*,int,char*,char const*,char const*,...) ;
 int diediedie () ;
 int errmsg (char const*) ;
 int write_all_states (char*,unsigned int) ;

int
__archive_check_magic(struct archive *a, unsigned int magic,
    unsigned int state, const char *function)
{
 char states1[64];
 char states2[64];
 const char *handle_type;






 handle_type = archive_handle_type_name(a->magic);

 if (!handle_type) {
  errmsg("PROGRAMMER ERROR: Function ");
  errmsg(function);
  errmsg(" invoked with invalid archive handle.\n");
  diediedie();
 }

 if (a->magic != magic) {
  archive_set_error(a, -1,
      "PROGRAMMER ERROR: Function '%s' invoked"
      " on '%s' archive object, which is not supported.",
      function,
      handle_type);
  a->state = ARCHIVE_STATE_FATAL;
  return (ARCHIVE_FATAL);
 }

 if ((a->state & state) == 0) {

  if (a->state != ARCHIVE_STATE_FATAL)
   archive_set_error(a, -1,
       "INTERNAL ERROR: Function '%s' invoked with"
       " archive structure in state '%s',"
       " should be in state '%s'",
       function,
       write_all_states(states1, a->state),
       write_all_states(states2, state));
  a->state = ARCHIVE_STATE_FATAL;
  return (ARCHIVE_FATAL);
 }
 return ARCHIVE_OK;
}
