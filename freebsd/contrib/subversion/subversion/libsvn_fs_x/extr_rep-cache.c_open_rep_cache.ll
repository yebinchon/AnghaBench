; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_rep-cache.c_open_rep_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_rep-cache.c_open_rep_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }

@svn_sqlite__mode_rwcreate = common dso_local global i32 0, align 4
@statements = common dso_local global i32 0, align 4
@REP_CACHE_SCHEMA_FORMAT = common dso_local global i32 0, align 4
@STMT_CREATE_SCHEMA = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_14__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (i8*, i32*)* @open_rep_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @open_rep_cache(i8* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %6, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %7, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i8* @path_rep_cache_db(i32 %21, i32* %22)
  store i8* %23, i8** %9, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @svn_fs_x__exists_rep_cache(i32* %11, %struct.TYPE_13__* %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %62, label %30

30:                                               ; preds = %2
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i8* @svn_fs_x__path_current(%struct.TYPE_13__* %31, i32* %32)
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call %struct.TYPE_14__* @svn_io_file_create_empty(i8* %34, i32* %35)
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %13, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %38 = icmp ne %struct.TYPE_14__* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %30
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @APR_STATUS_IS_EEXIST(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %47 = call %struct.TYPE_14__* @svn_error_trace(%struct.TYPE_14__* %46)
  store %struct.TYPE_14__* %47, %struct.TYPE_14__** %3, align 8
  br label %91

48:                                               ; preds = %39, %30
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %50 = icmp ne %struct.TYPE_14__* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %53 = call i32 @svn_error_clear(%struct.TYPE_14__* %52)
  br label %60

54:                                               ; preds = %48
  %55 = load i8*, i8** %12, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @svn_io_copy_perms(i8* %55, i8* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  br label %60

60:                                               ; preds = %54, %51
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61, %2
  %63 = load i8*, i8** %9, align 8
  %64 = load i32, i32* @svn_sqlite__mode_rwcreate, align 4
  %65 = load i32, i32* @statements, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @svn_sqlite__open(i32** %8, i8* %63, i32 %64, i32 %65, i32 0, i32* null, i32 0, i32 %68, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i32*, i32** %8, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @svn_sqlite__read_schema_version(i32* %10, i32* %72, i32* %73)
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @SVN_SQLITE__ERR_CLOSE(i32 %74, i32* %75)
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @REP_CACHE_SCHEMA_FORMAT, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %62
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* @STMT_CREATE_SCHEMA, align 4
  %83 = call i32 @svn_sqlite__exec_statements(i32* %81, i32 %82)
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @SVN_SQLITE__ERR_CLOSE(i32 %83, i32* %84)
  br label %86

86:                                               ; preds = %80, %62
  %87 = load i32*, i32** %8, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  store i32* %87, i32** %89, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_14__* %90, %struct.TYPE_14__** %3, align 8
  br label %91

91:                                               ; preds = %86, %45
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %92
}

declare dso_local i8* @path_rep_cache_db(i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__exists_rep_cache(i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i8* @svn_fs_x__path_current(%struct.TYPE_13__*, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_io_file_create_empty(i8*, i32*) #1

declare dso_local i32 @APR_STATUS_IS_EEXIST(i32) #1

declare dso_local %struct.TYPE_14__* @svn_error_trace(%struct.TYPE_14__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_14__*) #1

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
