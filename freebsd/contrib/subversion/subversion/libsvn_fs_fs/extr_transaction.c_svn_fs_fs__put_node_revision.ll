; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_svn_fs_fs__put_node_revision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_svn_fs_fs__put_node_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Attempted to write to non-transaction '%s'\00", align 1
@APR_WRITE = common dso_local global i32 0, align 4
@APR_CREATE = common dso_local global i32 0, align 4
@APR_TRUNCATE = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__put_node_revision(%struct.TYPE_10__* %0, i32* %1, %struct.TYPE_11__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %12, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @svn_fs_fs__id_is_txn(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %25 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call %struct.TYPE_13__* @svn_fs_fs__id_unparse(i32* %26, i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @svn_error_createf(i32 %24, i32* null, i32 %25, i32 %30)
  store i32* %31, i32** %6, align 8
  br label %66

32:                                               ; preds = %5
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @svn_fs_fs__path_txn_node_rev(%struct.TYPE_10__* %33, i32* %34, i32* %35)
  %37 = load i32, i32* @APR_WRITE, align 4
  %38 = load i32, i32* @APR_CREATE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @APR_TRUNCATE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @APR_BUFFERED, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @APR_OS_DEFAULT, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @svn_io_file_open(i32** %13, i32 %36, i32 %43, i32 %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* @TRUE, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @svn_stream_from_aprfile2(i32* %48, i32 %49, i32* %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = call i32 @svn_fs_fs__fs_supports_mergeinfo(%struct.TYPE_10__* %56)
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @svn_fs_fs__write_noderev(i32 %51, %struct.TYPE_11__* %52, i32 %55, i32 %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i32*, i32** %13, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @svn_io_file_close(i32* %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %65, i32** %6, align 8
  br label %66

66:                                               ; preds = %32, %23
  %67 = load i32*, i32** %6, align 8
  ret i32* %67
}

declare dso_local i32 @svn_fs_fs__id_is_txn(i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_13__* @svn_fs_fs__id_unparse(i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_open(i32**, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__path_txn_node_rev(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__write_noderev(i32, %struct.TYPE_11__*, i32, i32, i32*) #1

declare dso_local i32 @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__fs_supports_mergeinfo(%struct.TYPE_10__*) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
