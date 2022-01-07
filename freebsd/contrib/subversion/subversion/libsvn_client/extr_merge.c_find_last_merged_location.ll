; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_find_last_merged_location.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_find_last_merged_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__, i8* }
%struct.TYPE_18__ = type { i64 }

@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@svn_opt_revision_number = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@operative_rev_receiver = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_21__**, %struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_21__*, i32*, i32*, i32*, i32*)* @find_last_merged_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_last_merged_location(%struct.TYPE_21__** %0, %struct.TYPE_21__* %1, %struct.TYPE_22__* %2, %struct.TYPE_21__* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_21__**, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_20__, align 8
  %18 = alloca %struct.TYPE_20__, align 8
  %19 = alloca %struct.TYPE_20__, align 8
  %20 = alloca %struct.TYPE_20__, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_22__*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.TYPE_21__** %0, %struct.TYPE_21__*** %9, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %27 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  store i64 %27, i64* %21, align 8
  store i32* null, i32** %22, align 8
  %28 = load i32*, i32** %16, align 8
  %29 = call i32* @svn_pool_create(i32* %28)
  store i32* %29, i32** %23, align 8
  %30 = load i8*, i8** @svn_opt_revision_number, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i8*, i8** @svn_opt_revision_number, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  store i8* %39, i8** %40, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i8*, i8** @svn_opt_revision_number, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 1
  store i8* %46, i8** %47, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load i8*, i8** @svn_opt_revision_number, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 1
  store i8* %55, i8** %56, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* @TRUE, align 4
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @operative_rev_receiver, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = load i32*, i32** %23, align 8
  %75 = load i32*, i32** %23, align 8
  %76 = call i32 @short_circuit_mergeinfo_log(i32** %22, i32 %62, i32 %65, %struct.TYPE_20__* %20, i32 %70, %struct.TYPE_20__* %17, %struct.TYPE_20__* %19, %struct.TYPE_20__* %18, i32 %71, i64* %21, i32* %72, i32* %73, i32* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load i64, i64* %21, align 8
  %79 = call i64 @SVN_IS_VALID_REVNUM(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %83 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  store %struct.TYPE_21__* %82, %struct.TYPE_21__** %83, align 8
  br label %129

84:                                               ; preds = %8
  %85 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  store i64 %85, i64* %26, align 8
  %86 = load i64, i64* %21, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load i32, i32* @FALSE, align 4
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @operative_rev_receiver, align 4
  %99 = load i32*, i32** %13, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = load i32*, i32** %23, align 8
  %102 = load i32*, i32** %23, align 8
  %103 = call i32 @short_circuit_mergeinfo_log(i32** %22, i32 %89, i32 %92, %struct.TYPE_20__* %20, i32 %97, %struct.TYPE_20__* %17, %struct.TYPE_20__* %18, %struct.TYPE_20__* %19, i32 %98, i64* %26, i32* %99, i32* %100, i32* %101, i32* %102)
  %104 = call i32 @SVN_ERR(i32 %103)
  %105 = load i64, i64* %26, align 8
  %106 = call i64 @SVN_IS_VALID_REVNUM(i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %84
  %109 = load i64, i64* %26, align 8
  %110 = sub nsw i64 %109, 1
  store i64 %110, i64* %25, align 8
  br label %113

111:                                              ; preds = %84
  %112 = load i64, i64* %21, align 8
  store i64 %112, i64* %25, align 8
  br label %113

113:                                              ; preds = %111, %108
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %25, align 8
  %119 = load i32*, i32** %16, align 8
  %120 = load i32*, i32** %16, align 8
  %121 = call i32 @branch_history_intersect_range(%struct.TYPE_22__** %24, %struct.TYPE_22__* %114, i64 %117, i64 %118, i32* %119, i32* %120)
  %122 = call i32 @SVN_ERR(i32 %121)
  %123 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %125 = load i32*, i32** %15, align 8
  %126 = load i32*, i32** %16, align 8
  %127 = call i32 @branch_history_get_endpoints(i32* null, %struct.TYPE_21__** %123, %struct.TYPE_22__* %124, i32* %125, i32* %126)
  %128 = call i32 @SVN_ERR(i32 %127)
  br label %129

129:                                              ; preds = %113, %81
  %130 = load i32*, i32** %23, align 8
  %131 = call i32 @svn_pool_destroy(i32* %130)
  %132 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %132
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @short_circuit_mergeinfo_log(i32**, i32, i32, %struct.TYPE_20__*, i32, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32, i64*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @branch_history_intersect_range(%struct.TYPE_22__**, %struct.TYPE_22__*, i64, i64, i32*, i32*) #1

declare dso_local i32 @branch_history_get_endpoints(i32*, %struct.TYPE_21__**, %struct.TYPE_22__*, i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
