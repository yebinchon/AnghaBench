; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_repos.c_svn_repos_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_repos.c_svn_repos_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@SVN_REPOS__FORMAT_NUMBER = common dso_local global i32 0, align 4
@SVN_FS_CONFIG_FS_TYPE = common dso_local global i32 0, align 4
@DEFAULT_FS_TYPE = common dso_local global i32 0, align 4
@SVN_FS_CONFIG_PRE_1_4_COMPATIBLE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_REPOS__FORMAT_NUMBER_LEGACY = common dso_local global i32 0, align 4
@SVN_ERR_REPOS_BAD_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"'%s' is an existing repository\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"'%s' is a subdirectory of an existing repository rooted at '%s'\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Repository creation failed\00", align 1
@SVN_REPOS__FORMAT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_create(%struct.TYPE_6__** %0, i8* %1, i8* %2, i8* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load i32*, i32** %15, align 8
  %22 = call i32* @svn_pool_create(i32* %21)
  store i32* %22, i32** %18, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = call %struct.TYPE_6__* @create_svn_repos_t(i8* %23, i32* %24)
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %16, align 8
  %26 = load i32, i32* @SVN_REPOS__FORMAT_NUMBER, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32*, i32** %14, align 8
  %30 = load i32, i32* @SVN_FS_CONFIG_FS_TYPE, align 4
  %31 = load i32, i32* @DEFAULT_FS_TYPE, align 4
  %32 = call i32 @svn_hash__get_cstring(i32* %29, i32 %30, i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %14, align 8
  %36 = load i32, i32* @SVN_FS_CONFIG_PRE_1_4_COMPATIBLE, align 4
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i64 @svn_hash__get_bool(i32* %35, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %7
  %41 = load i32, i32* @SVN_REPOS__FORMAT_NUMBER_LEGACY, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %7
  %45 = load i8*, i8** %10, align 8
  %46 = load i32*, i32** %18, align 8
  %47 = call i32 @svn_dirent_get_absolute(i8** %20, i8* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i8*, i8** %20, align 8
  %50 = load i32*, i32** %18, align 8
  %51 = call i8* @svn_repos_find_root_path(i8* %49, i32* %50)
  store i8* %51, i8** %19, align 8
  %52 = load i8*, i8** %19, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %76

54:                                               ; preds = %44
  %55 = load i8*, i8** %19, align 8
  %56 = load i8*, i8** %20, align 8
  %57 = call i64 @strcmp(i8* %55, i8* %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i32, i32* @SVN_ERR_REPOS_BAD_ARGS, align 4
  %61 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %62 = load i8*, i8** %19, align 8
  %63 = load i32*, i32** %18, align 8
  %64 = call i32 @svn_dirent_local_style(i8* %62, i32* %63)
  %65 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %60, i32* null, i32 %61, i32 %64)
  store i32* %65, i32** %8, align 8
  br label %126

66:                                               ; preds = %54
  %67 = load i32, i32* @SVN_ERR_REPOS_BAD_ARGS, align 4
  %68 = call i32 @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i8*, i8** %20, align 8
  %70 = load i32*, i32** %18, align 8
  %71 = call i32 @svn_dirent_local_style(i8* %69, i32* %70)
  %72 = load i8*, i8** %19, align 8
  %73 = load i32*, i32** %18, align 8
  %74 = call i32 @svn_dirent_local_style(i8* %72, i32* %73)
  %75 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %67, i32* null, i32 %68, i32 %71, i32 %74)
  store i32* %75, i32** %8, align 8
  br label %126

76:                                               ; preds = %44
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load i32*, i32** %14, align 8
  %80 = load i32*, i32** %18, align 8
  %81 = call i32 @create_repos_structure(%struct.TYPE_6__* %77, i8* %78, i32* %79, i32* %80)
  %82 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %83 = call i32 @SVN_ERR_W(i32 %81, i32 %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %85 = load i32, i32* @FALSE, align 4
  %86 = load i32, i32* @FALSE, align 4
  %87 = load i32*, i32** %18, align 8
  %88 = call i32 @lock_repos(%struct.TYPE_6__* %84, i32 %85, i32 %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %14, align 8
  %96 = load i32*, i32** %15, align 8
  %97 = load i32*, i32** %18, align 8
  %98 = call i32* @svn_fs_create2(i32* %91, i32 %94, i32* %95, i32* %96, i32* %97)
  store i32* %98, i32** %17, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %110

100:                                              ; preds = %76
  %101 = load i32*, i32** %18, align 8
  %102 = call i32 @svn_pool_destroy(i32* %101)
  %103 = load i32*, i32** %17, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = load i32, i32* @FALSE, align 4
  %106 = load i32*, i32** %15, align 8
  %107 = call i32 @svn_io_remove_dir2(i8* %104, i32 %105, i32* null, i32* null, i32* %106)
  %108 = call i32 @svn_error_compose_create(i32* %103, i32 %107)
  %109 = call i32* @svn_error_trace(i32 %108)
  store i32* %109, i32** %8, align 8
  br label %126

110:                                              ; preds = %76
  %111 = load i8*, i8** %10, align 8
  %112 = load i32, i32* @SVN_REPOS__FORMAT, align 4
  %113 = load i32*, i32** %18, align 8
  %114 = call i32 @svn_dirent_join(i8* %111, i32 %112, i32* %113)
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %18, align 8
  %119 = call i32 @svn_io_write_version_file(i32 %114, i32 %117, i32* %118)
  %120 = call i32 @SVN_ERR(i32 %119)
  %121 = load i32*, i32** %18, align 8
  %122 = call i32 @svn_pool_destroy(i32* %121)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %124 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  store %struct.TYPE_6__* %123, %struct.TYPE_6__** %124, align 8
  %125 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %125, i32** %8, align 8
  br label %126

126:                                              ; preds = %110, %100, %66, %59
  %127 = load i32*, i32** %8, align 8
  ret i32* %127
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.TYPE_6__* @create_svn_repos_t(i8*, i32*) #1

declare dso_local i32 @svn_hash__get_cstring(i32*, i32, i32) #1

declare dso_local i64 @svn_hash__get_bool(i32*, i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i8* @svn_repos_find_root_path(i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @SVN_ERR_W(i32, i32) #1

declare dso_local i32 @create_repos_structure(%struct.TYPE_6__*, i8*, i32*, i32*) #1

declare dso_local i32 @lock_repos(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32* @svn_fs_create2(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_io_remove_dir2(i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_io_write_version_file(i32, i32, i32*) #1

declare dso_local i32 @svn_dirent_join(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
