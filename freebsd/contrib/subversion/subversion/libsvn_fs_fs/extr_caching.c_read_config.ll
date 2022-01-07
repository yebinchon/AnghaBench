; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_caching.c_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_caching.c_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SVN_FS_CONFIG_FSFS_CACHE_NS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_FS_CONFIG_FSFS_CACHE_DELTAS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_FS_CONFIG_FSFS_CACHE_FULLTEXTS = common dso_local global i32 0, align 4
@SVN_FS_CONFIG_FSFS_CACHE_NODEPROPS = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i32*, i32*, %struct.TYPE_3__*, i32*)* @read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_config(i8** %0, i32* %1, i32* %2, i32* %3, %struct.TYPE_3__* %4, i32* %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  store i8** %0, i8*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SVN_FS_CONFIG_FSFS_CACHE_NS, align 4
  %17 = call i32 @svn_hash__get_cstring(i32 %15, i32 %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %12, align 8
  %19 = call i8* @normalize_key_part(i32 %17, i32* %18)
  %20 = load i8**, i8*** %7, align 8
  store i8* %19, i8** %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SVN_FS_CONFIG_FSFS_CACHE_DELTAS, align 4
  %25 = load i32, i32* @TRUE, align 4
  %26 = call i32 @svn_hash__get_bool(i32 %23, i32 %24, i32 %25)
  %27 = load i32*, i32** %8, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SVN_FS_CONFIG_FSFS_CACHE_FULLTEXTS, align 4
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @svn_hash__get_bool(i32 %30, i32 %31, i32 %32)
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SVN_FS_CONFIG_FSFS_CACHE_NODEPROPS, align 4
  %39 = load i32, i32* @TRUE, align 4
  %40 = call i32 @svn_hash__get_bool(i32 %37, i32 %38, i32 %39)
  %41 = load i32*, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %42
}

declare dso_local i8* @normalize_key_part(i32, i32*) #1

declare dso_local i32 @svn_hash__get_cstring(i32, i32, i8*) #1

declare dso_local i32 @svn_hash__get_bool(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
