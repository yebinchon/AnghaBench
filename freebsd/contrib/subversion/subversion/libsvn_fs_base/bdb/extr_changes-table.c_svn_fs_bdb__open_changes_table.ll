; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_changes-table.c_svn_fs_bdb__open_changes_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_changes-table.c_svn_fs_bdb__open_changes_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32, i8*, i32, i32, i32, i32)*, i32 (%struct.TYPE_6__*, i32)* }

@DB_CREATE = common dso_local global i32 0, align 4
@DB_EXCL = common dso_local global i32 0, align 4
@DB_DUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"changes\00", align 1
@DB_BTREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn_fs_bdb__open_changes_table(%struct.TYPE_6__** %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* @DB_CREATE, align 4
  %13 = load i32, i32* @DB_EXCL, align 4
  %14 = or i32 %12, %13
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i32 [ %14, %11 ], [ 0, %15 ]
  store i32 %17, i32* %7, align 4
  %18 = call i32 (...) @svn_fs_bdb__check_version()
  %19 = call i32 @BDB_ERR(i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @db_create(%struct.TYPE_6__** %8, i32* %20, i32 0)
  %22 = call i32 @BDB_ERR(i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = load i32, i32* @DB_DUP, align 4
  %28 = call i32 %25(%struct.TYPE_6__* %26, i32 %27)
  %29 = call i32 @BDB_ERR(i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32 (i32, i8*, i32, i32, i32, i32)*, i32 (i32, i8*, i32, i32, i32, i32)** %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = call i32 @SVN_BDB_OPEN_PARAMS(%struct.TYPE_6__* %33, i32* null)
  %35 = load i32, i32* @DB_BTREE, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 %32(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0, i32 %35, i32 %36, i32 438)
  %38 = call i32 @BDB_ERR(i32 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %40, align 8
  ret i32 0
}

declare dso_local i32 @BDB_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__check_version(...) #1

declare dso_local i32 @db_create(%struct.TYPE_6__**, i32*, i32) #1

declare dso_local i32 @SVN_BDB_OPEN_PARAMS(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
