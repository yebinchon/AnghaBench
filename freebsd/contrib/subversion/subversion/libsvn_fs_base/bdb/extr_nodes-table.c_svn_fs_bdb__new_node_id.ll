; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_nodes-table.c_svn_fs_bdb__new_node_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_nodes-table.c_svn_fs_bdb__new_node_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, i32, %struct.TYPE_19__*, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32, i32, i32)* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }

@MAX_KEY_SIZE = common dso_local global i32 0, align 4
@NEXT_KEY_KEY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"allocating new node ID (getting 'next-key')\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"put\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"bumping next node ID key\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__new_node_id(i32** %0, %struct.TYPE_17__* %1, i8* %2, i8* %3, %struct.TYPE_16__* %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_19__, align 4
  %15 = alloca %struct.TYPE_19__, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i32** %0, i32*** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %11, align 8
  store i32* %5, i32** %12, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %13, align 8
  %24 = load i32, i32* @MAX_KEY_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %17, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %18, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @SVN_ERR_ASSERT(i8* %28)
  %30 = load i8*, i8** @NEXT_KEY_KEY, align 8
  %31 = call i32 @svn_fs_base__str_to_dbt(%struct.TYPE_19__* %14, i8* %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %33 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_16__* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %35 = call i32 @N_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_15__*, i32, %struct.TYPE_19__*, i32, i32)*, i32 (%struct.TYPE_15__*, i32, %struct.TYPE_19__*, i32, i32)** %39, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @svn_fs_base__result_dbt(%struct.TYPE_19__* %15)
  %48 = call i32 %40(%struct.TYPE_15__* %43, i32 %46, %struct.TYPE_19__* %14, i32 %47, i32 0)
  %49 = call i32 @BDB_WRAP(%struct.TYPE_17__* %34, i32 %35, i32 %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @svn_fs_base__track_dbt(%struct.TYPE_19__* %15, i32* %51)
  %53 = load i32*, i32** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @apr_pstrmemdup(i32* %53, i32 %55, i32 %57)
  store i8* %58, i8** %20, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %16, align 4
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @svn_fs_base__next_key(i32 %62, i32* %16, i8* %27)
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %65 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_16__* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i32 (%struct.TYPE_15__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32, i32, i32)** %69, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** @NEXT_KEY_KEY, align 8
  %78 = call i32 @svn_fs_base__str_to_dbt(%struct.TYPE_19__* %14, i8* %77)
  %79 = call i32 @svn_fs_base__str_to_dbt(%struct.TYPE_19__* %15, i8* %27)
  %80 = call i32 %70(%struct.TYPE_15__* %73, i32 %76, i32 %78, i32 %79, i32 0)
  store i32 %80, i32* %19, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %82 = call i32 @N_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i32, i32* %19, align 4
  %84 = call i32 @BDB_WRAP(%struct.TYPE_17__* %81, i32 %82, i32 %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load i8*, i8** %20, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i32*, i32** %12, align 8
  %90 = call i32* @svn_fs_base__id_create(i8* %86, i8* %87, i8* %88, i32* %89)
  %91 = load i32**, i32*** %7, align 8
  store i32* %90, i32** %91, align 8
  %92 = load i32*, i32** @SVN_NO_ERROR, align 8
  %93 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %93)
  ret i32* %92
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SVN_ERR_ASSERT(i8*) #2

declare dso_local i32 @svn_fs_base__str_to_dbt(%struct.TYPE_19__*, i8*) #2

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_16__*, i8*, i8*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @BDB_WRAP(%struct.TYPE_17__*, i32, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local i32 @svn_fs_base__result_dbt(%struct.TYPE_19__*) #2

declare dso_local i32 @svn_fs_base__track_dbt(%struct.TYPE_19__*, i32*) #2

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i32) #2

declare dso_local i32 @svn_fs_base__next_key(i32, i32*, i8*) #2

declare dso_local i32* @svn_fs_base__id_create(i8*, i8*, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
