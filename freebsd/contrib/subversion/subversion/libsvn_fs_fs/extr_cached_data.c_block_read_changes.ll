; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_block_read_changes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_block_read_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_19__ = type { i64, i32, i32**, i64, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_FS_FS__CHANGES_BLOCK_SIZE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_17__*, i32*, %struct.TYPE_18__*, i32*)* @block_read_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @block_read_changes(%struct.TYPE_17__* %0, i32* %1, %struct.TYPE_18__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_20__, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %10, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %4
  %30 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %30, i32** %5, align 8
  br label %92

31:                                               ; preds = %4
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @svn_cache__has_key(i64* %14, i64 %39, %struct.TYPE_20__* %13, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i64, i64* %14, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %46, i32** %5, align 8
  br label %92

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %31
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @read_item(i32** %11, %struct.TYPE_17__* %49, i32* %50, %struct.TYPE_18__* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i32*, i32** %11, align 8
  %56 = load i64, i64* @SVN_FS_FS__CHANGES_BLOCK_SIZE, align 8
  %57 = add nsw i64 %56, 1
  %58 = load i32*, i32** %9, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @svn_fs_fs__read_changes(%struct.TYPE_22__** %12, i32* %55, i64 %57, i32* %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SVN_FS_FS__CHANGES_BLOCK_SIZE, align 8
  %66 = icmp sle i64 %64, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %48
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 4
  store i32 %70, i32* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  store i64 %75, i64* %76, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i32**
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 2
  store i32** %80, i32*** %81, align 8
  %82 = load i32, i32* @TRUE, align 4
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  store i32 %82, i32* %83, align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @svn_cache__set(i64 %86, %struct.TYPE_20__* %13, %struct.TYPE_19__* %15, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  br label %90

90:                                               ; preds = %67, %48
  %91 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %91, i32** %5, align 8
  br label %92

92:                                               ; preds = %90, %45, %29
  %93 = load i32*, i32** %5, align 8
  ret i32* %93
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cache__has_key(i64*, i64, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @read_item(i32**, %struct.TYPE_17__*, i32*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @svn_fs_fs__read_changes(%struct.TYPE_22__**, i32*, i64, i32*, i32*) #1

declare dso_local i32 @svn_cache__set(i64, %struct.TYPE_20__*, %struct.TYPE_19__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
