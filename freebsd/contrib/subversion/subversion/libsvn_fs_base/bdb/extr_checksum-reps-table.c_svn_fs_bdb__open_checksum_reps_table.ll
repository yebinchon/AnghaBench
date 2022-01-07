; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_checksum-reps-table.c_svn_fs_bdb__open_checksum_reps_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_checksum-reps-table.c_svn_fs_bdb__open_checksum_reps_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i32, i8*, i32, i32, i32, i32)*, i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32, i32)* }

@DB_CREATE = common dso_local global i32 0, align 4
@DB_EXCL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"checksum-reps\00", align 1
@DB_BTREE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@NEXT_KEY_KEY = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn_fs_bdb__open_checksum_reps_table(%struct.TYPE_7__** %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @DB_CREATE, align 4
  %17 = load i32, i32* @DB_EXCL, align 4
  %18 = or i32 %16, %17
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ %18, %15 ], [ 0, %19 ]
  store i32 %21, i32* %8, align 4
  %22 = call i32 (...) @svn_fs_bdb__check_version()
  %23 = call i32 @BDB_ERR(i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @db_create(%struct.TYPE_7__** %9, i32* %24, i32 0)
  %26 = call i32 @BDB_ERR(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32 (i32, i8*, i32, i32, i32, i32)*, i32 (i32, i8*, i32, i32, i32, i32)** %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = call i32 @SVN_BDB_OPEN_PARAMS(%struct.TYPE_7__* %30, i32* null)
  %32 = load i32, i32* @DB_BTREE, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 %29(i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0, i32 %32, i32 %33, i32 438)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @ENOENT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %20
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %38
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %43, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = call i32 %44(%struct.TYPE_7__* %45, i32 0)
  %47 = call i32 @BDB_ERR(i32 %46)
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i64, i64* @TRUE, align 8
  %51 = call i32 @svn_fs_bdb__open_checksum_reps_table(%struct.TYPE_7__** %48, i32* %49, i64 %50)
  store i32 %51, i32* %4, align 4
  br label %70

52:                                               ; preds = %38, %20
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i32 (%struct.TYPE_7__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32, i32)** %57, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %60 = load i8*, i8** @NEXT_KEY_KEY, align 8
  %61 = call i32 @svn_fs_base__str_to_dbt(i32* %11, i8* %60)
  %62 = call i32 @svn_fs_base__str_to_dbt(i32* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i32 %58(%struct.TYPE_7__* %59, i32 0, i32 %61, i32 %62, i32 0)
  %64 = call i32 @BDB_ERR(i32 %63)
  br label %65

65:                                               ; preds = %55, %52
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @BDB_ERR(i32 %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %69 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** %69, align 8
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %41
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @BDB_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__check_version(...) #1

declare dso_local i32 @db_create(%struct.TYPE_7__**, i32*, i32) #1

declare dso_local i32 @SVN_BDB_OPEN_PARAMS(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @svn_fs_base__str_to_dbt(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
