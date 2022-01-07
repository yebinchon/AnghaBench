; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_strings-table.c_get_key_and_bump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_strings-table.c_get_key_and_bump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*, i32, i32**, i32)* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }

@MAX_KEY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"strings\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"creating cursor for reading a string\00", align 1
@NEXT_KEY_KEY = common dso_local global i8* null, align 8
@DB_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"getting next-key value\00", align 1
@DB_CURRENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"bumping next string key\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"closing string-reading cursor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_16__*, i8**, %struct.TYPE_15__*, i32*)* @get_key_and_bump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_key_and_bump(%struct.TYPE_16__* %0, i8** %1, %struct.TYPE_15__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_18__, align 4
  %17 = alloca %struct.TYPE_18__, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %10, align 8
  %22 = load i32, i32* @MAX_KEY_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %12, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %27 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_15__* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = call i32 @N_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_14__*, i32, i32**, i32)*, i32 (%struct.TYPE_14__*, i32, i32**, i32)** %33, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 %34(%struct.TYPE_14__* %37, i32 %40, i32** %11, i32 0)
  %42 = call i32* @BDB_WRAP(%struct.TYPE_16__* %28, i32 %29, i32 %41)
  %43 = call i32 @SVN_ERR(i32* %42)
  %44 = load i32*, i32** %11, align 8
  %45 = load i8*, i8** @NEXT_KEY_KEY, align 8
  %46 = call i32 @svn_fs_base__str_to_dbt(%struct.TYPE_18__* %16, i8* %45)
  %47 = call i32 @svn_fs_base__result_dbt(%struct.TYPE_18__* %17)
  %48 = load i32, i32* @DB_SET, align 4
  %49 = call i32 @svn_bdb_dbc_get(i32* %44, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %4
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @svn_bdb_dbc_close(i32* %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %56 = call i32 @N_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* %15, align 4
  %58 = call i32* @BDB_WRAP(%struct.TYPE_16__* %55, i32 %56, i32 %57)
  store i32* %58, i32** %5, align 8
  store i32 1, i32* %18, align 4
  br label %93

59:                                               ; preds = %4
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @svn_fs_base__track_dbt(%struct.TYPE_18__* %17, i32* %60)
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @apr_pstrmemdup(i32* %62, i32 %64, i32 %66)
  %68 = load i8**, i8*** %7, align 8
  store i8* %67, i8** %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %14, align 4
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @svn_fs_base__next_key(i32 %72, i32* %14, i8* %25)
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @svn_fs_base__str_to_dbt(%struct.TYPE_18__* %17, i8* %25)
  %76 = load i32, i32* @DB_CURRENT, align 4
  %77 = call i32 @svn_bdb_dbc_put(i32* %74, %struct.TYPE_18__* %16, i32 %75, i32 %76)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %59
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @svn_bdb_dbc_close(i32* %81)
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %84 = call i32 @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i32, i32* %15, align 4
  %86 = call i32* @BDB_WRAP(%struct.TYPE_16__* %83, i32 %84, i32 %85)
  store i32* %86, i32** %5, align 8
  store i32 1, i32* %18, align 4
  br label %93

87:                                               ; preds = %59
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %89 = call i32 @N_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %90 = load i32*, i32** %11, align 8
  %91 = call i32 @svn_bdb_dbc_close(i32* %90)
  %92 = call i32* @BDB_WRAP(%struct.TYPE_16__* %88, i32 %89, i32 %91)
  store i32* %92, i32** %5, align 8
  store i32 1, i32* %18, align 4
  br label %93

93:                                               ; preds = %87, %80, %52
  %94 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32*, i32** %5, align 8
  ret i32* %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_15__*, i8*, i8*) #2

declare dso_local i32 @SVN_ERR(i32*) #2

declare dso_local i32* @BDB_WRAP(%struct.TYPE_16__*, i32, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local i32 @svn_bdb_dbc_get(i32*, i32, i32, i32) #2

declare dso_local i32 @svn_fs_base__str_to_dbt(%struct.TYPE_18__*, i8*) #2

declare dso_local i32 @svn_fs_base__result_dbt(%struct.TYPE_18__*) #2

declare dso_local i32 @svn_bdb_dbc_close(i32*) #2

declare dso_local i32 @svn_fs_base__track_dbt(%struct.TYPE_18__*, i32*) #2

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i32) #2

declare dso_local i32 @svn_fs_base__next_key(i32, i32*, i8*) #2

declare dso_local i32 @svn_bdb_dbc_put(i32*, %struct.TYPE_18__*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
