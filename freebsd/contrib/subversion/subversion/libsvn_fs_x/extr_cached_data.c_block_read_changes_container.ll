; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_block_read_changes_container.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_block_read_changes_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_17__*, i32*, %struct.TYPE_15__*, i32, i32*, i64, i32*, i32*)* @block_read_changes_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @block_read_changes_container(i32** %0, %struct.TYPE_17__* %1, i32* %2, %struct.TYPE_15__* %3, i32 %4, i32* %5, i64 %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_16__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_14__, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  store i32** %0, i32*** %11, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %12, align 8
  store i32* %2, i32** %13, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i64 %6, i64* %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %20, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @svn_fs_x__get_revnum(i32 %34)
  store i32 %35, i32* %24, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %37 = load i32, i32* %24, align 4
  %38 = call i32 @svn_fs_x__packed_base_rev(%struct.TYPE_17__* %36, i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load i64, i64* %17, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %9
  %47 = load i64, i64* @FALSE, align 8
  store i64 %47, i64* %25, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %19, align 8
  %52 = call i32 @svn_cache__has_key(i64* %25, i32 %50, %struct.TYPE_14__* %22, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i64, i64* %25, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %57, i32** %10, align 8
  br label %90

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %9
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %63 = load i32*, i32** %19, align 8
  %64 = call i32 @read_item(i32** %23, %struct.TYPE_17__* %60, i32* %61, %struct.TYPE_15__* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i32*, i32** %23, align 8
  %67 = load i32*, i32** %19, align 8
  %68 = load i32*, i32** %19, align 8
  %69 = call i32 @svn_fs_x__read_changes_container(i32** %21, i32* %66, i32* %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load i64, i64* %17, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %59
  %74 = load i32**, i32*** %11, align 8
  %75 = load i32*, i32** %21, align 8
  %76 = load i32, i32* %15, align 4
  %77 = load i32*, i32** %16, align 8
  %78 = load i32*, i32** %18, align 8
  %79 = call i32 @svn_fs_x__changes_get_list(i32** %74, i32* %75, i32 %76, i32* %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  br label %81

81:                                               ; preds = %73, %59
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %21, align 8
  %86 = load i32*, i32** %19, align 8
  %87 = call i32 @svn_cache__set(i32 %84, %struct.TYPE_14__* %22, i32* %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  %89 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %89, i32** %10, align 8
  br label %90

90:                                               ; preds = %81, %56
  %91 = load i32*, i32** %10, align 8
  ret i32* %91
}

declare dso_local i32 @svn_fs_x__get_revnum(i32) #1

declare dso_local i32 @svn_fs_x__packed_base_rev(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cache__has_key(i64*, i32, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @read_item(i32**, %struct.TYPE_17__*, i32*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @svn_fs_x__read_changes_container(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__changes_get_list(i32**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_cache__set(i32, %struct.TYPE_14__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
