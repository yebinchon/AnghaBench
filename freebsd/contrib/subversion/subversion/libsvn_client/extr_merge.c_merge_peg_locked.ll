; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_merge_peg_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_merge_peg_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"SVN_ELEMENT_MERGE\00", align 1
@svn_depth_infinity = common dso_local global i64 0, align 8
@svn_depth_unknown = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, i32*, i32*, i8*, i64, i64, i64, i64, i64, i64, i64, i32*, i32*, i32*, i32*)* @merge_peg_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @merge_peg_locked(i32** %0, i8* %1, i32* %2, i32* %3, i8* %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i32* %12, i32* %13, i32* %14, i32* %15) #0 {
  %17 = alloca i32**, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca %struct.TYPE_5__*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i64, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i64, align 8
  store i32** %0, i32*** %17, align 8
  store i8* %1, i8** %18, align 8
  store i32* %2, i32** %19, align 8
  store i32* %3, i32** %20, align 8
  store i8* %4, i8** %21, align 8
  store i64 %5, i64* %22, align 8
  store i64 %6, i64* %23, align 8
  store i64 %7, i64* %24, align 8
  store i64 %8, i64* %25, align 8
  store i64 %9, i64* %26, align 8
  store i64 %10, i64* %27, align 8
  store i64 %11, i64* %28, align 8
  store i32* %12, i32** %29, align 8
  store i32* %13, i32** %30, align 8
  store i32* %14, i32** %31, align 8
  store i32* %15, i32** %32, align 8
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %38, align 8
  %42 = load i8*, i8** %21, align 8
  %43 = call i32 @svn_dirent_is_absolute(i8* %42)
  %44 = call i32 @SVN_ERR_ASSERT(i32 %43)
  %45 = load i8*, i8** %21, align 8
  %46 = load i64, i64* %28, align 8
  %47 = load i32, i32* @TRUE, align 4
  %48 = load i32, i32* @TRUE, align 4
  %49 = load i32*, i32** %30, align 8
  %50 = load i32*, i32** %32, align 8
  %51 = load i32*, i32** %32, align 8
  %52 = call i32* @open_target_wc(%struct.TYPE_5__** %33, i8* %45, i64 %46, i32 %47, i32 %48, i32* %49, i32* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32* %52)
  %54 = load i32*, i32** %32, align 8
  %55 = call i32* @svn_pool_create(i32* %54)
  store i32* %55, i32** %37, align 8
  %56 = load i8*, i8** %18, align 8
  %57 = load i32*, i32** %19, align 8
  %58 = load i32*, i32** %19, align 8
  %59 = load i32*, i32** %30, align 8
  %60 = load i32*, i32** %37, align 8
  %61 = call i32* @svn_client__ra_session_from_path2(i32** %36, i32** %34, i8* %56, i32* null, i32* %57, i32* %58, i32* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32* %61)
  %63 = load i8*, i8** %18, align 8
  %64 = load i32*, i32** %34, align 8
  %65 = load i32*, i32** %20, align 8
  %66 = load i32*, i32** %36, align 8
  %67 = load i32*, i32** %30, align 8
  %68 = load i32*, i32** %32, align 8
  %69 = load i32*, i32** %32, align 8
  %70 = call i32* @normalize_merge_sources(i32** %35, i8* %63, i32* %64, i32* %65, i32* %66, i32* %67, i32* %68, i32* %69)
  %71 = call i32 @SVN_ERR(i32* %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32*, i32** %34, align 8
  %75 = load i32, i32* @TRUE, align 4
  %76 = call i64 @is_same_repos(i32* %73, i32* %74, i32 %75)
  store i64 %76, i64* %40, align 8
  %77 = call i64 @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %109

79:                                               ; preds = %16
  %80 = load i64, i64* %40, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %109

82:                                               ; preds = %79
  %83 = load i64, i64* %22, align 8
  %84 = load i64, i64* @svn_depth_infinity, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i64, i64* %22, align 8
  %88 = load i64, i64* @svn_depth_unknown, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %86, %82
  %91 = load i64, i64* %23, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %90
  %94 = load i64, i64* %26, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %109, label %96

96:                                               ; preds = %93
  %97 = load i32*, i32** %35, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %99 = load i32*, i32** %36, align 8
  %100 = load i64, i64* %24, align 8
  %101 = load i64, i64* %25, align 8
  %102 = load i64, i64* %27, align 8
  %103 = load i32*, i32** %29, align 8
  %104 = load i32*, i32** %30, align 8
  %105 = load i32*, i32** %31, align 8
  %106 = load i32*, i32** %32, align 8
  %107 = call i32* @svn_client__merge_elements(i64* %38, i32* %97, %struct.TYPE_5__* %98, i32* %99, i64 %100, i64 %101, i64 %102, i32* %103, i32* %104, i32* %105, i32* %106)
  store i32* %107, i32** %39, align 8
  %108 = load i32**, i32*** %17, align 8
  store i32* null, i32** %108, align 8
  br label %129

109:                                              ; preds = %93, %90, %86, %79, %16
  %110 = load i32**, i32*** %17, align 8
  %111 = load i32*, i32** %35, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %113 = load i32*, i32** %36, align 8
  %114 = load i32, i32* @TRUE, align 4
  %115 = load i64, i64* %40, align 8
  %116 = load i64, i64* %23, align 8
  %117 = load i64, i64* %24, align 8
  %118 = load i64, i64* %25, align 8
  %119 = load i64, i64* %27, align 8
  %120 = load i64, i64* %26, align 8
  %121 = load i64, i64* @FALSE, align 8
  %122 = load i64, i64* @FALSE, align 8
  %123 = load i64, i64* %22, align 8
  %124 = load i32*, i32** %29, align 8
  %125 = load i32*, i32** %30, align 8
  %126 = load i32*, i32** %31, align 8
  %127 = load i32*, i32** %32, align 8
  %128 = call i32* @do_merge(i32* null, i32* null, i32** %110, i64* %38, i32* %111, %struct.TYPE_5__* %112, i32* %113, i32 %114, i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i64 %120, i32* null, i64 %121, i64 %122, i64 %123, i32* %124, i32* %125, i32* %126, i32* %127)
  store i32* %128, i32** %39, align 8
  br label %129

129:                                              ; preds = %109, %96
  %130 = load i32*, i32** %37, align 8
  %131 = call i32 @svn_pool_destroy(i32* %130)
  %132 = load i64, i64* %38, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i8*, i8** %21, align 8
  %136 = load i32*, i32** %32, align 8
  %137 = call i32 @svn_io_sleep_for_timestamps(i8* %135, i32* %136)
  br label %138

138:                                              ; preds = %134, %129
  %139 = load i32*, i32** %39, align 8
  %140 = call i32 @SVN_ERR(i32* %139)
  %141 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %141
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @open_target_wc(%struct.TYPE_5__**, i8*, i64, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @svn_client__ra_session_from_path2(i32**, i32**, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @normalize_merge_sources(i32**, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @is_same_repos(i32*, i32*, i32) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local i32* @svn_client__merge_elements(i64*, i32*, %struct.TYPE_5__*, i32*, i64, i64, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @do_merge(i32*, i32*, i32**, i64*, i32*, %struct.TYPE_5__*, i32*, i32, i64, i64, i64, i64, i64, i64, i32*, i64, i64, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_io_sleep_for_timestamps(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
