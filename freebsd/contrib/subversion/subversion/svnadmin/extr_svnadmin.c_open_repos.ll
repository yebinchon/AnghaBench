; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnadmin/extr_svnadmin.c_open_repos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnadmin/extr_svnadmin.c_open_repos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svnadmin_opt_state = type { i64 }
%struct.TYPE_2__ = type { i64 }

@BLOCK_READ_CACHE_THRESHOLD = common dso_local global i64 0, align 8
@SVN_FS_CONFIG_FSFS_CACHE_DELTAS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@SVN_FS_CONFIG_FSFS_CACHE_FULLTEXTS = common dso_local global i32 0, align 4
@SVN_FS_CONFIG_FSFS_CACHE_NODEPROPS = common dso_local global i32 0, align 4
@SVN_FS_CONFIG_FSFS_CACHE_REVPROPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@SVN_FS_CONFIG_FSFS_CACHE_NS = common dso_local global i32 0, align 4
@SVN_FS_CONFIG_FSFS_BLOCK_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@SVN_FS_CONFIG_NO_FLUSH_TO_DISK = common dso_local global i32 0, align 4
@warning_func = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, %struct.svnadmin_opt_state*, i32*)* @open_repos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_repos(i32** %0, i8* %1, %struct.svnadmin_opt_state* %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.svnadmin_opt_state*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.svnadmin_opt_state* %2, %struct.svnadmin_opt_state** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = call %struct.TYPE_2__* (...) @svn_cache_config_get()
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BLOCK_READ_CACHE_THRESHOLD, align 8
  %15 = icmp sgt i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = call i32* @apr_hash_make(i32* %17)
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* @SVN_FS_CONFIG_FSFS_CACHE_DELTAS, align 4
  %21 = call i32 @svn_hash_sets(i32* %19, i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* @SVN_FS_CONFIG_FSFS_CACHE_FULLTEXTS, align 4
  %24 = call i32 @svn_hash_sets(i32* %22, i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* @SVN_FS_CONFIG_FSFS_CACHE_NODEPROPS, align 4
  %27 = call i32 @svn_hash_sets(i32* %25, i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* @SVN_FS_CONFIG_FSFS_CACHE_REVPROPS, align 4
  %30 = call i32 @svn_hash_sets(i32* %28, i32 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* @SVN_FS_CONFIG_FSFS_CACHE_NS, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = call i8* @svn_uuid_generate(i32* %33)
  %35 = call i32 @svn_hash_sets(i32* %31, i32 %32, i8* %34)
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* @SVN_FS_CONFIG_FSFS_BLOCK_READ, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %42 = call i32 @svn_hash_sets(i32* %36, i32 %37, i8* %41)
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* @SVN_FS_CONFIG_NO_FLUSH_TO_DISK, align 4
  %45 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %7, align 8
  %46 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %51 = call i32 @svn_hash_sets(i32* %43, i32 %44, i8* %50)
  %52 = load i32**, i32*** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @svn_repos_open3(i32** %52, i8* %53, i32* %54, i32* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32**, i32*** %5, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @svn_repos_fs(i32* %60)
  %62 = load i32, i32* @warning_func, align 4
  %63 = call i32 @svn_fs_set_warning_func(i32 %61, i32 %62, i32* null)
  %64 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %64
}

declare dso_local %struct.TYPE_2__* @svn_cache_config_get(...) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i8*) #1

declare dso_local i8* @svn_uuid_generate(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_repos_open3(i32**, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_set_warning_func(i32, i32, i32*) #1

declare dso_local i32 @svn_repos_fs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
