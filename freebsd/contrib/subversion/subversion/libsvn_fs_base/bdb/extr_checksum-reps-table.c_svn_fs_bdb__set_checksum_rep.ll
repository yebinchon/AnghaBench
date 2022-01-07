; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_checksum-reps-table.c_svn_fs_bdb__set_checksum_rep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_checksum-reps-table.c_svn_fs_bdb__set_checksum_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*, i32, i32*, i32, i32)*, i32 (%struct.TYPE_14__*, i32, i32*, i32*, i32)* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i32 }

@svn_checksum_sha1 = common dso_local global i64 0, align 8
@SVN_ERR_BAD_CHECKSUM_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Only SHA1 checksums can be used as keys in the checksum-reps table.\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"checksum-reps\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@DB_NOTFOUND = common dso_local global i32 0, align 4
@SVN_ERR_FS_ALREADY_EXISTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"Representation key for checksum '%s' exists in filesystem '%s'.\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"put\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"storing checksum-reps record\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__set_checksum_rep(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i8* %2, %struct.TYPE_15__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %12, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @svn_checksum_sha1, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load i32, i32* @SVN_ERR_BAD_CHECKSUM_KIND, align 4
  %27 = call i32 @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %28 = call i32* @svn_error_create(i32 %26, i32* null, i32 %27)
  store i32* %28, i32** %6, align 8
  br label %85

29:                                               ; preds = %5
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %31 = call i32 @svn_fs_base__checksum_to_dbt(i32* %13, %struct.TYPE_17__* %30)
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %33 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_15__* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_14__*, i32, i32*, i32, i32)*, i32 (%struct.TYPE_14__*, i32, i32*, i32, i32)** %37, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @svn_fs_base__result_dbt(i32* %14)
  %46 = call i32 %38(%struct.TYPE_14__* %41, i32 %44, i32* %13, i32 %45, i32 0)
  store i32 %46, i32* %15, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @svn_fs_base__track_dbt(i32* %14, i32* %47)
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @DB_NOTFOUND, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %29
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i8* @svn_checksum_to_cstring_display(%struct.TYPE_17__* %53, i32* %54)
  store i8* %55, i8** %16, align 8
  %56 = load i32, i32* @SVN_ERR_FS_ALREADY_EXISTS, align 4
  %57 = call i32 @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i8*, i8** %16, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32* @svn_error_createf(i32 %56, i32* null, i32 %57, i8* %58, i32 %61)
  store i32* %62, i32** %6, align 8
  br label %85

63:                                               ; preds = %29
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @svn_fs_base__str_to_dbt(i32* %14, i8* %64)
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %67 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_15__* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %69 = call i32 @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i32 (%struct.TYPE_14__*, i32, i32*, i32*, i32)*, i32 (%struct.TYPE_14__*, i32, i32*, i32*, i32)** %73, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 %74(%struct.TYPE_14__* %77, i32 %80, i32* %13, i32* %14, i32 0)
  %82 = call i32 @BDB_WRAP(%struct.TYPE_16__* %68, i32 %69, i32 %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %84, i32** %6, align 8
  br label %85

85:                                               ; preds = %63, %52, %25
  %86 = load i32*, i32** %6, align 8
  ret i32* %86
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_base__checksum_to_dbt(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_15__*, i8*, i8*) #1

declare dso_local i32 @svn_fs_base__result_dbt(i32*) #1

declare dso_local i32 @svn_fs_base__track_dbt(i32*, i32*) #1

declare dso_local i8* @svn_checksum_to_cstring_display(%struct.TYPE_17__*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @svn_fs_base__str_to_dbt(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @BDB_WRAP(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
