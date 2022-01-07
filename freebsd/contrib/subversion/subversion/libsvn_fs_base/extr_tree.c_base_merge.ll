; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_base_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_base_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32*, i32 }
%struct.get_root_args = type { %struct.TYPE_19__*, i32*, i32*, i32*, i32*, %struct.TYPE_17__* }
%struct.TYPE_19__ = type { i8* }
%struct.merge_args = type { %struct.TYPE_19__*, i32*, i32*, i32*, i32*, %struct.TYPE_17__* }

@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Bad merge; ancestor, source, and target not all in same fs\00", align 1
@txn_body_get_root = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@txn_body_merge = common dso_local global i32 0, align 4
@SVN_ERR_FS_CONFLICT = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_18__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (i8**, %struct.TYPE_17__*, i8*, %struct.TYPE_17__*, i8*, %struct.TYPE_17__*, i8*, i32*)* @base_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @base_merge(i8** %0, %struct.TYPE_17__* %1, i8* %2, %struct.TYPE_17__* %3, i8* %4, %struct.TYPE_17__* %5, i8* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.get_root_args, align 8
  %21 = alloca %struct.merge_args, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_18__*, align 8
  %24 = alloca i32*, align 8
  store i8** %0, i8*** %10, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %11, align 8
  store i8* %2, i8** %12, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %13, align 8
  store i8* %4, i8** %14, align 8
  store %struct.TYPE_17__* %5, %struct.TYPE_17__** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %31 = call %struct.TYPE_18__* @SVN_FS__NOT_TXN(%struct.TYPE_17__* %30)
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %9, align 8
  br label %117

32:                                               ; preds = %8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %24, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32*, i32** %24, align 8
  %40 = icmp ne i32* %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %32
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32*, i32** %24, align 8
  %46 = icmp ne i32* %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41, %32
  %48 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %49 = call i32 @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %50 = call %struct.TYPE_18__* @svn_error_create(i32 %48, i32* null, i32 %49)
  store %struct.TYPE_18__* %50, %struct.TYPE_18__** %9, align 8
  br label %117

51:                                               ; preds = %41
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %53 = getelementptr inbounds %struct.get_root_args, %struct.get_root_args* %20, i32 0, i32 5
  store %struct.TYPE_17__* %52, %struct.TYPE_17__** %53, align 8
  %54 = load i32*, i32** %24, align 8
  %55 = load i32, i32* @txn_body_get_root, align 4
  %56 = bitcast %struct.get_root_args* %20 to %struct.merge_args*
  %57 = load i32, i32* @FALSE, align 4
  %58 = load i32*, i32** %17, align 8
  %59 = call %struct.TYPE_18__* @svn_fs_base__retry_txn(i32* %54, i32 %55, %struct.merge_args* %56, i32 %57, i32* %58)
  %60 = call i32 @SVN_ERR(%struct.TYPE_18__* %59)
  %61 = getelementptr inbounds %struct.get_root_args, %struct.get_root_args* %20, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %19, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %64 = getelementptr inbounds %struct.get_root_args, %struct.get_root_args* %20, i32 0, i32 5
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %64, align 8
  %65 = load i32*, i32** %24, align 8
  %66 = load i32, i32* @txn_body_get_root, align 4
  %67 = bitcast %struct.get_root_args* %20 to %struct.merge_args*
  %68 = load i32, i32* @FALSE, align 4
  %69 = load i32*, i32** %17, align 8
  %70 = call %struct.TYPE_18__* @svn_fs_base__retry_txn(i32* %65, i32 %66, %struct.merge_args* %67, i32 %68, i32* %69)
  %71 = call i32 @SVN_ERR(%struct.TYPE_18__* %70)
  %72 = getelementptr inbounds %struct.get_root_args, %struct.get_root_args* %20, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %18, align 8
  %74 = load i32*, i32** %24, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32*, i32** %17, align 8
  %79 = call %struct.TYPE_18__* @svn_fs_base__open_txn(i32** %22, i32* %74, i32 %77, i32* %78)
  %80 = call i32 @SVN_ERR(%struct.TYPE_18__* %79)
  %81 = load i32*, i32** %18, align 8
  %82 = getelementptr inbounds %struct.merge_args, %struct.merge_args* %21, i32 0, i32 3
  store i32* %81, i32** %82, align 8
  %83 = load i32*, i32** %19, align 8
  %84 = getelementptr inbounds %struct.merge_args, %struct.merge_args* %21, i32 0, i32 2
  store i32* %83, i32** %84, align 8
  %85 = load i32*, i32** %22, align 8
  %86 = getelementptr inbounds %struct.merge_args, %struct.merge_args* %21, i32 0, i32 1
  store i32* %85, i32** %86, align 8
  %87 = load i32*, i32** %17, align 8
  %88 = call %struct.TYPE_19__* @svn_stringbuf_create_empty(i32* %87)
  %89 = getelementptr inbounds %struct.merge_args, %struct.merge_args* %21, i32 0, i32 0
  store %struct.TYPE_19__* %88, %struct.TYPE_19__** %89, align 8
  %90 = load i32*, i32** %24, align 8
  %91 = load i32, i32* @txn_body_merge, align 4
  %92 = load i32, i32* @FALSE, align 4
  %93 = load i32*, i32** %17, align 8
  %94 = call %struct.TYPE_18__* @svn_fs_base__retry_txn(i32* %90, i32 %91, %struct.merge_args* %21, i32 %92, i32* %93)
  store %struct.TYPE_18__* %94, %struct.TYPE_18__** %23, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %96 = icmp ne %struct.TYPE_18__* %95, null
  br i1 %96, label %97, label %115

97:                                               ; preds = %51
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @SVN_ERR_FS_CONFLICT, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %97
  %104 = load i8**, i8*** %10, align 8
  %105 = icmp ne i8** %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.merge_args, %struct.merge_args* %21, i32 0, i32 0
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load i8**, i8*** %10, align 8
  store i8* %110, i8** %111, align 8
  br label %112

112:                                              ; preds = %106, %103, %97
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %114 = call %struct.TYPE_18__* @svn_error_trace(%struct.TYPE_18__* %113)
  store %struct.TYPE_18__* %114, %struct.TYPE_18__** %9, align 8
  br label %117

115:                                              ; preds = %51
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_18__* %116, %struct.TYPE_18__** %9, align 8
  br label %117

117:                                              ; preds = %115, %112, %47, %29
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  ret %struct.TYPE_18__* %118
}

declare dso_local %struct.TYPE_18__* @SVN_FS__NOT_TXN(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @svn_fs_base__retry_txn(i32*, i32, %struct.merge_args*, i32, i32*) #1

declare dso_local %struct.TYPE_18__* @svn_fs_base__open_txn(i32**, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_19__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local %struct.TYPE_18__* @svn_error_trace(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
