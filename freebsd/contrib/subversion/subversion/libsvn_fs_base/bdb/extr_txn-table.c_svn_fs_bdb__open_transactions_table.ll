; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_txn-table.c_svn_fs_bdb__open_transactions_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_txn-table.c_svn_fs_bdb__open_transactions_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32, i32, i32, i32)*, i32 (i32, i8*, i32, i32, i32, i32)* }

@DB_CREATE = common dso_local global i32 0, align 4
@DB_EXCL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"transactions\00", align 1
@DB_BTREE = common dso_local global i32 0, align 4
@NEXT_KEY_KEY = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn_fs_bdb__open_transactions_table(%struct.TYPE_6__** %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @DB_CREATE, align 4
  %15 = load i32, i32* @DB_EXCL, align 4
  %16 = or i32 %14, %15
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i32 [ %16, %13 ], [ 0, %17 ]
  store i32 %19, i32* %7, align 4
  %20 = call i32 (...) @svn_fs_bdb__check_version()
  %21 = call i32 @BDB_ERR(i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @db_create(%struct.TYPE_6__** %8, i32* %22, i32 0)
  %24 = call i32 @BDB_ERR(i32 %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32 (i32, i8*, i32, i32, i32, i32)*, i32 (i32, i8*, i32, i32, i32, i32)** %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = call i32 @SVN_BDB_OPEN_PARAMS(%struct.TYPE_6__* %28, i32* null)
  %30 = load i32, i32* @DB_BTREE, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 %27(i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0, i32 %30, i32 %31, i32 438)
  %33 = call i32 @BDB_ERR(i32 %32)
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %18
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_6__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32, i32)** %38, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = load i8*, i8** @NEXT_KEY_KEY, align 8
  %42 = call i32 @svn_fs_base__str_to_dbt(i32* %9, i8* %41)
  %43 = call i32 @svn_fs_base__str_to_dbt(i32* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i32 %39(%struct.TYPE_6__* %40, i32 0, i32 %42, i32 %43, i32 0)
  %45 = call i32 @BDB_ERR(i32 %44)
  br label %46

46:                                               ; preds = %36, %18
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %48, align 8
  ret i32 0
}

declare dso_local i32 @BDB_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__check_version(...) #1

declare dso_local i32 @db_create(%struct.TYPE_6__**, i32*, i32) #1

declare dso_local i32 @SVN_BDB_OPEN_PARAMS(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @svn_fs_base__str_to_dbt(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
