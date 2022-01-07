; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_miscellaneous-table.c_svn_fs_bdb__miscellaneous_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_miscellaneous-table.c_svn_fs_bdb__miscellaneous_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i32, i32, i32, i32)* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"miscellaneous\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@DB_NOTFOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"fetching miscellaneous record\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__miscellaneous_get(i8** %0, %struct.TYPE_15__* %1, i8* %2, %struct.TYPE_14__* %3, i32* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_17__, align 4
  %13 = alloca %struct.TYPE_17__, align 4
  %14 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %11, align 8
  %18 = load i8**, i8*** %6, align 8
  store i8* null, i8** %18, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %20 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_14__* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_13__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32, i32)** %24, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @svn_fs_base__str_to_dbt(%struct.TYPE_17__* %12, i8* %32)
  %34 = call i32 @svn_fs_base__result_dbt(%struct.TYPE_17__* %13)
  %35 = call i32 %25(%struct.TYPE_13__* %28, i32 %31, i32 %33, i32 %34, i32 0)
  store i32 %35, i32* %14, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @svn_fs_base__track_dbt(%struct.TYPE_17__* %13, i32* %36)
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @DB_NOTFOUND, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %5
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = call i32 @N_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @BDB_WRAP(%struct.TYPE_15__* %42, i32 %43, i32 %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @apr_pstrmemdup(i32* %47, i32 %49, i32 %51)
  %53 = load i8**, i8*** %6, align 8
  store i8* %52, i8** %53, align 8
  br label %54

54:                                               ; preds = %41, %5
  %55 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %55
}

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_14__*, i8*, i8*) #1

declare dso_local i32 @svn_fs_base__str_to_dbt(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @svn_fs_base__result_dbt(%struct.TYPE_17__*) #1

declare dso_local i32 @svn_fs_base__track_dbt(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @BDB_WRAP(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
