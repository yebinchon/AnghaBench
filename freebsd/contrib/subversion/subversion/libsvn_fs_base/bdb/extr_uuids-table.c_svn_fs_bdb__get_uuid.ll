; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_uuids-table.c_svn_fs_bdb__get_uuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_uuids-table.c_svn_fs_bdb__get_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, i32)* }
%struct.TYPE_17__ = type { i32*, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@APR_UUID_FORMATTED_LENGTH = common dso_local global i32 0, align 4
@DB_DBT_USERMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"uuids\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"get repository uuid\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__get_uuid(%struct.TYPE_15__* %0, i32 %1, i8** %2, %struct.TYPE_14__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_17__, align 8
  %16 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %11, align 8
  %20 = load i32, i32* @APR_UUID_FORMATTED_LENGTH, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  store %struct.TYPE_18__* %27, %struct.TYPE_18__** %14, align 8
  %28 = call i32 @svn_fs_base__clear_dbt(%struct.TYPE_17__* %15)
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  store i32* %7, i32** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  store i32 4, i32* %30, align 8
  %31 = call i32 @svn_fs_base__clear_dbt(%struct.TYPE_17__* %16)
  %32 = bitcast i8* %24 to i32*
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  store i32* %32, i32** %33, align 8
  %34 = sub i64 %22, 1
  %35 = trunc i64 %34 to i32
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @DB_DBT_USERMEM, align 4
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %45 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_14__* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = call i32 @N_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_18__*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_18__*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, i32)** %49, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 %50(%struct.TYPE_18__* %51, i32 %54, %struct.TYPE_17__* %15, %struct.TYPE_17__* %16, i32 0)
  %56 = call i32 @BDB_WRAP(%struct.TYPE_15__* %46, i32 %47, i32 %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = bitcast i32* %60 to i8*
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i8* @apr_pstrmemdup(i32* %58, i8* %61, i32 %63)
  %65 = load i8**, i8*** %8, align 8
  store i8* %64, i8** %65, align 8
  %66 = load i32*, i32** @SVN_NO_ERROR, align 8
  %67 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %67)
  ret i32* %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @svn_fs_base__clear_dbt(%struct.TYPE_17__*) #2

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_14__*, i8*, i8*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @BDB_WRAP(%struct.TYPE_15__*, i32, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local i8* @apr_pstrmemdup(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
