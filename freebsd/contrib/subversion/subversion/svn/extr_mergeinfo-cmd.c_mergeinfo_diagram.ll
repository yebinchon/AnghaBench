; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_mergeinfo-cmd.c_mergeinfo_diagram.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_mergeinfo-cmd.c_mergeinfo_diagram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"  %-8ld  \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"  |         \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"-------| |--\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"   \\        \00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"    \\       \00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"     --| |--\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"    /       \00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"   /        \00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"... /       \00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"---------\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"  /      \00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c" /       \00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"|        \00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"%-8ld \00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c" \\       \00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"  \\      \00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"         \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%-8ld\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"|       \00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"-       \00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"WC      \00", align 1
@.str.22 = private unnamed_addr constant [88 x i8] c"    %s\0A    |         %s\0A    |         |        %s\0A    |         |        |         %s\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"youngest common ancestor\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"last full merge\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"tip of branch\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"repository path\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@COLS = common dso_local global i32 0, align 4
@ROWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i8*, i64, i64, i64, i64, i8*, i64, i64, i32*)* @mergeinfo_diagram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mergeinfo_diagram(i8* %0, i8* %1, i8* %2, i8* %3, i64 %4, i64 %5, i64 %6, i64 %7, i8* %8, i64 %9, i64 %10, i32* %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca [8 x [4 x i8*]], align 16
  %26 = alloca [4 x i32], align 16
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i8* %0, i8** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8* %2, i8** %15, align 8
  store i8* %3, i8** %16, align 8
  store i64 %4, i64* %17, align 8
  store i64 %5, i64* %18, align 8
  store i64 %6, i64* %19, align 8
  store i64 %7, i64* %20, align 8
  store i8* %8, i8** %21, align 8
  store i64 %9, i64* %22, align 8
  store i64 %10, i64* %23, align 8
  store i32* %11, i32** %24, align 8
  %29 = bitcast [8 x [4 x i8*]]* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 256, i1 false)
  %30 = load i32*, i32** %24, align 8
  %31 = load i64, i64* %17, align 8
  %32 = call i8* @apr_psprintf(i32* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 0
  %34 = getelementptr inbounds [4 x i8*], [4 x i8*]* %33, i64 0, i64 0
  store i8* %32, i8** %34, align 16
  %35 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 1
  %36 = getelementptr inbounds [4 x i8*], [4 x i8*]* %35, i64 0, i64 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %36, align 16
  %37 = load i8*, i8** %13, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = call i64 @strcmp(i8* %37, i8* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %12
  %42 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 2
  %43 = getelementptr inbounds [4 x i8*], [4 x i8*]* %42, i64 0, i64 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %43, align 16
  %44 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 3
  %45 = getelementptr inbounds [4 x i8*], [4 x i8*]* %44, i64 0, i64 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %45, align 16
  %46 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 4
  %47 = getelementptr inbounds [4 x i8*], [4 x i8*]* %46, i64 0, i64 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %47, align 16
  %48 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 5
  %49 = getelementptr inbounds [4 x i8*], [4 x i8*]* %48, i64 0, i64 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %49, align 16
  br label %74

50:                                               ; preds = %12
  %51 = load i8*, i8** %13, align 8
  %52 = load i8*, i8** %16, align 8
  %53 = call i64 @strcmp(i8* %51, i8* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 2
  %57 = getelementptr inbounds [4 x i8*], [4 x i8*]* %56, i64 0, i64 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %57, align 16
  %58 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 3
  %59 = getelementptr inbounds [4 x i8*], [4 x i8*]* %58, i64 0, i64 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %59, align 16
  %60 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 4
  %61 = getelementptr inbounds [4 x i8*], [4 x i8*]* %60, i64 0, i64 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %61, align 16
  %62 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 5
  %63 = getelementptr inbounds [4 x i8*], [4 x i8*]* %62, i64 0, i64 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %63, align 16
  br label %73

64:                                               ; preds = %50
  %65 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 2
  %66 = getelementptr inbounds [4 x i8*], [4 x i8*]* %65, i64 0, i64 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %66, align 16
  %67 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 3
  %68 = getelementptr inbounds [4 x i8*], [4 x i8*]* %67, i64 0, i64 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %68, align 16
  %69 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 4
  %70 = getelementptr inbounds [4 x i8*], [4 x i8*]* %69, i64 0, i64 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %70, align 16
  %71 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 5
  %72 = getelementptr inbounds [4 x i8*], [4 x i8*]* %71, i64 0, i64 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %72, align 16
  br label %73

73:                                               ; preds = %64, %55
  br label %74

74:                                               ; preds = %73, %41
  %75 = load i64, i64* %18, align 8
  %76 = load i64, i64* %17, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %74
  %79 = load i64, i64* %23, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %78
  %82 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 2
  %83 = getelementptr inbounds [4 x i8*], [4 x i8*]* %82, i64 0, i64 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %83, align 16
  %84 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 3
  %85 = getelementptr inbounds [4 x i8*], [4 x i8*]* %84, i64 0, i64 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %85, align 16
  %86 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 4
  %87 = getelementptr inbounds [4 x i8*], [4 x i8*]* %86, i64 0, i64 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8** %87, align 16
  %88 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 5
  %89 = getelementptr inbounds [4 x i8*], [4 x i8*]* %88, i64 0, i64 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %89, align 16
  %90 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 6
  %91 = getelementptr inbounds [4 x i8*], [4 x i8*]* %90, i64 0, i64 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8** %91, align 16
  %92 = load i32*, i32** %24, align 8
  %93 = load i64, i64* %18, align 8
  %94 = call i8* @apr_psprintf(i32* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i64 %93)
  %95 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 7
  %96 = getelementptr inbounds [4 x i8*], [4 x i8*]* %95, i64 0, i64 2
  store i8* %94, i8** %96, align 16
  br label %127

97:                                               ; preds = %78, %74
  %98 = load i64, i64* %18, align 8
  %99 = load i64, i64* %17, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %97
  %102 = load i32*, i32** %24, align 8
  %103 = load i64, i64* %18, align 8
  %104 = call i8* @apr_psprintf(i32* %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i64 %103)
  %105 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 0
  %106 = getelementptr inbounds [4 x i8*], [4 x i8*]* %105, i64 0, i64 2
  store i8* %104, i8** %106, align 16
  %107 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 1
  %108 = getelementptr inbounds [4 x i8*], [4 x i8*]* %107, i64 0, i64 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8** %108, align 16
  %109 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 2
  %110 = getelementptr inbounds [4 x i8*], [4 x i8*]* %109, i64 0, i64 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %110, align 16
  %111 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 3
  %112 = getelementptr inbounds [4 x i8*], [4 x i8*]* %111, i64 0, i64 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8** %112, align 16
  %113 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 4
  %114 = getelementptr inbounds [4 x i8*], [4 x i8*]* %113, i64 0, i64 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8** %114, align 16
  %115 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 5
  %116 = getelementptr inbounds [4 x i8*], [4 x i8*]* %115, i64 0, i64 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %116, align 16
  br label %126

117:                                              ; preds = %97
  %118 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 2
  %119 = getelementptr inbounds [4 x i8*], [4 x i8*]* %118, i64 0, i64 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %119, align 16
  %120 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 3
  %121 = getelementptr inbounds [4 x i8*], [4 x i8*]* %120, i64 0, i64 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8** %121, align 16
  %122 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 4
  %123 = getelementptr inbounds [4 x i8*], [4 x i8*]* %122, i64 0, i64 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8** %123, align 16
  %124 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 5
  %125 = getelementptr inbounds [4 x i8*], [4 x i8*]* %124, i64 0, i64 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %125, align 16
  br label %126

126:                                              ; preds = %117, %101
  br label %127

127:                                              ; preds = %126, %81
  %128 = load i32*, i32** %24, align 8
  %129 = load i64, i64* %19, align 8
  %130 = call i8* @apr_psprintf(i32* %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i64 %129)
  %131 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 0
  %132 = getelementptr inbounds [4 x i8*], [4 x i8*]* %131, i64 0, i64 3
  store i8* %130, i8** %132, align 8
  %133 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 1
  %134 = getelementptr inbounds [4 x i8*], [4 x i8*]* %133, i64 0, i64 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8** %134, align 8
  %135 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 2
  %136 = getelementptr inbounds [4 x i8*], [4 x i8*]* %135, i64 0, i64 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8** %136, align 8
  %137 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 3
  %138 = getelementptr inbounds [4 x i8*], [4 x i8*]* %137, i64 0, i64 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8** %138, align 8
  %139 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 4
  %140 = getelementptr inbounds [4 x i8*], [4 x i8*]* %139, i64 0, i64 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8** %140, align 8
  %141 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 5
  %142 = getelementptr inbounds [4 x i8*], [4 x i8*]* %141, i64 0, i64 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8** %142, align 8
  %143 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 6
  %144 = getelementptr inbounds [4 x i8*], [4 x i8*]* %143, i64 0, i64 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8** %144, align 8
  %145 = load i64, i64* %22, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %127
  br label %152

148:                                              ; preds = %127
  %149 = load i32*, i32** %24, align 8
  %150 = load i64, i64* %20, align 8
  %151 = call i8* @apr_psprintf(i32* %149, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i64 %150)
  br label %152

152:                                              ; preds = %148, %147
  %153 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), %147 ], [ %151, %148 ]
  %154 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 7
  %155 = getelementptr inbounds [4 x i8*], [4 x i8*]* %154, i64 0, i64 3
  store i8* %153, i8** %155, align 8
  store i32 0, i32* %28, align 4
  br label %156

156:                                              ; preds = %208, %152
  %157 = load i32, i32* %28, align 4
  %158 = icmp slt i32 %157, 4
  br i1 %158, label %159, label %211

159:                                              ; preds = %156
  %160 = load i32, i32* %28, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 %161
  store i32 0, i32* %162, align 4
  store i32 0, i32* %27, align 4
  br label %163

163:                                              ; preds = %204, %159
  %164 = load i32, i32* %27, align 4
  %165 = icmp slt i32 %164, 8
  br i1 %165, label %166, label %207

166:                                              ; preds = %163
  %167 = load i32, i32* %27, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 %168
  %170 = load i32, i32* %28, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [4 x i8*], [4 x i8*]* %169, i64 0, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %203

175:                                              ; preds = %166
  %176 = load i32, i32* %27, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 %177
  %179 = load i32, i32* %28, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [4 x i8*], [4 x i8*]* %178, i64 0, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = call i64 @strlen(i8* %182)
  %184 = trunc i64 %183 to i32
  %185 = load i32, i32* %28, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = icmp sgt i32 %184, %188
  br i1 %189, label %190, label %203

190:                                              ; preds = %175
  %191 = load i32, i32* %27, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 %192
  %194 = load i32, i32* %28, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [4 x i8*], [4 x i8*]* %193, i64 0, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = call i64 @strlen(i8* %197)
  %199 = trunc i64 %198 to i32
  %200 = load i32, i32* %28, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 %201
  store i32 %199, i32* %202, align 4
  br label %203

203:                                              ; preds = %190, %175, %166
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %27, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %27, align 4
  br label %163

207:                                              ; preds = %163
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %28, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %28, align 4
  br label %156

211:                                              ; preds = %156
  %212 = load i32*, i32** %24, align 8
  %213 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0))
  %214 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0))
  %215 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  %216 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0))
  %217 = call i32 (i32*, i8*, i32, ...) @svn_cmdline_printf(i32* %212, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.22, i64 0, i64 0), i32 %213, i32 %214, i32 %215, i32 %216)
  %218 = call i32 @SVN_ERR(i32 %217)
  store i32 0, i32* %27, align 4
  br label %219

