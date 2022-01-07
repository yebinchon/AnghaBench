; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_svn_fs_fs__create_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_svn_fs_fs__create_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_17__*, i32*, i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }

@SVN_FS_FS__MIN_TXN_CURRENT_FORMAT = common dso_local global i64 0, align 8
@txn_vtable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"0 0\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__create_txn(%struct.TYPE_15__** %0, %struct.TYPE_16__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_15__**, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_15__** %0, %struct.TYPE_15__*** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %9, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i8* @apr_pcalloc(i32* %16, i32 40)
  %18 = bitcast i8* %17 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %10, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i8* @apr_pcalloc(i32* %19, i32 4)
  %21 = bitcast i8* %20 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %11, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SVN_FS_FS__MIN_TXN_CURRENT_FORMAT, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @create_txn_dir(i32* %29, i32* %31, %struct.TYPE_16__* %32, i32 %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  br label %47

37:                                               ; preds = %4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @create_txn_dir_pre_1_5(i32* %39, i32* %41, %struct.TYPE_16__* %42, i32 %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  br label %47

47:                                               ; preds = %37, %27
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 3
  store %struct.TYPE_16__* %48, %struct.TYPE_16__** %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  store i32* @txn_vtable, i32** %55, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  store %struct.TYPE_17__* %56, %struct.TYPE_17__** %58, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %60 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  store %struct.TYPE_15__* %59, %struct.TYPE_15__** %60, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @svn_fs_fs__rev_get_root(i32** %12, %struct.TYPE_16__* %61, i32 %62, i32* %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32*, i32** %12, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @create_new_txn_noderev_from_rev(%struct.TYPE_16__* %67, i32* %69, i32* %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @svn_fs_fs__path_txn_proto_rev(%struct.TYPE_16__* %74, i32* %76, i32* %77)
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @svn_io_file_create_empty(i32 %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @svn_fs_fs__path_txn_proto_rev_lock(%struct.TYPE_16__* %82, i32* %84, i32* %85)
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @svn_io_file_create_empty(i32 %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @path_txn_changes(%struct.TYPE_16__* %90, i32* %92, i32* %93)
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @svn_io_file_create_empty(i32 %94, i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @path_txn_next_ids(%struct.TYPE_16__* %98, i32* %100, i32* %101)
  %103 = load i32*, i32** %8, align 8
  %104 = call i32* @svn_io_file_create(i32 %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %103)
  ret i32* %104
}

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @create_txn_dir(i32*, i32*, %struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @create_txn_dir_pre_1_5(i32*, i32*, %struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__rev_get_root(i32**, %struct.TYPE_16__*, i32, i32*, i32*) #1

declare dso_local i32 @create_new_txn_noderev_from_rev(%struct.TYPE_16__*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_io_file_create_empty(i32, i32*) #1

declare dso_local i32 @svn_fs_fs__path_txn_proto_rev(%struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__path_txn_proto_rev_lock(%struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @path_txn_changes(%struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32* @svn_io_file_create(i32, i8*, i32*) #1

declare dso_local i32 @path_txn_next_ids(%struct.TYPE_16__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
