
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ svn_wc_entry_t ;
typedef int svn_error_t ;
struct entries_accumulator {int entries; int parser; int pool; int scratch_pool; } ;
typedef int apr_hash_t ;


 int ENTRIES_TAG_ENTRY ;
 int * atts_to_entry (TYPE_1__**,int *,int ) ;
 scalar_t__ strcmp (char const*,int ) ;
 int svn_hash_sets (int ,int ,TYPE_1__*) ;
 int svn_pool_clear (int ) ;
 int * svn_xml_make_att_hash (char const**,int ) ;
 int svn_xml_signal_bailout (int *,int ) ;

__attribute__((used)) static void
handle_start_tag(void *userData, const char *tagname, const char **atts)
{
  struct entries_accumulator *accum = userData;
  apr_hash_t *attributes;
  svn_wc_entry_t *entry;
  svn_error_t *err;



  if (strcmp(tagname, ENTRIES_TAG_ENTRY))
    return;

  svn_pool_clear(accum->scratch_pool);

  attributes = svn_xml_make_att_hash(atts, accum->scratch_pool);
  err = atts_to_entry(&entry, attributes, accum->pool);
  if (err)
    {
      svn_xml_signal_bailout(err, accum->parser);
      return;
    }




  svn_hash_sets(accum->entries, entry->name, entry);
}
