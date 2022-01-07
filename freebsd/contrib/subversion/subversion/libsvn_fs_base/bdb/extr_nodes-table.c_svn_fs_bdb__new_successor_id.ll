; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_nodes-table.c_svn_fs_bdb__new_successor_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_nodes-table.c_svn_fs_bdb__new_successor_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@SVN_ERR_FS_ID_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_FS_ALREADY_EXISTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Successor id '%s' (for '%s') already exists in filesystem '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_19__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @svn_fs_bdb__new_successor_id(i32** %0, %struct.TYPE_18__* %1, i32* %2, i8* %3, i8* %4, %struct.TYPE_16__* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca %struct.TYPE_17__*, align 8
  store i32** %0, i32*** %9, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.TYPE_16__* %5, %struct.TYPE_16__** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = call i32 @SVN_ERR_ASSERT(i8* %20)
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @svn_fs_base__id_node_id(i32* %22)
  %24 = load i8*, i8** %12, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %7
  %27 = load i8*, i8** %12, align 8
  br label %31

28:                                               ; preds = %7
  %29 = load i32*, i32** %11, align 8
  %30 = call i8* @svn_fs_base__id_copy_id(i32* %29)
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi i8* [ %27, %26 ], [ %30, %28 ]
  %33 = load i8*, i8** %13, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = call i32* @svn_fs_base__id_create(i32 %23, i8* %32, i8* %33, i32* %34)
  store i32* %35, i32** %16, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.TYPE_19__* @svn_fs_bdb__get_node_revision(i32* null, %struct.TYPE_18__* %36, i32* %37, %struct.TYPE_16__* %38, i32 %41)
  store %struct.TYPE_19__* %42, %struct.TYPE_19__** %17, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %44 = icmp ne %struct.TYPE_19__* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %31
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SVN_ERR_FS_ID_NOT_FOUND, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %45, %31
  %52 = load i32*, i32** %11, align 8
  %53 = load i32*, i32** %15, align 8
  %54 = call %struct.TYPE_17__* @svn_fs_base__id_unparse(i32* %52, i32* %53)
  store %struct.TYPE_17__* %54, %struct.TYPE_17__** %18, align 8
  %55 = load i32*, i32** %16, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = call %struct.TYPE_17__* @svn_fs_base__id_unparse(i32* %55, i32* %56)
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %19, align 8
  %58 = load i32, i32* @SVN_ERR_FS_ALREADY_EXISTS, align 4
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %60 = call i32 @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.TYPE_19__* @svn_error_createf(i32 %58, %struct.TYPE_19__* %59, i32 %60, i32 %63, i32 %66, i32 %69)
  store %struct.TYPE_19__* %70, %struct.TYPE_19__** %8, align 8
  br label %77

71:                                               ; preds = %45
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %73 = call i32 @svn_error_clear(%struct.TYPE_19__* %72)
  %74 = load i32*, i32** %16, align 8
  %75 = load i32**, i32*** %9, align 8
  store i32* %74, i32** %75, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_19__* %76, %struct.TYPE_19__** %8, align 8
  br label %77

77:                                               ; preds = %71, %51
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  ret %struct.TYPE_19__* %78
}

declare dso_local i32 @SVN_ERR_ASSERT(i8*) #1

declare dso_local i32* @svn_fs_base__id_create(i32, i8*, i8*, i32*) #1

declare dso_local i32 @svn_fs_base__id_node_id(i32*) #1

declare dso_local i8* @svn_fs_base__id_copy_id(i32*) #1

declare dso_local %struct.TYPE_19__* @svn_fs_bdb__get_node_revision(i32*, %struct.TYPE_18__*, i32*, %struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_17__* @svn_fs_base__id_unparse(i32*, i32*) #1

declare dso_local %struct.TYPE_19__* @svn_error_createf(i32, %struct.TYPE_19__*, i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
