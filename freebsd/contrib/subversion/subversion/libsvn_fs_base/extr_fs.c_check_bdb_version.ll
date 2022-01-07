; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_fs.c_check_bdb_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_fs.c_check_bdb_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_FS_WANT_DB_MAJOR = common dso_local global i32 0, align 4
@SVN_FS_WANT_DB_MINOR = common dso_local global i32 0, align 4
@SVN_FS_WANT_DB_PATCH = common dso_local global i32 0, align 4
@SVN_ERR_FS_GENERAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Bad database version: got %d.%d.%d, should be at least %d.%d.%d\00", align 1
@DB_VERSION_MAJOR = common dso_local global i32 0, align 4
@DB_VERSION_MINOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"Bad database version: compiled with %d.%d.%d, running against %d.%d.%d\00", align 1
@DB_VERSION_PATCH = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @check_bdb_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_bdb_version() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @db_version(i32* %2, i32* %3, i32* %4)
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @SVN_FS_WANT_DB_MAJOR, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %29, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @SVN_FS_WANT_DB_MAJOR, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SVN_FS_WANT_DB_MINOR, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %13, %9
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @SVN_FS_WANT_DB_MAJOR, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SVN_FS_WANT_DB_MINOR, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SVN_FS_WANT_DB_PATCH, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25, %13, %0
  %30 = load i32, i32* @SVN_ERR_FS_GENERAL, align 4
  %31 = call i32 @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @SVN_FS_WANT_DB_MAJOR, align 4
  %36 = load i32, i32* @SVN_FS_WANT_DB_MINOR, align 4
  %37 = load i32, i32* @SVN_FS_WANT_DB_PATCH, align 4
  %38 = call i32* @svn_error_createf(i32 %30, i32 0, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37)
  store i32* %38, i32** %1, align 8
  br label %59

39:                                               ; preds = %25, %21, %17
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @DB_VERSION_MAJOR, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @DB_VERSION_MINOR, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43, %39
  %48 = load i32, i32* @SVN_ERR_FS_GENERAL, align 4
  %49 = call i32 @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @DB_VERSION_MAJOR, align 4
  %51 = load i32, i32* @DB_VERSION_MINOR, align 4
  %52 = load i32, i32* @DB_VERSION_PATCH, align 4
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32* @svn_error_createf(i32 %48, i32 0, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  store i32* %56, i32** %1, align 8
  br label %59

57:                                               ; preds = %43
  %58 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %58, i32** %1, align 8
  br label %59

59:                                               ; preds = %57, %47, %29
  %60 = load i32*, i32** %1, align 8
  ret i32* %60
}

declare dso_local i32 @db_version(i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
