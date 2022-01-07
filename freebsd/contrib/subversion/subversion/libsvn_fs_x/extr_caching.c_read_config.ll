; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_caching.c_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_caching.c_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SVN_FS_CONFIG_FSFS_CACHE_NS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_FS_CONFIG_FSFS_CACHE_DELTAS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_FS_CONFIG_FSFS_CACHE_FULLTEXTS = common dso_local global i32 0, align 4
@SVN_FS_CONFIG_FSFS_CACHE_REVPROPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_FS_CONFIG_FSFS_CACHE_NODEPROPS = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i32*, i32*, i32*, %struct.TYPE_3__*, i32*)* @read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_config(i8** %0, i32* %1, i32* %2, i32* %3, i32* %4, %struct.TYPE_3__* %5, i32* %6) #0 {
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32*, align 8
  store i8** %0, i8*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %13, align 8
  store i32* %6, i32** %14, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SVN_FS_CONFIG_FSFS_CACHE_NS, align 4
  %19 = call i32 @svn_hash__get_cstring(i32 %17, i32 %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %14, align 8
  %21 = call i8* @normalize_key_part(i32 %19, i32* %20)
  %22 = load i8**, i8*** %8, align 8
  store i8* %21, i8** %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SVN_FS_CONFIG_FSFS_CACHE_DELTAS, align 4
  %27 = load i32, i32* @TRUE, align 4
  %28 = call i32 @svn_hash__get_bool(i32 %25, i32 %26, i32 %27)
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SVN_FS_CONFIG_FSFS_CACHE_FULLTEXTS, align 4
  %34 = load i32, i32* @TRUE, align 4
  %35 = call i32 @svn_hash__get_bool(i32 %32, i32 %33, i32 %34)
  %36 = load i32*, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SVN_FS_CONFIG_FSFS_CACHE_REVPROPS, align 4
  %41 = call i32 @svn_hash__get_cstring(i32 %39, i32 %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %42 = call i64 @strcmp(i32 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %7
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SVN_FS_CONFIG_FSFS_CACHE_REVPROPS, align 4
  %49 = load i32, i32* @FALSE, align 4
  %50 = call i32 @svn_hash__get_bool(i32 %47, i32 %48, i32 %49)
  %51 = load i32*, i32** %11, align 8
  store i32 %50, i32* %51, align 4
  br label %55

52:                                               ; preds = %7
  %53 = load i32, i32* @TRUE, align 4
  %54 = load i32*, i32** %11, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %44
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SVN_FS_CONFIG_FSFS_CACHE_NODEPROPS, align 4
  %60 = load i32, i32* @TRUE, align 4
  %61 = call i32 @svn_hash__get_bool(i32 %58, i32 %59, i32 %60)
  %62 = load i32*, i32** %12, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %63
}

declare dso_local i8* @normalize_key_part(i32, i32*) #1

declare dso_local i32 @svn_hash__get_cstring(i32, i32, i8*) #1

declare dso_local i32 @svn_hash__get_bool(i32, i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
