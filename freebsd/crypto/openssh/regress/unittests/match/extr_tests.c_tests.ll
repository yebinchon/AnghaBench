; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/match/extr_tests.c_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/match/extr_tests.c_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"match_pattern\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"aaa\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"aaaa\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"match_pattern wildcard\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"a?\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"a*\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"?*\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"**\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"?a\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"*a\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"ba\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"match_pattern_list\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"!*\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"!a,*\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"*,!a\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"a,!*\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"!*,a\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"!a\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"a,!a\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"match_pattern_list lowercase\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"ABC\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"addr_match_list\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"127.0.0.1/44\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"127.0.0.2\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"!127.0.0.1\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"127.0.0.255\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"127.0.0.0/24\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"127.0.1.1\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"127.0.1.0/24\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"!127.0.0.0/24\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"10.0.0.1,!127.0.0.1\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"!127.0.0.1,10.0.0.1\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"10.0.0.1,127.0.0.2\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"127.0.0.2,10.0.0.1\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"match_filter_list\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"a,b,c\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"b,c\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"a,c\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"a,b\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tests() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = call i32 @TEST_START(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @match_pattern(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @ASSERT_INT_EQ(i32 %12, i32 1)
  %14 = call i32 @match_pattern(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @ASSERT_INT_EQ(i32 %14, i32 0)
  %16 = call i32 @match_pattern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @ASSERT_INT_EQ(i32 %16, i32 0)
  %18 = call i32 @match_pattern(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %19 = call i32 @ASSERT_INT_EQ(i32 %18, i32 0)
  %20 = call i32 @match_pattern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @ASSERT_INT_EQ(i32 %20, i32 0)
  %22 = call i32 (...) @TEST_DONE()
  %23 = call i32 @TEST_START(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %24 = call i32 @match_pattern(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %25 = call i32 @ASSERT_INT_EQ(i32 %24, i32 1)
  %26 = call i32 @match_pattern(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %27 = call i32 @ASSERT_INT_EQ(i32 %26, i32 1)
  %28 = call i32 @match_pattern(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %29 = call i32 @ASSERT_INT_EQ(i32 %28, i32 1)
  %30 = call i32 @match_pattern(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %31 = call i32 @ASSERT_INT_EQ(i32 %30, i32 1)
  %32 = call i32 @match_pattern(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %33 = call i32 @ASSERT_INT_EQ(i32 %32, i32 1)
  %34 = call i32 @match_pattern(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %35 = call i32 @ASSERT_INT_EQ(i32 %34, i32 1)
  %36 = call i32 @match_pattern(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %37 = call i32 @ASSERT_INT_EQ(i32 %36, i32 1)
  %38 = call i32 @match_pattern(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %39 = call i32 @ASSERT_INT_EQ(i32 %38, i32 1)
  %40 = call i32 @match_pattern(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %41 = call i32 @ASSERT_INT_EQ(i32 %40, i32 1)
  %42 = call i32 @match_pattern(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %43 = call i32 @ASSERT_INT_EQ(i32 %42, i32 0)
  %44 = call i32 @match_pattern(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %45 = call i32 @ASSERT_INT_EQ(i32 %44, i32 0)
  %46 = call i32 @match_pattern(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %47 = call i32 @ASSERT_INT_EQ(i32 %46, i32 0)
  %48 = call i32 @match_pattern(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %49 = call i32 @ASSERT_INT_EQ(i32 %48, i32 0)
  %50 = call i32 (...) @TEST_DONE()
  %51 = call i32 @TEST_START(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  %52 = call i32 @match_pattern_list(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %53 = call i32 @ASSERT_INT_EQ(i32 %52, i32 0)
  %54 = call i32 @match_pattern_list(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %55 = call i32 @ASSERT_INT_EQ(i32 %54, i32 1)
  %56 = call i32 @match_pattern_list(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 0)
  %57 = call i32 @ASSERT_INT_EQ(i32 %56, i32 -1)
  %58 = call i32 @match_pattern_list(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 0)
  %59 = call i32 @ASSERT_INT_EQ(i32 %58, i32 1)
  %60 = call i32 @match_pattern_list(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 0)
  %61 = call i32 @ASSERT_INT_EQ(i32 %60, i32 1)
  %62 = call i32 @match_pattern_list(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i32 0)
  %63 = call i32 @ASSERT_INT_EQ(i32 %62, i32 -1)
  %64 = call i32 @match_pattern_list(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32 0)
  %65 = call i32 @ASSERT_INT_EQ(i32 %64, i32 -1)
  %66 = call i32 @match_pattern_list(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %67 = call i32 @ASSERT_INT_EQ(i32 %66, i32 0)
  %68 = call i32 @match_pattern_list(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %69 = call i32 @ASSERT_INT_EQ(i32 %68, i32 1)
  %70 = call i32 @match_pattern_list(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 0)
  %71 = call i32 @ASSERT_INT_EQ(i32 %70, i32 -1)
  %72 = call i32 @match_pattern_list(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i32 0)
  %73 = call i32 @ASSERT_INT_EQ(i32 %72, i32 -1)
  %74 = call i32 @match_pattern_list(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 0)
  %75 = call i32 @ASSERT_INT_EQ(i32 %74, i32 -1)
  %76 = call i32 @match_pattern_list(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 0)
  %77 = call i32 @ASSERT_INT_EQ(i32 %76, i32 1)
  %78 = call i32 @match_pattern_list(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 0)
  %79 = call i32 @ASSERT_INT_EQ(i32 %78, i32 -1)
  %80 = call i32 @match_pattern_list(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 0)
  %81 = call i32 @ASSERT_INT_EQ(i32 %80, i32 1)
  %82 = call i32 @match_pattern_list(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i32 0)
  %83 = call i32 @ASSERT_INT_EQ(i32 %82, i32 -1)
  %84 = call i32 @match_pattern_list(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i32 0)
  %85 = call i32 @ASSERT_INT_EQ(i32 %84, i32 -1)
  %86 = call i32 @match_pattern_list(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32 0)
  %87 = call i32 @ASSERT_INT_EQ(i32 %86, i32 -1)
  %88 = call i32 @match_pattern_list(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32 0)
  %89 = call i32 @ASSERT_INT_EQ(i32 %88, i32 -1)
  %90 = call i32 @match_pattern_list(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32 0)
  %91 = call i32 @ASSERT_INT_EQ(i32 %90, i32 -1)
  %92 = call i32 (...) @TEST_DONE()
  %93 = call i32 @TEST_START(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0))
  %94 = call i32 @match_pattern_list(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i32 0)
  %95 = call i32 @ASSERT_INT_EQ(i32 %94, i32 0)
  %96 = call i32 @match_pattern_list(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i32 0)
  %97 = call i32 @ASSERT_INT_EQ(i32 %96, i32 0)
  %98 = call i32 @match_pattern_list(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i32 1)
  %99 = call i32 @ASSERT_INT_EQ(i32 %98, i32 1)
  %100 = call i32 @match_pattern_list(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i32 1)
  %101 = call i32 @ASSERT_INT_EQ(i32 %100, i32 0)
  %102 = call i32 (...) @TEST_DONE()
  %103 = call i32 @TEST_START(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0))
  %104 = call i32 @addr_match_list(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0))
  %105 = call i32 @ASSERT_INT_EQ(i32 %104, i32 -2)
  %106 = call i32 @addr_match_list(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0))
  %107 = call i32 @ASSERT_INT_EQ(i32 %106, i32 -2)
  %108 = call i32 @addr_match_list(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %109 = call i32 @ASSERT_INT_EQ(i32 %108, i32 0)
  %110 = call i32 @addr_match_list(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %111 = call i32 @ASSERT_INT_EQ(i32 %110, i32 1)
  %112 = call i32 @addr_match_list(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %113 = call i32 @ASSERT_INT_EQ(i32 %112, i32 0)
  %114 = call i32 @addr_match_list(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0))
  %115 = call i32 @ASSERT_INT_EQ(i32 %114, i32 1)
  %116 = call i32 @addr_match_list(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0))
  %117 = call i32 @ASSERT_INT_EQ(i32 %116, i32 0)
  %118 = call i32 @addr_match_list(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0))
  %119 = call i32 @ASSERT_INT_EQ(i32 %118, i32 -1)
  %120 = call i32 @addr_match_list(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0))
  %121 = call i32 @ASSERT_INT_EQ(i32 %120, i32 1)
  %122 = call i32 @addr_match_list(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0))
  %123 = call i32 @ASSERT_INT_EQ(i32 %122, i32 0)
  %124 = call i32 @addr_match_list(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0))
  %125 = call i32 @ASSERT_INT_EQ(i32 %124, i32 1)
  %126 = call i32 @addr_match_list(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0))
  %127 = call i32 @ASSERT_INT_EQ(i32 %126, i32 0)
  %128 = call i32 @addr_match_list(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0))
  %129 = call i32 @ASSERT_INT_EQ(i32 %128, i32 -1)
  %130 = call i32 @addr_match_list(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i64 0, i64 0))
  %131 = call i32 @ASSERT_INT_EQ(i32 %130, i32 -1)
  %132 = call i32 @addr_match_list(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0))
  %133 = call i32 @ASSERT_INT_EQ(i32 %132, i32 -1)
  %134 = call i32 @addr_match_list(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i64 0, i64 0))
  %135 = call i32 @ASSERT_INT_EQ(i32 %134, i32 0)
  %136 = call i32 @addr_match_list(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i64 0, i64 0))
  %137 = call i32 @ASSERT_INT_EQ(i32 %136, i32 0)
  %138 = call i32 (...) @TEST_DONE()
  %139 = call i32 @TEST_START(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0))
  br label %140

140:                                              ; preds = %0
  %141 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @match_filter_blacklist to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to i8*
  store i8* %143, i8** %1, align 8
  %144 = load i8*, i8** %1, align 8
  %145 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @ASSERT_STRING_EQ to i32 (i8*, i8*, ...)*)(i8* %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0))
  %146 = load i8*, i8** %1, align 8
  %147 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %146)
  br label %148

148:                                              ; preds = %140
  br label %149

149:                                              ; preds = %148
  %150 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @match_filter_blacklist to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to i8*
  store i8* %152, i8** %2, align 8
  %153 = load i8*, i8** %2, align 8
  %154 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @ASSERT_STRING_EQ to i32 (i8*, i8*, ...)*)(i8* %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0))
  %155 = load i8*, i8** %2, align 8
  %156 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %155)
  br label %157

157:                                              ; preds = %149
  br label %158

158:                                              ; preds = %157
  %159 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @match_filter_blacklist to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  %160 = sext i32 %159 to i64
  %161 = inttoptr i64 %160 to i8*
  store i8* %161, i8** %3, align 8
  %162 = load i8*, i8** %3, align 8
  %163 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @ASSERT_STRING_EQ to i32 (i8*, i8*, ...)*)(i8* %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0))
  %164 = load i8*, i8** %3, align 8
  %165 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %164)
  br label %166

