
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char* data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_ra_serf__xml_estate_t ;
typedef int svn_error_t ;
struct TYPE_10__ {int * last_author; int time; int created_rev; int size; int kind; int has_props; int member_0; } ;
typedef TYPE_2__ svn_dirent_t ;
struct TYPE_11__ {int * author; int receiver_baton; int (* receiver ) (char const*,TYPE_2__*,int ,int *) ;TYPE_4__* author_buf; } ;
typedef TYPE_3__ list_context_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_12__ {int * data; } ;


 int AUTHOR ;
 int FALSE ;
 int ITEM ;
 int SVN_ERR (int ) ;
 int SVN_ERR_RA_DAV_MALFORMED_DATA ;
 int SVN_INVALID_FILESIZE ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int stub1 (char const*,TYPE_2__*,int ,int *) ;
 TYPE_1__* svn_base64_decode_string (TYPE_1__ const*,int *) ;
 int svn_cstring_atoi64 (int *,char const*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_hash__get_bool (int *,char*,int ) ;
 char* svn_hash_gets (int *,char*) ;
 int svn_node_kind_from_word (char const*) ;
 int svn_revnum_parse (int *,char const*,int *) ;
 int svn_stringbuf_set (TYPE_4__*,char*) ;
 int svn_time_from_cstring (int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
item_closed(svn_ra_serf__xml_estate_t *xes,
            void *baton,
            int leaving_state,
            const svn_string_t *cdata,
            apr_hash_t *attrs,
            apr_pool_t *scratch_pool)
{
  list_context_t *list_ctx = baton;

  if (leaving_state == AUTHOR)
    {






      const char *encoding = svn_hash_gets(attrs, "encoding");
      if (encoding)
        {


          if (strcmp(encoding, "base64") != 0)
            {
              return svn_error_createf(SVN_ERR_RA_DAV_MALFORMED_DATA, ((void*)0),
                                       _("Unsupported encoding '%s'"),
                                       encoding);
            }

          cdata = svn_base64_decode_string(cdata, scratch_pool);
        }


      svn_stringbuf_set(list_ctx->author_buf, cdata->data);
      list_ctx->author = list_ctx->author_buf->data;
    }
  else if (leaving_state == ITEM)
    {
      const char *dirent_path = cdata->data;
      const char *kind_word, *date, *crev, *size;
      svn_dirent_t dirent = { 0 };

      kind_word = svn_hash_gets(attrs, "node-kind");
      size = svn_hash_gets(attrs, "size");

      dirent.has_props = svn_hash__get_bool(attrs, "has-props", FALSE);
      crev = svn_hash_gets(attrs, "created-rev");
      date = svn_hash_gets(attrs, "date");


      dirent.kind = svn_node_kind_from_word(kind_word);

      if (size)
        SVN_ERR(svn_cstring_atoi64(&dirent.size, size));
      else
        dirent.size = SVN_INVALID_FILESIZE;

      if (crev)
        SVN_ERR(svn_revnum_parse(&dirent.created_rev, crev, ((void*)0)));
      else
        dirent.created_rev = SVN_INVALID_REVNUM;

      if (date)
        SVN_ERR(svn_time_from_cstring(&dirent.time, date, scratch_pool));

      if (list_ctx->author)
        dirent.last_author = list_ctx->author;


      SVN_ERR(list_ctx->receiver(dirent_path, &dirent,
                                 list_ctx->receiver_baton, scratch_pool));


      list_ctx->author = ((void*)0);
    }

  return SVN_NO_ERROR;
}
