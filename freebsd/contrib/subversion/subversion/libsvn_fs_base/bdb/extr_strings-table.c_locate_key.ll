; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_strings-table.c_locate_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_strings-table.c_locate_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__*, i32, i32**, i32)* }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"strings\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"creating cursor for reading a string\00", align 1
@DB_DBT_USERMEM = common dso_local global i32 0, align 4
@DB_SET = common dso_local global i32 0, align 4
@DB_NOTFOUND = common dso_local global i32 0, align 4
@SVN_ERR_FS_NO_SUCH_STRING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"No such string '%s'\00", align 1
@SVN_BDB_DB_BUFFER_SMALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"moving cursor\00", align 1
@DB_DBT_PARTIAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"rerunning cursor move\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, i32**, %struct.TYPE_17__*, %struct.TYPE_15__*, %struct.TYPE_14__*, i32*)* @locate_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @locate_key(i64* %0, i32** %1, %struct.TYPE_17__* %2, %struct.TYPE_15__* %3, %struct.TYPE_14__* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_17__, align 8
  %17 = alloca %struct.TYPE_17__, align 8
  store i64* %0, i64** %8, align 8
  store i32** %1, i32*** %9, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %14, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %22 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_14__* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %24 = call i32 @N_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_18__*, i32, i32**, i32)*, i32 (%struct.TYPE_18__*, i32, i32**, i32)** %28, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32**, i32*** %9, align 8
  %37 = call i32 %29(%struct.TYPE_18__* %32, i32 %35, i32** %36, i32 0)
  %38 = call i32* @BDB_WRAP(%struct.TYPE_15__* %23, i32 %24, i32 %37)
  %39 = call i32 @SVN_ERR(i32* %38)
  %40 = call i32 @svn_fs_base__clear_dbt(%struct.TYPE_17__* %16)
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @DB_DBT_USERMEM, align 4
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 8
  %46 = load i32**, i32*** %9, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %49 = load i32, i32* @DB_SET, align 4
  %50 = call i32 @svn_bdb_dbc_get(i32* %47, %struct.TYPE_17__* %48, %struct.TYPE_17__* %16, i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @DB_NOTFOUND, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %6
  %55 = load i32**, i32*** %9, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @svn_bdb_dbc_close(i32* %56)
  %58 = load i32, i32* @SVN_ERR_FS_NO_SUCH_STRING, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32* @svn_error_createf(i32 %58, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  store i32* %63, i32** %7, align 8
  br label %108

64:                                               ; preds = %6
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %103

67:                                               ; preds = %64
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* @SVN_BDB_DB_BUFFER_SMALL, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load i32**, i32*** %9, align 8
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @svn_bdb_dbc_close(i32* %73)
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %76 = call i32 @N_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %77 = load i32, i32* %15, align 4
  %78 = call i32* @BDB_WRAP(%struct.TYPE_15__* %75, i32 %76, i32 %77)
  store i32* %78, i32** %7, align 8
  br label %108

79:                                               ; preds = %67
  %80 = call i32 @svn_fs_base__clear_dbt(%struct.TYPE_17__* %17)
  %81 = load i32, i32* @DB_DBT_USERMEM, align 4
  %82 = load i32, i32* @DB_DBT_PARTIAL, align 4
  %83 = or i32 %81, %82
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 8
  %87 = load i32**, i32*** %9, align 8
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %90 = load i32, i32* @DB_SET, align 4
  %91 = call i32 @svn_bdb_dbc_get(i32* %88, %struct.TYPE_17__* %89, %struct.TYPE_17__* %17, i32 %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %79
  %95 = load i32**, i32*** %9, align 8
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @svn_bdb_dbc_close(i32* %96)
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %99 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %100 = load i32, i32* %15, align 4
  %101 = call i32* @BDB_WRAP(%struct.TYPE_15__* %98, i32 %99, i32 %100)
  store i32* %101, i32** %7, align 8
  br label %108

102:                                              ; preds = %79
  br label %103

103:                                              ; preds = %102, %64
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %8, align 8
  store i64 %105, i64* %106, align 8
  %107 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %107, i32** %7, align 8
  br label %108

108:                                              ; preds = %103, %94, %71, %54
  %109 = load i32*, i32** %7, align 8
  ret i32* %109
}

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_14__*, i8*, i8*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @BDB_WRAP(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @svn_fs_base__clear_dbt(%struct.TYPE_17__*) #1

declare dso_local i32 @svn_bdb_dbc_get(i32*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @svn_bdb_dbc_close(i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
