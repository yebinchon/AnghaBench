; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_fs_contents_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_fs_contents_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@SVN_ERR_FS_GENERAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Cannot compare file contents between two different filesystems\00", align 1
@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"'%s' is not a file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_5__*, i8*, %struct.TYPE_5__*, i8*, i32, i32*)* @fs_contents_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fs_contents_changed(i32* %0, %struct.TYPE_5__* %1, i8* %2, %struct.TYPE_5__* %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %7
  %26 = load i32, i32* @SVN_ERR_FS_GENERAL, align 4
  %27 = call i32 @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %28 = call i32* @svn_error_create(i32 %26, i32* null, i32 %27)
  store i32* %28, i32** %8, align 8
  br label %66

29:                                               ; preds = %7
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = call i32 @get_dag(i32** %16, %struct.TYPE_5__* %30, i8* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i32*, i32** %16, align 8
  %36 = call i64 @svn_fs_fs__dag_node_kind(i32* %35)
  %37 = load i64, i64* @svn_node_file, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load i32, i32* @SVN_ERR_FS_NOT_FILE, align 4
  %41 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i8*, i8** %11, align 8
  %43 = call i32* @svn_error_createf(i32 %40, i32* null, i32 %41, i8* %42)
  store i32* %43, i32** %8, align 8
  br label %66

44:                                               ; preds = %29
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = call i32 @get_dag(i32** %17, %struct.TYPE_5__* %45, i8* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load i32*, i32** %17, align 8
  %51 = call i64 @svn_fs_fs__dag_node_kind(i32* %50)
  %52 = load i64, i64* @svn_node_file, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load i32, i32* @SVN_ERR_FS_NOT_FILE, align 4
  %56 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i8*, i8** %13, align 8
  %58 = call i32* @svn_error_createf(i32 %55, i32* null, i32 %56, i8* %57)
  store i32* %58, i32** %8, align 8
  br label %66

59:                                               ; preds = %44
  %60 = load i32*, i32** %9, align 8
  %61 = load i32*, i32** %16, align 8
  %62 = load i32*, i32** %17, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i32*, i32** %15, align 8
  %65 = call i32* @svn_fs_fs__dag_things_different(i32* null, i32* %60, i32* %61, i32* %62, i32 %63, i32* %64)
  store i32* %65, i32** %8, align 8
  br label %66

66:                                               ; preds = %59, %54, %39, %25
  %67 = load i32*, i32** %8, align 8
  ret i32* %67
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_dag(i32**, %struct.TYPE_5__*, i8*, i32*) #1

declare dso_local i64 @svn_fs_fs__dag_node_kind(i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32* @svn_fs_fs__dag_things_different(i32*, i32*, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
