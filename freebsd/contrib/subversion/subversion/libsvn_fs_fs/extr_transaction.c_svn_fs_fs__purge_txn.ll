; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_svn_fs_fs__purge_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_svn_fs_fs__purge_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@SVN_FS_FS__MIN_PROTOREVS_DIR_FORMAT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__purge_txn(%struct.TYPE_8__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @svn_fs_fs__id_txn_parse(i32* %8, i8* %12)
  %14 = call i32 @SVN_ERR(i32 %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @purge_shared_txn(%struct.TYPE_8__* %15, i32* %8, i32* %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @svn_fs_fs__path_txn_dir(%struct.TYPE_8__* %19, i32* %8, i32* %20)
  %22 = load i32, i32* @FALSE, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @svn_io_remove_dir2(i32 %21, i32 %22, i32* null, i32* null, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SVN_FS_FS__MIN_PROTOREVS_DIR_FORMAT, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %3
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @svn_fs_fs__path_txn_proto_rev(%struct.TYPE_8__* %32, i32* %8, i32* %33)
  %35 = load i32, i32* @TRUE, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @svn_io_remove_file2(i32 %34, i32 %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @svn_fs_fs__path_txn_proto_rev_lock(%struct.TYPE_8__* %39, i32* %8, i32* %40)
  %42 = load i32, i32* @TRUE, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @svn_io_remove_file2(i32 %41, i32 %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  br label %46

46:                                               ; preds = %31, %3
  %47 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %47
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__id_txn_parse(i32*, i8*) #1

declare dso_local i32 @purge_shared_txn(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @svn_io_remove_dir2(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__path_txn_dir(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @svn_io_remove_file2(i32, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__path_txn_proto_rev(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__path_txn_proto_rev_lock(%struct.TYPE_8__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
