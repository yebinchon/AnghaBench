; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_store_sha1_rep_mapping.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_store_sha1_rep_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }

@svn_node_dir = common dso_local global i64 0, align 8
@APR_WRITE = common dso_local global i32 0, align 4
@APR_CREATE = common dso_local global i32 0, align 4
@APR_TRUNCATE = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, %struct.TYPE_12__*, i32*)* @store_sha1_rep_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @store_sha1_rep_mapping(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %7, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %84

18:                                               ; preds = %3
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = icmp ne %struct.TYPE_14__* %21, null
  br i1 %22, label %23, label %84

23:                                               ; preds = %18
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %84

30:                                               ; preds = %23
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i8* @path_txn_sha1(%struct.TYPE_11__* %31, i32* %35, i32 %40, i32* %41)
  store i8* %42, i8** %9, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @svn_node_dir, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call %struct.TYPE_10__* @svn_fs_fs__unparse_representation(%struct.TYPE_14__* %45, i32 %48, i32 %54, i32* %55, i32* %56)
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %10, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* @APR_WRITE, align 4
  %60 = load i32, i32* @APR_CREATE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @APR_TRUNCATE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @APR_BUFFERED, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @APR_OS_DEFAULT, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @svn_io_file_open(i32** %8, i8* %58, i32 %65, i32 %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i32*, i32** %8, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @svn_io_file_write_full(i32* %70, i32 %73, i32 %76, i32* null, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load i32*, i32** %8, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @svn_io_file_close(i32* %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  br label %84

84:                                               ; preds = %30, %23, %18, %3
  %85 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %85
}

declare dso_local i8* @path_txn_sha1(%struct.TYPE_11__*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_10__* @svn_fs_fs__unparse_representation(%struct.TYPE_14__*, i32, i32, i32*, i32*) #1

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
