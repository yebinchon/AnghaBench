; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_find_automatic_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_find_automatic_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_17__*, %struct.TYPE_20__*, i32, %struct.TYPE_16__, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_20__* }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_ERR_CLIENT_NOT_READY_TO_MERGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"'%s@%ld' must be ancestrally related to '%s@%ld'\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_18__**, i32*, %struct.TYPE_19__*, i32*, i32*, i32*)* @find_automatic_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_automatic_merge(%struct.TYPE_18__** %0, i32* %1, %struct.TYPE_19__* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_18__** %0, %struct.TYPE_18__*** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %21, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  %31 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %32 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @svn_client__get_history_as_mergeinfo(i32* %24, i32* %27, %struct.TYPE_20__* %30, i32 %31, i32 %32, i32 %35, i32* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  store %struct.TYPE_20__* %43, %struct.TYPE_20__** %46, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %58 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @svn_client__get_history_as_mergeinfo(i32* %49, i32* %52, %struct.TYPE_20__* %56, i32 %57, i32 %58, i32 %61, i32* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = call i32 @svn_client__calc_youngest_common_ancestor(i32* %67, %struct.TYPE_20__* %70, i32 %74, i32 %78, %struct.TYPE_20__* %82, i32 %86, i32 %90, i32* %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %125, label %99

99:                                               ; preds = %6
  %100 = load i32, i32* @SVN_ERR_CLIENT_NOT_READY_TO_MERGE, align 4
  %101 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32* @svn_error_createf(i32 %100, i32* null, i32 %101, i32 %106, i32 %111, i32 %117, i32 %123)
  store i32* %124, i32** %7, align 8
  br label %157

125:                                              ; preds = %6
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %127 = load i32*, i32** %11, align 8
  %128 = load i32*, i32** %13, align 8
  %129 = load i32*, i32** %13, align 8
  %130 = call i32 @find_base_on_source(%struct.TYPE_18__** %14, %struct.TYPE_19__* %126, i32* %127, i32* %128, i32* %129)
  %131 = call i32 @SVN_ERR(i32 %130)
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %133 = load i32*, i32** %11, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = load i32*, i32** %13, align 8
  %136 = call i32 @find_base_on_target(%struct.TYPE_18__** %15, %struct.TYPE_19__* %132, i32* %133, i32* %134, i32* %135)
  %137 = call i32 @SVN_ERR(i32 %136)
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp sge i64 %140, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %125
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %147 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  store %struct.TYPE_18__* %146, %struct.TYPE_18__** %147, align 8
  %148 = load i32, i32* @FALSE, align 4
  %149 = load i32*, i32** %9, align 8
  store i32 %148, i32* %149, align 4
  br label %155

150:                                              ; preds = %125
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %152 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  store %struct.TYPE_18__* %151, %struct.TYPE_18__** %152, align 8
  %153 = load i32, i32* @TRUE, align 4
  %154 = load i32*, i32** %9, align 8
  store i32 %153, i32* %154, align 4
  br label %155

155:                                              ; preds = %150, %145
  %156 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %156, i32** %7, align 8
  br label %157

157:                                              ; preds = %155, %99
  %158 = load i32*, i32** %7, align 8
  ret i32* %158
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client__get_history_as_mergeinfo(i32*, i32*, %struct.TYPE_20__*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_client__calc_youngest_common_ancestor(i32*, %struct.TYPE_20__*, i32, i32, %struct.TYPE_20__*, i32, i32, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @find_base_on_source(%struct.TYPE_18__**, %struct.TYPE_19__*, i32*, i32*, i32*) #1

declare dso_local i32 @find_base_on_target(%struct.TYPE_18__**, %struct.TYPE_19__*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
