; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_node_dir = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@SVN_ERR_WC_BAD_PATH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"Path '%s' ends in '%s', which is unsupported for this operation\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8**, i8*, i32*)* @probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @probe(i32* %0, i8** %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @svn_io_check_path(i8* %14, i64* %10, i32* %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @svn_node_dir, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @svn_dirent_get_absolute(i8** %12, i8* %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i32*, i32** %6, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i32, i32* @FALSE, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @svn_wc__internal_check_wc(i32* %11, i32* %26, i8* %27, i32 %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  br label %32

32:                                               ; preds = %21, %4
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @svn_node_dir, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %36, %32
  %40 = load i8*, i8** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i8* @svn_dirent_basename(i8* %40, i32* %41)
  store i8* %42, i8** %13, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = load i8*, i8** %13, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46, %39
  %51 = load i32, i32* @SVN_ERR_WC_BAD_PATH, align 4
  %52 = call i32 @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i8*, i8** %8, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @svn_dirent_local_style(i8* %53, i32* %54)
  %56 = load i8*, i8** %13, align 8
  %57 = call i32* @svn_error_createf(i32 %51, i32* null, i32 %52, i32 %55, i8* %56)
  store i32* %57, i32** %5, align 8
  br label %68

58:                                               ; preds = %46
  %59 = load i8*, i8** %8, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = call i8* @svn_dirent_dirname(i8* %59, i32* %60)
  %62 = load i8**, i8*** %7, align 8
  store i8* %61, i8** %62, align 8
  br label %66

63:                                               ; preds = %36
  %64 = load i8*, i8** %8, align 8
  %65 = load i8**, i8*** %7, align 8
  store i8* %64, i8** %65, align 8
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %67, i32** %5, align 8
  br label %68

68:                                               ; preds = %66, %50
  %69 = load i32*, i32** %5, align 8
  ret i32* %69
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc__internal_check_wc(i32*, i32*, i8*, i32, i32*) #1

declare dso_local i8* @svn_dirent_basename(i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