166:                                              ; preds = %158
  br label %167

167:                                              ; preds = %166
  %168 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @match_filter_blacklist to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0))
  %169 = sext i32 %168 to i64
  %170 = inttoptr i64 %169 to i8*
  store i8* %170, i8** %4, align 8
  %171 = load i8*, i8** %4, align 8
  %172 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @ASSERT_STRING_EQ to i32 (i8*, i8*, ...)*)(i8* %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0))
  %173 = load i8*, i8** %4, align 8
  %174 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %173)
  br label %175

175:                                              ; preds = %167
  br label %176

176:                                              ; preds = %175
  %177 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @match_filter_blacklist to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0))
  %178 = sext i32 %177 to i64
  %179 = inttoptr i64 %178 to i8*
  store i8* %179, i8** %5, align 8
  %180 = load i8*, i8** %5, align 8
  %181 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @ASSERT_STRING_EQ to i32 (i8*, i8*, ...)*)(i8* %180, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0))
  %182 = load i8*, i8** %5, align 8
  %183 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %182)
  br label %184

184:                                              ; preds = %176
  br label %185

185:                                              ; preds = %184
  %186 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @match_filter_blacklist to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0))
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to i8*
  store i8* %188, i8** %6, align 8
  %189 = load i8*, i8** %6, align 8
  %190 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @ASSERT_STRING_EQ to i32 (i8*, i8*, ...)*)(i8* %189, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  %191 = load i8*, i8** %6, align 8
  %192 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %191)
  br label %193

