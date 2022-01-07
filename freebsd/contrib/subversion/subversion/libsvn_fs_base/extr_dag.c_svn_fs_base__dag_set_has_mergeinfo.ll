; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_set_has_mergeinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_set_has_mergeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64 }

@.str = private unnamed_addr constant [10 x i8] c"mergeinfo\00", align 1
@SVN_FS_BASE__MIN_MERGEINFO_FORMAT = common dso_local global i32 0, align 4
@SVN_ERR_FS_NOT_MUTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Attempted merge tracking info change on immutable node\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__dag_set_has_mergeinfo(i32* %0, i64 %1, i64* %2, i8* %3, %struct.TYPE_8__* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32* @svn_fs_base__dag_get_fs(i32* %17)
  store i32* %18, i32** %15, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32* @svn_fs_base__dag_get_id(i32* %19)
  store i32* %20, i32** %16, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SVN_FS_BASE__MIN_MERGEINFO_FORMAT, align 4
  %25 = call i32 @svn_fs_base__test_required_feature_format(i32 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load i32*, i32** %8, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @svn_fs_base__dag_check_mutable(i32* %27, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %6
  %32 = load i32, i32* @SVN_ERR_FS_NOT_MUTABLE, align 4
  %33 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32* @svn_error_createf(i32 %32, i32* null, i32 %33)
  store i32* %34, i32** %7, align 8
  br label %82

35:                                               ; preds = %6
  %36 = load i32*, i32** %15, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = call i32 @svn_fs_bdb__get_node_revision(%struct.TYPE_9__** %14, i32* %36, i32* %37, %struct.TYPE_8__* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %10, align 8
  store i64 %44, i64* %45, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp ne i64 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load i64*, i64** %10, align 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = icmp ne i32 %49, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %35
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  br label %72

67:                                               ; preds = %56
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %67, %62
  %73 = load i32*, i32** %15, align 8
  %74 = load i32*, i32** %16, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @svn_fs_bdb__put_node_revision(i32* %73, i32* %74, %struct.TYPE_9__* %75, %struct.TYPE_8__* %76, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  br label %80

80:                                               ; preds = %72, %35
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %81, i32** %7, align 8
  br label %82

82:                                               ; preds = %80, %31
  %83 = load i32*, i32** %7, align 8
  ret i32* %83
}

declare dso_local i32* @svn_fs_base__dag_get_fs(i32*) #1

declare dso_local i32* @svn_fs_base__dag_get_id(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_base__test_required_feature_format(i32, i8*, i32) #1

declare dso_local i32 @svn_fs_base__dag_check_mutable(i32*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_bdb__get_node_revision(%struct.TYPE_9__**, i32*, i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @svn_fs_bdb__put_node_revision(i32*, i32*, %struct.TYPE_9__*, %struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
