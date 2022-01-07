; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_svn_fs_base__get_path_created_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_svn_fs_base__get_path_created_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_15__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @svn_fs_base__get_path_created_rev(i32* %0, i8* %1, %struct.TYPE_14__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @svn_fs_bdb__youngest_rev(i32* %10, i32 %18, %struct.TYPE_14__* %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @svn_fs_base__dag_revision_root(i32** %13, i32 %25, i32 %26, %struct.TYPE_14__* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** %13, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32* @make_revision_root(i32 %33, i32 %34, i32* %35, i32* %36)
  store i32* %37, i32** %12, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call %struct.TYPE_15__* @get_dag(i32** %14, i32* %38, i8* %39, %struct.TYPE_14__* %40, i32* %41)
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %15, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %44 = icmp ne %struct.TYPE_15__* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %53 = call i32 @svn_error_clear(%struct.TYPE_15__* %52)
  %54 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_15__* %56, %struct.TYPE_15__** %5, align 8
  br label %73

57:                                               ; preds = %45, %4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %59 = icmp ne %struct.TYPE_15__* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %62 = call %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__* %61)
  store %struct.TYPE_15__* %62, %struct.TYPE_15__** %5, align 8
  br label %73

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63
  %65 = load i32*, i32** %14, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @svn_fs_base__dag_get_revision(i32* %11, i32* %65, %struct.TYPE_14__* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i32, i32* %11, align 4
  %71 = load i32*, i32** %6, align 8
  store i32 %70, i32* %71, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** %5, align 8
  br label %73

73:                                               ; preds = %64, %60, %51
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  ret %struct.TYPE_15__* %74
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__youngest_rev(i32*, i32, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @svn_fs_base__dag_revision_root(i32**, i32, i32, %struct.TYPE_14__*, i32*) #1

declare dso_local i32* @make_revision_root(i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @get_dag(i32**, i32*, i8*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__*) #1

declare dso_local i32 @svn_fs_base__dag_get_revision(i32*, i32*, %struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
