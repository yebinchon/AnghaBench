; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_editor.c_can_modify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_editor.c_can_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_FS_OUT_OF_DATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"'%s' is out of date; try updating\00", align 1
@svn_fs_node_unchanged = common dso_local global i64 0, align 8
@SVN_ERR_FS_CONFLICT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"'%s' has been modified since the commit began (restart the commit)\00", align 1
@SVN_ERR_INCORRECT_PARAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i64, i32*)* @can_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @can_modify(i32* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @svn_fs_node_created_rev(i64* %10, i32* %13, i8* %14, i32* %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @SVN_IS_VALID_REVNUM(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %22, i32** %5, align 8
  br label %69

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @SVN_IS_VALID_REVNUM(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %28, i32** %5, align 8
  br label %69

29:                                               ; preds = %23
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* @SVN_ERR_FS_OUT_OF_DATE, align 4
  %35 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %36 = load i8*, i8** %7, align 8
  %37 = call i32* @svn_error_createf(i32 %34, i32* null, i32 %35, i8* %36)
  store i32* %37, i32** %5, align 8
  br label %69

38:                                               ; preds = %29
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %38
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @svn_fs_root_fs(i32* %43)
  %45 = load i64, i64* %8, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @svn_fs_revision_root(i32** %11, i32 %44, i64 %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i32*, i32** %6, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @svn_fs_node_relation(i64* %12, i32* %49, i8* %50, i32* %51, i8* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @svn_fs_close_root(i32* %56)
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* @svn_fs_node_unchanged, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %42
  %62 = load i32, i32* @SVN_ERR_FS_CONFLICT, align 4
  %63 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i8*, i8** %7, align 8
  %65 = call i32* @svn_error_createf(i32 %62, i32* null, i32 %63, i8* %64)
  store i32* %65, i32** %5, align 8
  br label %69

66:                                               ; preds = %42
  br label %67

67:                                               ; preds = %66, %38
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %68, i32** %5, align 8
  br label %69

69:                                               ; preds = %67, %61, %33, %27, %21
  %70 = load i32*, i32** %5, align 8
  ret i32* %70
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_node_created_rev(i64*, i32*, i8*, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32, i64, i32*) #1

declare dso_local i32 @svn_fs_root_fs(i32*) #1

declare dso_local i32 @svn_fs_node_relation(i64*, i32*, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_close_root(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
