
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wordent {char* word; struct wordent* next; } ;
struct hashValue {int dummy; } ;


 int addCharToHash (struct hashValue*,char) ;
 int addWordToHash (struct hashValue*,char*) ;
 unsigned int finalizeHash (struct hashValue*) ;
 int initializeHash (struct hashValue*) ;

__attribute__((used)) static unsigned
hashhist(struct wordent *h0)
{
    struct hashValue s;
    struct wordent *firstWord = h0->next;
    struct wordent *h = firstWord;
    unsigned hash = 0;

    initializeHash(&s);
    for (; h != h0; h = h->next) {
        if (h->word[0] == '\n')
            break;
        if (h != firstWord)
            addCharToHash(&s, ' ');
 addWordToHash(&s, h->word);
    }
    hash = finalizeHash(&s);

    return hash ? hash : 0x7fffffff;
}
