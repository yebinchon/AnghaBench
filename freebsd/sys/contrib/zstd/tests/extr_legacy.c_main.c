
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAY (char*) ;
 int testFrameDecoding () ;
 int testSimpleAPI () ;
 int testStreamingAPI () ;

int main(void)
{
    { int const ret = testSimpleAPI();
        if (ret) return ret; }
    { int const ret = testStreamingAPI();
        if (ret) return ret; }
    { int const ret = testFrameDecoding();
        if (ret) return ret; }

    DISPLAY("OK\n");
    return 0;
}
