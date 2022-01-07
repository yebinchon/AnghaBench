; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_add_from_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_add_from_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_node_file = common dso_local global i64 0, align 8
@SVN_PROP_EXECUTABLE = common dso_local global i32 0, align 4
@SVN_PROP_NEEDS_LOCK = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i64, i32*, i32*)* @add_from_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_from_disk(i32* %0, i8* %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @svn_node_file, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %5
  store i32* null, i32** %11, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* @SVN_PROP_EXECUTABLE, align 4
  %21 = call i64 @svn_prop_get_value(i32* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* @SVN_PROP_NEEDS_LOCK, align 4
  %26 = call i64 @svn_prop_get_value(i32* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23, %18
  %29 = load i32*, i32** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @svn_wc__wq_build_sync_file_flags(i32** %11, i32* %29, i8* %30, i32* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  br label %35

35:                                               ; preds = %28, %23, %15
  %36 = load i32*, i32** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @svn_wc__db_op_add_file(i32* %36, i8* %37, i32* %38, i32* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i32*, i32** %11, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = load i32*, i32** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @svn_wc__wq_run(i32* %46, i8* %47, i32* null, i32* null, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  br label %51

51:                                               ; preds = %45, %35
  br label %59

52:                                               ; preds = %5
  %53 = load i32*, i32** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @svn_wc__db_op_add_directory(i32* %53, i8* %54, i32* %55, i32* null, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  br label %59

59:                                               ; preds = %52, %51
  %60 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %60
}

declare dso_local i64 @svn_prop_get_value(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__wq_build_sync_file_flags(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_op_add_file(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__wq_run(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_op_add_directory(i32*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
