; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_add.c_svn_client__make_local_parents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_add.c_svn_client__make_local_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@svn_depth_empty = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client__make_local_parents(i8* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @svn_io_check_path(i8* %11, i64* %10, i32* %12)
  %14 = call i32 @SVN_ERR(i32 %13)
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i8*, i8** %5, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @svn_io_make_dir_recursively(i8* %18, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  br label %28

22:                                               ; preds = %4
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @APR_OS_DEFAULT, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @svn_io_dir_make(i8* %23, i32 %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  br label %28

28:                                               ; preds = %22, %17
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* @svn_depth_empty, align 4
  %31 = load i32, i32* @FALSE, align 4
  %32 = load i32, i32* @FALSE, align 4
  %33 = load i32, i32* @FALSE, align 4
  %34 = load i64, i64* %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32* @svn_client_add5(i8* %29, i32 %30, i32 %31, i32 %32, i32 %33, i64 %34, i32* %35, i32* %36)
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %28
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @svn_node_none, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i32*, i32** %9, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* @FALSE, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @svn_io_remove_dir2(i8* %46, i32 %47, i32* null, i32* null, i32* %48)
  %50 = call i32* @svn_error_compose_create(i32* %45, i32 %49)
  store i32* %50, i32** %9, align 8
  br label %51

51:                                               ; preds = %44, %40, %28
  %52 = load i32*, i32** %9, align 8
  %53 = call i32* @svn_error_trace(i32* %52)
  ret i32* %53
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @svn_io_make_dir_recursively(i8*, i32*) #1

declare dso_local i32 @svn_io_dir_make(i8*, i32, i32*) #1

declare dso_local i32* @svn_client_add5(i8*, i32, i32, i32, i32, i64, i32*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_io_remove_dir2(i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
