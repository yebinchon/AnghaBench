; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_acl.c_test_match_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_acl.c_test_match_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"single s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"foo foo\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"too many strings\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"foo bar\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"two strings\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"foo  bar\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"two strings double space\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"foo \09bar\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"two strings space + tab\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"one string, two format strings\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"one string, two format strings (same)\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"foo  \09\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"ending space\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"foo/bar\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"liternal fnmatch\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"foo/*\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"foo/bar.example.org\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"foo/*.example.org\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"foo/bar.example.com\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"foo/*.example.com\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"foo/bar/baz\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"foo/*/baz\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"ret 1\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"ret 1 match\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"rr\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"ret 2\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"ret 2 match 1\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"ret 2 match 2\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"sr\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"ret mismatch\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"s1 not NULL\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [15 x i8] c"unknown letter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_match_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_match_string(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 (i32, i8*, i8*, ...) @krb5_acl_match_string(i32 %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @RETVAL(i32 %8, i32 %9, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32, i32* %2, align 4
  %12 = call i32 (i32, i8*, i8*, ...) @krb5_acl_match_string(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @EACCES, align 4
  %16 = call i32 @RETVAL(i32 %13, i32 %14, i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %17 = load i32, i32* %2, align 4
  %18 = call i32 (i32, i8*, i8*, ...) @krb5_acl_match_string(i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @RETVAL(i32 %19, i32 %20, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %22 = load i32, i32* %2, align 4
  %23 = call i32 (i32, i8*, i8*, ...) @krb5_acl_match_string(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @RETVAL(i32 %24, i32 %25, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %27 = load i32, i32* %2, align 4
  %28 = call i32 (i32, i8*, i8*, ...) @krb5_acl_match_string(i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @RETVAL(i32 %29, i32 %30, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %32 = load i32, i32* %2, align 4
  %33 = call i32 (i32, i8*, i8*, ...) @krb5_acl_match_string(i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @EACCES, align 4
  %37 = call i32 @RETVAL(i32 %34, i32 %35, i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %38 = load i32, i32* %2, align 4
  %39 = call i32 (i32, i8*, i8*, ...) @krb5_acl_match_string(i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @EACCES, align 4
  %43 = call i32 @RETVAL(i32 %40, i32 %41, i32 %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0))
  %44 = load i32, i32* %2, align 4
  %45 = call i32 (i32, i8*, i8*, ...) @krb5_acl_match_string(i32 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @RETVAL(i32 %46, i32 %47, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %49 = load i32, i32* %2, align 4
  %50 = call i32 (i32, i8*, i8*, ...) @krb5_acl_match_string(i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @RETVAL(i32 %51, i32 %52, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %54 = load i32, i32* %2, align 4
  %55 = call i32 (i32, i8*, i8*, ...) @krb5_acl_match_string(i32 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @RETVAL(i32 %56, i32 %57, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %59 = load i32, i32* %2, align 4
  %60 = call i32 (i32, i8*, i8*, ...) @krb5_acl_match_string(i32 %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @RETVAL(i32 %61, i32 %62, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  %64 = load i32, i32* %2, align 4
  %65 = call i32 (i32, i8*, i8*, ...) @krb5_acl_match_string(i32 %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @EACCES, align 4
  %69 = call i32 @RETVAL(i32 %66, i32 %67, i32 %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0))
  %70 = load i32, i32* %2, align 4
  %71 = call i32 (i32, i8*, i8*, ...) @krb5_acl_match_string(i32 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @RETVAL(i32 %72, i32 %73, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  %75 = load i32, i32* %2, align 4
  %76 = call i32 (i32, i8*, i8*, ...) @krb5_acl_match_string(i32 %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i8** %4)
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @RETVAL(i32 %77, i32 %78, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0))
  %80 = load i32, i32* %2, align 4
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @STRINGMATCH(i32 %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %83 = load i8*, i8** %4, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i32, i32* %2, align 4
  %86 = call i32 (i32, i8*, i8*, ...) @krb5_acl_match_string(i32 %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8** %4, i8** %5)
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @RETVAL(i32 %87, i32 %88, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0))
  %90 = load i32, i32* %2, align 4
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @STRINGMATCH(i32 %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 @free(i8* %93)
  %95 = load i32, i32* %2, align 4
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @STRINGMATCH(i32 %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i8* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 @free(i8* %98)
  %100 = load i32, i32* %2, align 4
  %101 = call i32 (i32, i8*, i8*, ...) @krb5_acl_match_string(i32 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %4)
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @EACCES, align 4
  %105 = call i32 @RETVAL(i32 %102, i32 %103, i32 %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0))
  %106 = load i8*, i8** %4, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %1
  %109 = load i32, i32* %2, align 4
  %110 = call i32 @krb5_errx(i32 %109, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %1
  %112 = load i32, i32* %2, align 4
  %113 = call i32 (i32, i8*, i8*, ...) @krb5_acl_match_string(i32 %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %113, i32* %3, align 4
  %114 = load i32, i32* %2, align 4
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @EINVAL, align 4
  %117 = call i32 @RETVAL(i32 %114, i32 %115, i32 %116, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0))
  ret void
}

declare dso_local i32 @krb5_acl_match_string(i32, i8*, i8*, ...) #1

declare dso_local i32 @RETVAL(i32, i32, i32, i8*) #1

declare dso_local i32 @STRINGMATCH(i32, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