193:                                              ; preds = %185
  br label %194

194:                                              ; preds = %193
  %195 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @match_filter_blacklist to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0))
  %196 = sext i32 %195 to i64
  %197 = inttoptr i64 %196 to i8*
  store i8* %197, i8** %7, align 8
  %198 = load i8*, i8** %7, align 8
  %199 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @ASSERT_STRING_EQ to i32 (i8*, i8*, ...)*)(i8* %198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %200 = load i8*, i8** %7, align 8
  %201 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %200)
  br label %202

202:                                              ; preds = %194
  br label %203

203:                                              ; preds = %202
  %204 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @match_filter_blacklist to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0))
  %205 = sext i32 %204 to i64
  %206 = inttoptr i64 %205 to i8*
  store i8* %206, i8** %8, align 8
  %207 = load i8*, i8** %8, align 8
  %208 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @ASSERT_STRING_EQ to i32 (i8*, i8*, ...)*)(i8* %207, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %209 = load i8*, i8** %8, align 8
  %210 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %209)
  br label %211

211:                                              ; preds = %203
  br label %212

212:                                              ; preds = %211
  %213 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @match_filter_blacklist to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0))
  %214 = sext i32 %213 to i64
  %215 = inttoptr i64 %214 to i8*
  store i8* %215, i8** %9, align 8
  %216 = load i8*, i8** %9, align 8
  %217 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @ASSERT_STRING_EQ to i32 (i8*, i8*, ...)*)(i8* %216, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %218 = load i8*, i8** %9, align 8
  %219 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %218)
  br label %220

220:                                              ; preds = %212
  br label %221

221:                                              ; preds = %220
  %222 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @match_filter_blacklist to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0))
  %223 = sext i32 %222 to i64
  %224 = inttoptr i64 %223 to i8*
  store i8* %224, i8** %10, align 8
  %225 = load i8*, i8** %10, align 8
  %226 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @ASSERT_STRING_EQ to i32 (i8*, i8*, ...)*)(i8* %225, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %227 = load i8*, i8** %10, align 8
  %228 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %227)
  br label %229

229:                                              ; preds = %221
  %230 = call i32 (...) @TEST_DONE()
  ret void
}

declare dso_local i32 @TEST_START(i8*) #1

declare dso_local i32 @ASSERT_INT_EQ(i32, i32) #1

declare dso_local i32 @match_pattern(i8*, i8*) #1

declare dso_local i32 @TEST_DONE(...) #1

declare dso_local i32 @match_pattern_list(i8*, i8*, i32) #1

declare dso_local i32 @addr_match_list(i8*, i8*) #1

declare dso_local i32 @match_filter_blacklist(...) #1

declare dso_local i32 @ASSERT_STRING_EQ(...) #1

declare dso_local i32 @free(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