219:                                              ; preds = %290, %211
  %220 = load i32, i32* %27, align 4
  %221 = icmp slt i32 %220, 8
  br i1 %221, label %222, label %293

222:                                              ; preds = %219
  %223 = load i32, i32* @stdout, align 4
  %224 = load i32*, i32** %24, align 8
  %225 = call i32 @svn_cmdline_fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i32 %223, i32* %224)
  %226 = call i32 @SVN_ERR(i32 %225)
  store i32 0, i32* %28, align 4
  br label %227

227:                                              ; preds = %260, %222
  %228 = load i32, i32* %28, align 4
  %229 = icmp slt i32 %228, 4
  br i1 %229, label %230, label %263

230:                                              ; preds = %227
  %231 = load i32, i32* %27, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 %232
  %234 = load i32, i32* %28, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [4 x i8*], [4 x i8*]* %233, i64 0, i64 %235
  %237 = load i8*, i8** %236, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %251

239:                                              ; preds = %230
  %240 = load i32, i32* %27, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [8 x [4 x i8*]], [8 x [4 x i8*]]* %25, i64 0, i64 %241
  %243 = load i32, i32* %28, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [4 x i8*], [4 x i8*]* %242, i64 0, i64 %244
  %246 = load i8*, i8** %245, align 8
  %247 = load i32, i32* @stdout, align 4
  %248 = load i32*, i32** %24, align 8
  %249 = call i32 @svn_cmdline_fputs(i8* %246, i32 %247, i32* %248)
  %250 = call i32 @SVN_ERR(i32 %249)
  br label %259

