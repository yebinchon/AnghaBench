; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_read_container_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_read_container_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_19__* }

@FALSE = common dso_local global i32 0, align 4
@svn_fs_x__reps_get_func = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_20__*, i64, i32*, i32*)* @read_container_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_container_window(i32** %0, %struct.TYPE_20__* %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_17__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__, align 8
  store i32** %0, i32*** %6, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %12, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %13, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @svn_fs_x__get_revnum(i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %16, align 4
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @auto_set_start_offset(%struct.TYPE_20__* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %37 = load i32, i32* %15, align 4
  %38 = call i32 @svn_fs_x__packed_base_rev(%struct.TYPE_19__* %36, i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  store %struct.TYPE_19__* %44, %struct.TYPE_19__** %45, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  %50 = bitcast i32** %11 to i8**
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @svn_fs_x__reps_get_func, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @svn_cache__get_partial(i8** %50, i32* %16, i32 %53, %struct.TYPE_17__* %14, i32 %54, %struct.TYPE_16__* %17, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i32*, i32** %11, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %79

60:                                               ; preds = %5
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = call i32 @auto_open_shared_file(%struct.TYPE_15__* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = bitcast i32** %11 to i8**
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @block_read(i8** %66, %struct.TYPE_19__* %67, %struct.TYPE_14__* %69, i32 %74, i32* null, i32* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  br label %79

79:                                               ; preds = %60, %5
  %80 = load i32**, i32*** %6, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @svn_fs_x__extractor_drive(i32** %80, i32* %81, i32 %84, i64 %85, i32* %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load i64, i64* %8, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %90
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 8
  %97 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %97
}

declare dso_local i32 @svn_fs_x__get_revnum(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @auto_set_start_offset(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @svn_fs_x__packed_base_rev(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @svn_cache__get_partial(i8**, i32*, i32, %struct.TYPE_17__*, i32, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @auto_open_shared_file(%struct.TYPE_15__*) #1

declare dso_local i32 @block_read(i8**, %struct.TYPE_19__*, %struct.TYPE_14__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__extractor_drive(i32**, i32*, i32, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
