
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_string_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT_NO_RETURN (int) ;
 int _ (char*) ;
 scalar_t__ svn_string_compare (int const*,int const*) ;
 int * svn_stringbuf_createf (int *,int ,char const*) ;

__attribute__((used)) static svn_stringbuf_t *
generate_conflict_message(const char *propname,
                          const svn_string_t *original,
                          const svn_string_t *mine,
                          const svn_string_t *incoming,
                          const svn_string_t *incoming_base,
                          apr_pool_t *result_pool)
{
  if (incoming_base == ((void*)0))
    {

      SVN_ERR_ASSERT_NO_RETURN(incoming != ((void*)0));

      if (mine)
        {

          SVN_ERR_ASSERT_NO_RETURN(!svn_string_compare(mine, incoming));




          return svn_stringbuf_createf(result_pool,
                                       _("Trying to add new property '%s'\n"
                                         "but the property already exists.\n"),
                                       propname);
        }



      SVN_ERR_ASSERT_NO_RETURN(original != ((void*)0));
      return svn_stringbuf_createf(result_pool,
                                   _("Trying to add new property '%s'\n"
                                     "but the property has been locally "
                                     "deleted.\n"),
                                   propname);
    }

  if (incoming == ((void*)0))
    {

      SVN_ERR_ASSERT_NO_RETURN(incoming_base != ((void*)0));


      if (original == ((void*)0) && mine != ((void*)0))
        return svn_stringbuf_createf(result_pool,
                                     _("Trying to delete property '%s'\n"
                                       "but the property has been locally "
                                       "added.\n"),
                                     propname);




      SVN_ERR_ASSERT_NO_RETURN(original != ((void*)0));

      if (svn_string_compare(original, incoming_base))
        {
          if (mine)


            return svn_stringbuf_createf(result_pool,
                                         _("Trying to delete property '%s'\n"
                                           "but the property has been locally "
                                           "modified.\n"),
                                         propname);
        }
      else if (mine == ((void*)0))
        {


          return svn_stringbuf_createf(result_pool,
                                       _("Trying to delete property '%s'\n"
                                         "but the property has been locally "
                                         "deleted and had a different "
                                         "value.\n"),
                                       propname);
        }



      SVN_ERR_ASSERT_NO_RETURN(!svn_string_compare(original, incoming_base));

      return svn_stringbuf_createf(result_pool,
                                   _("Trying to delete property '%s'\n"
                                     "but the local property value is "
                                     "different.\n"),
                                   propname);
    }






  SVN_ERR_ASSERT_NO_RETURN(!mine || !svn_string_compare(mine, incoming_base));

  if (original && mine && svn_string_compare(original, mine))
    {


      SVN_ERR_ASSERT_NO_RETURN(!svn_string_compare(original, incoming_base));
      return svn_stringbuf_createf(result_pool,
                                   _("Trying to change property '%s'\n"
                                     "but the local property value conflicts "
                                     "with the incoming change.\n"),
                                   propname);
    }

  if (original && mine)
    return svn_stringbuf_createf(result_pool,
                                 _("Trying to change property '%s'\n"
                                   "but the property has already been locally "
                                   "changed to a different value.\n"),
                                 propname);

  if (original)
    return svn_stringbuf_createf(result_pool,
                                 _("Trying to change property '%s'\nbut "
                                   "the property has been locally deleted.\n"),
                                 propname);

  if (mine)
    return svn_stringbuf_createf(result_pool,
                                 _("Trying to change property '%s'\nbut the "
                                   "property has been locally added with a "
                                   "different value.\n"),
                                 propname);

  return svn_stringbuf_createf(result_pool,
                               _("Trying to change property '%s'\nbut "
                                 "the property does not exist locally.\n"),
                               propname);
}
