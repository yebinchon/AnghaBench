; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_rep-cache.c_open_rep_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_rep-cache.c_open_rep_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32* }

@svn_sqlite__mode_rwcreate = common dso_local global i32 0, align 4
@statements = common dso_local global i32 0, align 4
@SVN_FS_FS__MIN_REP_CACHE_SCHEMA_V2_FORMAT = common dso_local global i64 0, align 8
@STMT_CREATE_SCHEMA_V2 = common dso_local global i32 0, align 4
@STMT_CREATE_SCHEMA_V1 = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_13__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i8*, i32*)* @open_rep_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @open_rep_cache(i8* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %6, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %7, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i8* @path_rep_cache_db(i32 %22, i32* %23)
  store i8* %24, i8** %9, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @svn_fs_fs__exists_rep_cache(i32* %11, %struct.TYPE_12__* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %63, label %31

31:                                               ; preds = %2
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i8* @svn_fs_fs__path_current(%struct.TYPE_12__* %32, i32* %33)
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call %struct.TYPE_13__* @svn_io_file_create_empty(i8* %35, i32* %36)
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %13, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %39 = icmp ne %struct.TYPE_13__* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %31
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @APR_STATUS_IS_EEXIST(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %48 = call %struct.TYPE_13__* @svn_error_trace(%struct.TYPE_13__* %47)
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %3, align 8
  br label %101

49:                                               ; preds = %40, %31
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %51 = icmp ne %struct.TYPE_13__* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %54 = call i32 @svn_error_clear(%struct.TYPE_13__* %53)
  br label %61

55:                                               ; preds = %49
  %56 = load i8*, i8** %12, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @svn_io_copy_perms(i8* %56, i8* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  br label %61

61:                                               ; preds = %55, %52
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62, %2
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* @svn_sqlite__mode_rwcreate, align 4
  %66 = load i32, i32* @statements, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @svn_sqlite__open(i32** %8, i8* %64, i32 %65, i32 %66, i32 0, i32* null, i32 0, i32 %69, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load i32*, i32** %8, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @svn_sqlite__read_schema_version(i32* %10, i32* %73, i32* %74)
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @SVN_SQLITE__ERR_CLOSE(i32 %75, i32* %76)
  %78 = load i32, i32* %10, align 4
  %79 = icmp sle i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %63
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SVN_FS_FS__MIN_REP_CACHE_SCHEMA_V2_FORMAT, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* @STMT_CREATE_SCHEMA_V2, align 4
  store i32 %87, i32* %14, align 4
  br label %90

88:                                               ; preds = %80
  %89 = load i32, i32* @STMT_CREATE_SCHEMA_V1, align 4
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @svn_sqlite__exec_statements(i32* %91, i32 %92)
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @SVN_SQLITE__ERR_CLOSE(i32 %93, i32* %94)
  br label %96

96:                                               ; preds = %90, %63
  %97 = load i32*, i32** %8, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  store i32* %97, i32** %99, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_13__* %100, %struct.TYPE_13__** %3, align 8
  br label %101

101:                                              ; preds = %96, %46
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %102
}

declare dso_local i8* @path_rep_cache_db(i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__exists_rep_cache(i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local i8* @svn_fs_fs__path_current(%struct.TYPE_12__*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_io_file_create_empty(i8*, i32*) #1

declare dso_local i32 @APR_STATUS_IS_EEXIST(i32) #1

declare dso_local %struct.TYPE_13__* @svn_error_trace(%struct.TYPE_13__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_13__*) #1

declare dso_local i32 @svn_io_copy_perms(i8*, i8*, i32*) #1

declare dso_local i32 @svn_sqlite__open(i32**, i8*, i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @SVN_SQLITE__ERR_CLOSE(i32, i32*) #1

declare dso_local i32 @svn_sqlite__read_schema_version(i32*, i32*, i32*) #1

declare dso_local i32 @svn_sqlite__exec_statements(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
