; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_reporter.c_read_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_reporter.c_read_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APR_SIZE_MAX = common dso_local global i32 0, align 4
@SVN_ERR_REPOS_BAD_REVISION_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Invalid length (%%%s) when about to read a string\00", align 1
@APR_UINT64_T_FMT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i32*)* @read_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_string(i8** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @read_number(i32* %8, i32* %12, i32* %13)
  %15 = call i32 @SVN_ERR(i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, 1
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* @APR_SIZE_MAX, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %20, %3
  %26 = load i32, i32* @SVN_ERR_REPOS_BAD_REVISION_REPORT, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @APR_UINT64_T_FMT, align 4
  %30 = call i32 @apr_psprintf(i32* %27, i32 %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = call i32* @svn_error_createf(i32 %26, i32* null, i32 %30, i32 %31)
  store i32* %32, i32** %4, align 8
  br label %62

33:                                               ; preds = %20
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %9, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i64, i64* %9, align 8
  %38 = add nsw i64 %37, 1
  %39 = call i8* @apr_palloc(i32* %36, i64 %38)
  store i8* %39, i8** %11, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %33
  %43 = load i32*, i32** %6, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @svn_spillbuf__reader_read(i64* %10, i32* %43, i8* %44, i64 %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @SVN_ERR_ASSERT(i32 %52)
  br label %54

54:                                               ; preds = %42, %33
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load i8*, i8** %11, align 8
  %60 = load i8**, i8*** %5, align 8
  store i8* %59, i8** %60, align 8
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %61, i32** %4, align 8
  br label %62

62:                                               ; preds = %54, %25
  %63 = load i32*, i32** %4, align 8
  ret i32* %63
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @read_number(i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @apr_psprintf(i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @apr_palloc(i32*, i64) #1

declare dso_local i32 @svn_spillbuf__reader_read(i64*, i32*, i8*, i64, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
