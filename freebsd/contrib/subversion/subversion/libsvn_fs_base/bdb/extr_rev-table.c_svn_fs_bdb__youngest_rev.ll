; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_rev-table.c_svn_fs_bdb__youngest_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_rev-table.c_svn_fs_bdb__youngest_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i32, i32**, i32)* }
%struct.TYPE_10__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"revisions\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"getting youngest revision (creating cursor)\00", align 1
@DB_LAST = common dso_local global i32 0, align 4
@DB_NOTFOUND = common dso_local global i32 0, align 4
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [74 x i8] c"Corrupt DB: revision 0 missing from 'revisions' table, in filesystem '%s'\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"getting youngest revision (finding last entry)\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"getting youngest revision (closing cursor)\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__youngest_rev(i64* %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %10, align 8
  store i32* null, i32** %12, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = load i32, i32* @TRUE, align 4
  %21 = call i32 @svn_fs__check_fs(%struct.TYPE_11__* %19, i32 %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %24 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_10__* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = call i32 @N_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_13__*, i32, i32**, i32)*, i32 (%struct.TYPE_13__*, i32, i32**, i32)** %30, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 %31(%struct.TYPE_13__* %34, i32 %37, i32** %12, i32 0)
  %39 = call i32 @BDB_WRAP(%struct.TYPE_11__* %25, i32 %26, i32 %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @svn_fs_base__recno_dbt(i32* %13, i64* %15)
  %43 = call i32 @svn_fs_base__nodata_dbt(i32* %14)
  %44 = load i32, i32* @DB_LAST, align 4
  %45 = call i32 @svn_bdb_dbc_get(i32* %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %4
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @svn_bdb_dbc_close(i32* %49)
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @DB_NOTFOUND, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32* @svn_error_createf(i32 %55, i32 0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  store i32* %59, i32** %5, align 8
  br label %77

60:                                               ; preds = %48
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %62 = call i32 @N_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @BDB_WRAP(%struct.TYPE_11__* %61, i32 %62, i32 %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  br label %66

66:                                               ; preds = %60, %4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = call i32 @N_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %69 = load i32*, i32** %12, align 8
  %70 = call i32 @svn_bdb_dbc_close(i32* %69)
  %71 = call i32 @BDB_WRAP(%struct.TYPE_11__* %67, i32 %68, i32 %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load i64, i64* %15, align 8
  %74 = sub nsw i64 %73, 1
  %75 = load i64*, i64** %6, align 8
  store i64 %74, i64* %75, align 8
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %76, i32** %5, align 8
  br label %77

77:                                               ; preds = %66, %54
  %78 = load i32*, i32** %5, align 8
  ret i32* %78
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs__check_fs(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local i32 @BDB_WRAP(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @svn_bdb_dbc_get(i32*, i32, i32, i32) #1

declare dso_local i32 @svn_fs_base__recno_dbt(i32*, i64*) #1

declare dso_local i32 @svn_fs_base__nodata_dbt(i32*) #1

declare dso_local i32 @svn_bdb_dbc_close(i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
