; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_strings-table.c_svn_fs_bdb__string_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_strings-table.c_svn_fs_bdb__string_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, i32, i32**, i32)*, i32 (%struct.TYPE_15__*, i32, i32*, i32*, i32)* }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"strings\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"creating cursor for reading a string\00", align 1
@DB_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"getting next-key value\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"put\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"writing copied data\00", align 1
@DB_NEXT_DUP = common dso_local global i32 0, align 4
@DB_NOTFOUND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"fetching string data for a copy\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"closing string-reading cursor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__string_copy(%struct.TYPE_13__* %0, i8** %1, i8* %2, %struct.TYPE_12__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %12, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i8* @apr_pstrdup(i32* %22, i8* %23)
  store i8* %24, i8** %18, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %26 = load i8**, i8*** %8, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32* @get_key_and_bump(%struct.TYPE_13__* %25, i8** %26, %struct.TYPE_12__* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32* %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %32 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_12__* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %34 = call i32 @N_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_15__*, i32, i32**, i32)*, i32 (%struct.TYPE_15__*, i32, i32**, i32)** %38, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 %39(%struct.TYPE_15__* %42, i32 %45, i32** %16, i32 0)
  %47 = call i32* @BDB_WRAP(%struct.TYPE_13__* %33, i32 %34, i32 %46)
  %48 = call i32 @SVN_ERR(i32* %47)
  %49 = load i8*, i8** %18, align 8
  %50 = call i32 @svn_fs_base__str_to_dbt(i32* %13, i8* %49)
  %51 = load i8**, i8*** %8, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @svn_fs_base__str_to_dbt(i32* %15, i8* %52)
  %54 = call i32 @svn_fs_base__clear_dbt(i32* %14)
  %55 = load i32*, i32** %16, align 8
  %56 = load i32, i32* @DB_SET, align 4
  %57 = call i32 @svn_bdb_dbc_get(i32* %55, i32* %13, i32* %14, i32 %56)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %5
  %61 = load i32*, i32** %16, align 8
  %62 = call i32 @svn_bdb_dbc_close(i32* %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %64 = call i32 @N_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* %17, align 4
  %66 = call i32* @BDB_WRAP(%struct.TYPE_13__* %63, i32 %64, i32 %65)
  store i32* %66, i32** %6, align 8
  br label %118

67:                                               ; preds = %5
  br label %68

68:                                               ; preds = %67, %111
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %70 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_12__* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i32 (%struct.TYPE_15__*, i32, i32*, i32*, i32)*, i32 (%struct.TYPE_15__*, i32, i32*, i32*, i32)** %74, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 %75(%struct.TYPE_15__* %78, i32 %81, i32* %15, i32* %14, i32 0)
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* %17, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %68
  %86 = load i32*, i32** %16, align 8
  %87 = call i32 @svn_bdb_dbc_close(i32* %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %89 = call i32 @N_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %90 = load i32, i32* %17, align 4
  %91 = call i32* @BDB_WRAP(%struct.TYPE_13__* %88, i32 %89, i32 %90)
  store i32* %91, i32** %6, align 8
  br label %118

92:                                               ; preds = %68
  %93 = call i32 @svn_fs_base__clear_dbt(i32* %14)
  %94 = load i32*, i32** %16, align 8
  %95 = load i32, i32* @DB_NEXT_DUP, align 4
  %96 = call i32 @svn_bdb_dbc_get(i32* %94, i32* %13, i32* %14, i32 %95)
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* @DB_NOTFOUND, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %112

101:                                              ; preds = %92
  %102 = load i32, i32* %17, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load i32*, i32** %16, align 8
  %106 = call i32 @svn_bdb_dbc_close(i32* %105)
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %108 = call i32 @N_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %109 = load i32, i32* %17, align 4
  %110 = call i32* @BDB_WRAP(%struct.TYPE_13__* %107, i32 %108, i32 %109)
  store i32* %110, i32** %6, align 8
  br label %118

111:                                              ; preds = %101
  br label %68

112:                                              ; preds = %100
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %114 = call i32 @N_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %115 = load i32*, i32** %16, align 8
  %116 = call i32 @svn_bdb_dbc_close(i32* %115)
  %117 = call i32* @BDB_WRAP(%struct.TYPE_13__* %113, i32 %114, i32 %116)
  store i32* %117, i32** %6, align 8
  br label %118

118:                                              ; preds = %112, %104, %85, %60
  %119 = load i32*, i32** %6, align 8
  ret i32* %119
}

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @get_key_and_bump(%struct.TYPE_13__*, i8**, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i32* @BDB_WRAP(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @svn_fs_base__str_to_dbt(i32*, i8*) #1

declare dso_local i32 @svn_fs_base__clear_dbt(i32*) #1

declare dso_local i32 @svn_bdb_dbc_get(i32*, i32*, i32*, i32) #1

declare dso_local i32 @svn_bdb_dbc_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
