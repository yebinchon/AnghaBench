
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ time_t ;
struct autr_ta {int s; scalar_t__ last_change; scalar_t__ pending_count; } ;
 int VERB_OPS ;
 int atoi (char*) ;
 int free (char*) ;
 int log_err (char*) ;
 scalar_t__ malloc (int) ;
 int position_in_string (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int verbose_key (struct autr_ta*,int ,char*) ;

__attribute__((used)) static int
parse_comments(char* str, struct autr_ta* ta)
{
        int len = (int)strlen(str), pos = 0, timestamp = 0;
        char* comment = (char*) malloc(sizeof(char)*len+1);
        char* comments = comment;
 if(!comment) {
  log_err("malloc failure in parse");
                return 0;
 }

        while (*str != '\0' && *str != ';')
                str++;
        if (*str == ';')
                str++;

        while (*str != '\0')
        {
                *comments = *str;
                comments++;
                str++;
        }
        *comments = '\0';

        comments = comment;


        pos = position_in_string(comments, "state=");
        if (pos >= (int) strlen(comments))
        {
  log_err("parse error");
                free(comment);
                return 0;
        }
        if (pos <= 0)
                ta->s = 128;
        else
        {
                int s = (int) comments[pos] - '0';
                switch(s)
                {
                        case 129:
                        case 133:
                        case 128:
                        case 132:
                        case 130:
                        case 131:
                                ta->s = s;
                                break;
                        default:
    verbose_key(ta, VERB_OPS, "has undefined "
     "state, considered NewKey");
                                ta->s = 129;
                                break;
                }
        }

        pos = position_in_string(comments, "count=");
        if (pos >= (int) strlen(comments))
        {
  log_err("parse error");
                free(comment);
                return 0;
        }
        if (pos <= 0)
                ta->pending_count = 0;
        else
        {
                comments += pos;
                ta->pending_count = (uint8_t)atoi(comments);
        }


        pos = position_in_string(comments, "lastchange=");
        if (pos >= (int) strlen(comments))
        {
  log_err("parse error");
                free(comment);
                return 0;
        }
        if (pos >= 0)
        {
                comments += pos;
                timestamp = atoi(comments);
        }
        if (pos < 0 || !timestamp)
  ta->last_change = 0;
        else
                ta->last_change = (time_t)timestamp;

        free(comment);
        return 1;
}
