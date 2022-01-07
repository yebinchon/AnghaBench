; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_check_diff_target_exists.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_check_diff_target_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@svn_node_none = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"Diff target '%s' was not found in the repository at revision '%ld'\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"Diff target '%s' was not found in the repository at revision '%ld' or '%ld'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64, i64, i32*, i32*)* @check_diff_target_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_diff_target_exists(i8* %0, i64 %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = load i32*, i32** %11, align 8
  %16 = call i32 @svn_ra_get_session_url(i32* %14, i8** %13, i32* %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = call i64 @strcmp(i8* %18, i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %5
  %23 = load i32*, i32** %10, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @svn_ra_reparent(i32* %23, i8* %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  br label %28

28:                                               ; preds = %22, %5
  %29 = load i32*, i32** %10, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @svn_ra_check_path(i32* %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %30, i64* %12, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @svn_node_none, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %28
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* @SVN_ERR_FS_NOT_FOUND, align 4
  %43 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32* (i32, i32*, i32, i8*, i64, ...) @svn_error_createf(i32 %42, i32* null, i32 %43, i8* %44, i64 %45)
  store i32* %46, i32** %6, align 8
  br label %67

47:                                               ; preds = %37
  %48 = load i32, i32* @SVN_ERR_FS_NOT_FOUND, align 4
  %49 = call i32 @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32* (i32, i32*, i32, i8*, i64, ...) @svn_error_createf(i32 %48, i32* null, i32 %49, i8* %50, i64 %51, i64 %52)
  store i32* %53, i32** %6, align 8
  br label %67

54:                                               ; preds = %28
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = call i64 @strcmp(i8* %55, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32*, i32** %10, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @svn_ra_reparent(i32* %60, i8* %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %66, i32** %6, align 8
  br label %67

67:                                               ; preds = %65, %47, %41
  %68 = load i32*, i32** %6, align 8
  ret i32* %68
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_get_session_url(i32*, i8**, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_ra_reparent(i32*, i8*, i32*) #1

declare dso_local i32 @svn_ra_check_path(i32*, i8*, i64, i64*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i64, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
