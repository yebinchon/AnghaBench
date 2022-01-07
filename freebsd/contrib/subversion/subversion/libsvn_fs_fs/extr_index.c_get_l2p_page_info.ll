; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_get_l2p_page_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_get_l2p_page_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@l2p_page_info_access_func = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_17__*, i32*)* @get_l2p_page_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_l2p_page_info(%struct.TYPE_20__* %0, %struct.TYPE_18__* %1, %struct.TYPE_17__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_19__, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %10, align 8
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %12, align 8
  store i8* null, i8** %13, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @l2p_page_info_access_func, align 4
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @svn_cache__get_partial(i8** %13, i64* %12, i32 %29, %struct.TYPE_19__* %14, i32 %30, %struct.TYPE_20__* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i64, i64* %12, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %38, i32** %5, align 8
  br label %61

39:                                               ; preds = %4
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @get_l2p_header_body(%struct.TYPE_21__** %11, %struct.TYPE_18__* %40, %struct.TYPE_17__* %41, i32 %44, i32* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @l2p_page_info_copy(%struct.TYPE_20__* %49, %struct.TYPE_21__* %50, i32 %53, i32 %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %60, i32** %5, align 8
  br label %61

61:                                               ; preds = %39, %37
  %62 = load i32*, i32** %5, align 8
  ret i32* %62
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cache__get_partial(i8**, i64*, i32, %struct.TYPE_19__*, i32, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @get_l2p_header_body(%struct.TYPE_21__**, %struct.TYPE_18__*, %struct.TYPE_17__*, i32, i32*, i32*) #1

declare dso_local i32 @l2p_page_info_copy(%struct.TYPE_20__*, %struct.TYPE_21__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
