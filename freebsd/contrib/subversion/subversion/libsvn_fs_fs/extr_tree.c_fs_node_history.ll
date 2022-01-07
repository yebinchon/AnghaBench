; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_fs_node_history.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_fs_node_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64 }

@SVN_ERR_FS_NOT_REVISION_ROOT = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_5__*, i8*, i32*, i32*)* @fs_node_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fs_node_history(i32** %0, %struct.TYPE_5__* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32** %0, i32*** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @SVN_ERR_FS_NOT_REVISION_ROOT, align 4
  %19 = call i32* @svn_error_create(i32 %18, i32* null, i32* null)
  store i32* %19, i32** %6, align 8
  br label %48

20:                                               ; preds = %5
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @svn_fs_fs__check_path(i64* %12, %struct.TYPE_5__* %21, i8* %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @svn_node_none, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32* @SVN_FS__NOT_FOUND(%struct.TYPE_5__* %30, i8* %31)
  store i32* %32, i32** %6, align 8
  br label %48

33:                                               ; preds = %20
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @FALSE, align 4
  %42 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %43 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = call i32* @assemble_history(i32 %36, i8* %37, i32 %40, i32 %41, i32* null, i32 %42, i32 %43, i32* null, i32* %44)
  %46 = load i32**, i32*** %7, align 8
  store i32* %45, i32** %46, align 8
  %47 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %47, i32** %6, align 8
  br label %48

48:                                               ; preds = %33, %29, %17
  %49 = load i32*, i32** %6, align 8
  ret i32* %49
}

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__check_path(i64*, %struct.TYPE_5__*, i8*, i32*) #1

declare dso_local i32* @SVN_FS__NOT_FOUND(%struct.TYPE_5__*, i8*) #1

declare dso_local i32* @assemble_history(i32, i8*, i32, i32, i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
