; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_svn_fs_x__put_node_revision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_svn_fs_x__put_node_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

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
define dso_local i32* @svn_fs_x__put_node_revision(i32* %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %9, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @svn_fs_x__is_txn(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %19 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call %struct.TYPE_10__* @svn_fs_x__id_unparse(%struct.TYPE_9__* %20, i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32* @svn_error_createf(i32 %18, i32* null, i32 %19, i32 %24)
  store i32* %25, i32** %4, align 8
  br label %56

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @svn_fs_x__path_txn_node_rev(i32* %27, %struct.TYPE_9__* %28, i32* %29, i32* %30)
  %32 = load i32, i32* @APR_WRITE, align 4
  %33 = load i32, i32* @APR_CREATE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @APR_TRUNCATE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @APR_BUFFERED, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @APR_OS_DEFAULT, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @svn_io_file_open(i32** %8, i32 %31, i32 %38, i32 %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* @TRUE, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @svn_stream_from_aprfile2(i32* %43, i32 %44, i32* %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @svn_fs_x__write_noderev(i32 %46, %struct.TYPE_8__* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32*, i32** %8, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @svn_io_file_close(i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %55, i32** %4, align 8
  br label %56

56:                                               ; preds = %26, %17
  %57 = load i32*, i32** %4, align 8
  ret i32* %57
}

declare dso_local i32 @svn_fs_x__is_txn(i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_10__* @svn_fs_x__id_unparse(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_open(i32**, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_x__path_txn_node_rev(i32*, %struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__write_noderev(i32, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