251:                                              ; preds = %230
  %252 = load i32*, i32** %24, align 8
  %253 = load i32, i32* %28, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = call i32 (i32*, i8*, i32, ...) @svn_cmdline_printf(i32* %252, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i32 %256, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i64 0, i64 0))
  %258 = call i32 @SVN_ERR(i32 %257)
  br label %259

259:                                              ; preds = %251, %239
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %28, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %28, align 4
  br label %227

263:                                              ; preds = %227
  %264 = load i32, i32* %27, align 4
  %265 = icmp eq i32 %264, 2
  br i1 %265, label %266, label %274

266:                                              ; preds = %263
  %267 = load i32*, i32** %24, align 8
  %268 = load i8*, i8** %21, align 8
  %269 = load i8*, i8** %15, align 8
  %270 = load i32*, i32** %24, align 8
  %271 = call i32 @svn_uri_skip_ancestor(i8* %268, i8* %269, i32* %270)
  %272 = call i32 (i32*, i8*, i32, ...) @svn_cmdline_printf(i32* %267, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i32 %271)
  %273 = call i32 @SVN_ERR(i32 %272)
  br label %274

274:                                              ; preds = %266, %263
  %275 = load i32, i32* %27, align 4
  %276 = icmp eq i32 %275, 5
  br i1 %276, label %277, label %285

277:                                              ; preds = %274
  %278 = load i32*, i32** %24, align 8
  %279 = load i8*, i8** %21, align 8
  %280 = load i8*, i8** %16, align 8
  %281 = load i32*, i32** %24, align 8
  %282 = call i32 @svn_uri_skip_ancestor(i8* %279, i8* %280, i32* %281)
  %283 = call i32 (i32*, i8*, i32, ...) @svn_cmdline_printf(i32* %278, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i32 %282)
  %284 = call i32 @SVN_ERR(i32 %283)
  br label %285

285:                                              ; preds = %277, %274
  %286 = load i32, i32* @stdout, align 4
  %287 = load i32*, i32** %24, align 8
  %288 = call i32 @svn_cmdline_fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i32 %286, i32* %287)
  %289 = call i32 @SVN_ERR(i32 %288)
  br label %290

290:                                              ; preds = %285
  %291 = load i32, i32* %27, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %27, align 4
  br label %219

293:                                              ; preds = %219
  %294 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %294
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i64) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @svn_cmdline_printf(i32*, i8*, i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @svn_cmdline_fputs(i8*, i32, i32*) #2

declare dso_local i32 @svn_uri_skip_ancestor(i8*, i8*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
