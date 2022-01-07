; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_store_sha1_rep_mapping.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_store_sha1_rep_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@svn_node_dir = common dso_local global i64 0, align 8
@APR_WRITE = common dso_local global i32 0, align 4
@APR_CREATE = common dso_local global i32 0, align 4
@APR_TRUNCATE = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_15__*, %struct.TYPE_13__*, i32*)* @store_sha1_rep_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @store_sha1_rep_mapping(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %7, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %86

19:                                               ; preds = %3
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = icmp ne %struct.TYPE_16__* %22, null
  br i1 %23, label %24, label %86

24:                                               ; preds = %19
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %86

31:                                               ; preds = %24
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @svn_fs_x__get_txn_id(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i8* @svn_fs_x__path_txn_sha1(%struct.TYPE_15__* %39, i32 %40, i32 %45, i32* %46)
  store i8* %47, i8** %10, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @svn_node_dir, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call %struct.TYPE_12__* @svn_fs_x__unparse_representation(%struct.TYPE_16__* %50, i32 %56, i32* %57, i32* %58)
  store %struct.TYPE_12__* %59, %struct.TYPE_12__** %11, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i32, i32* @APR_WRITE, align 4
  %62 = load i32, i32* @APR_CREATE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @APR_TRUNCATE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @APR_BUFFERED, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @APR_OS_DEFAULT, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @svn_io_file_open(i32** %8, i8* %60, i32 %67, i32 %68, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i32*, i32** %8, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @svn_io_file_write_full(i32* %72, i32 %75, i32 %78, i32* null, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load i32*, i32** %8, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @svn_io_file_close(i32* %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  br label %86

86:                                               ; preds = %31, %24, %19, %3
  %87 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %87
}

declare dso_local i32 @svn_fs_x__get_txn_id(i32) #1

declare dso_local i8* @svn_fs_x__path_txn_sha1(%struct.TYPE_15__*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_fs_x__unparse_representation(%struct.TYPE_16__*, i32, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_io_file_write_full(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
