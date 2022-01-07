; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_block_read_reps_container.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_block_read_reps_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_18__*, i32*, %struct.TYPE_16__*, i32, i64, i32*, i32*)* @block_read_reps_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @block_read_reps_container(i32** %0, %struct.TYPE_18__* %1, i32* %2, %struct.TYPE_16__* %3, i32 %4, i64 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_15__, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store i32** %0, i32*** %10, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %11, align 8
  store i32* %2, i32** %12, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %13, align 8
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %18, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @svn_fs_x__get_revnum(i32 %32)
  store i32 %33, i32* %22, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %35 = load i32, i32* %22, align 4
  %36 = call i32 @svn_fs_x__packed_base_rev(%struct.TYPE_18__* %34, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load i64, i64* %15, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %8
  %45 = load i64, i64* @FALSE, align 8
  store i64 %45, i64* %23, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %17, align 8
  %50 = call i32 @svn_cache__has_key(i64* %23, i32 %48, %struct.TYPE_15__* %21, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i64, i64* %23, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %55, i32** %9, align 8
  br label %88

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %61 = load i32*, i32** %17, align 8
  %62 = call i32 @read_item(i32** %20, %struct.TYPE_18__* %58, i32* %59, %struct.TYPE_16__* %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i32*, i32** %20, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = load i32*, i32** %17, align 8
  %67 = call i32 @svn_fs_x__read_reps_container(i32** %19, i32* %64, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i64, i64* %15, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %57
  %72 = load i32**, i32*** %10, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %74 = load i32*, i32** %19, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load i32*, i32** %16, align 8
  %77 = call i32 @svn_fs_x__reps_get(i32** %72, %struct.TYPE_18__* %73, i32* %74, i32 %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  br label %79

79:                                               ; preds = %71, %57
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %19, align 8
  %84 = load i32*, i32** %17, align 8
  %85 = call i32 @svn_cache__set(i32 %82, %struct.TYPE_15__* %21, i32* %83, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %87, i32** %9, align 8
  br label %88

88:                                               ; preds = %79, %54
  %89 = load i32*, i32** %9, align 8
  ret i32* %89
}

declare dso_local i32 @svn_fs_x__get_revnum(i32) #1

declare dso_local i32 @svn_fs_x__packed_base_rev(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cache__has_key(i64*, i32, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @read_item(i32**, %struct.TYPE_18__*, i32*, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @svn_fs_x__read_reps_container(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__reps_get(i32**, %struct.TYPE_18__*, i32*, i32, i32*) #1

declare dso_local i32 @svn_cache__set(i32, %struct.TYPE_15__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
