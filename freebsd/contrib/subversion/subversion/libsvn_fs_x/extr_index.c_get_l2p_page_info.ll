; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_index.c_get_l2p_page_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_index.c_get_l2p_page_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@l2p_header_access_func = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_19__*, i32*, %struct.TYPE_18__*, i32*)* @get_l2p_page_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_l2p_page_info(%struct.TYPE_19__* %0, i32* %1, %struct.TYPE_18__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_16__, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %10, align 8
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %12, align 8
  store i8* null, i8** %13, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @base_revision(%struct.TYPE_18__* %19, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @svn_fs_x__is_packed_rev(%struct.TYPE_18__* %25, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @l2p_header_access_func, align 4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @svn_cache__get_partial(i8** %13, i64* %12, i32 %33, %struct.TYPE_16__* %14, i32 %34, %struct.TYPE_19__* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i64, i64* %12, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %42, i32** %5, align 8
  br label %65

43:                                               ; preds = %4
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @get_l2p_header_body(%struct.TYPE_20__** %11, i32* %44, %struct.TYPE_18__* %45, i32 %48, i32* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @l2p_header_copy(%struct.TYPE_19__* %53, %struct.TYPE_20__* %54, i32 %57, i32 %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %64, i32** %5, align 8
  br label %65

65:                                               ; preds = %43, %41
  %66 = load i32*, i32** %5, align 8
  ret i32* %66
}

declare dso_local i32 @base_revision(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @svn_fs_x__is_packed_rev(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cache__get_partial(i8**, i64*, i32, %struct.TYPE_16__*, i32, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @get_l2p_header_body(%struct.TYPE_20__**, i32*, %struct.TYPE_18__*, i32, i32*, i32*) #1

declare dso_local i32 @l2p_header_copy(%struct.TYPE_19__*, %struct.TYPE_20__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
