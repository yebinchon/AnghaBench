; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_stats.c_parse_representation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_stats.c_parse_representation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i64, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i64, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__*, i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, i64, i32, i32 }

@APR_SET = common dso_local global i32 0, align 4
@svn_fs_fs__rep_delta = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_21__**, %struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_19__*, i32*, i32*)* @parse_representation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_representation(%struct.TYPE_21__** %0, %struct.TYPE_22__* %1, %struct.TYPE_20__* %2, %struct.TYPE_19__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_21__**, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_21__** %0, %struct.TYPE_21__*** %7, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call %struct.TYPE_21__* @find_representation(i32* %14, %struct.TYPE_22__* %19, %struct.TYPE_19__** %10, i32 %22, i64 %25)
  store %struct.TYPE_21__* %26, %struct.TYPE_21__** %13, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %28 = icmp ne %struct.TYPE_21__* %27, null
  br i1 %28, label %123, label %29

29:                                               ; preds = %6
  %30 = load i32*, i32** %11, align 8
  %31 = call %struct.TYPE_21__* @apr_pcalloc(i32* %30, i32 32)
  store %struct.TYPE_21__* %31, %struct.TYPE_21__** %13, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 3
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @svn_fs_fs__use_log_addressing(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %117, label %57

57:                                               ; preds = %29
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  store i64 %64, i64* %16, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = call i32 @SVN_ERR_ASSERT(%struct.TYPE_17__* %67)
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @APR_SET, align 4
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @svn_io_file_seek(i32 %73, i32 %74, i64* %16, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @svn_fs_fs__read_rep_header(%struct.TYPE_18__** %15, i32 %82, i32* %83, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @svn_fs_fs__rep_delta, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %57
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call %struct.TYPE_21__* @find_representation(i32* %17, %struct.TYPE_22__* %98, %struct.TYPE_19__** null, i32 %101, i64 %104)
  store %struct.TYPE_21__* %105, %struct.TYPE_21__** %18, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @MIN(i32 %108, i32 254)
  %110 = add nsw i32 1, %109
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %116

113:                                              ; preds = %57
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  store i32 1, i32* %115, align 8
  br label %116

116:                                              ; preds = %113, %97
  br label %117

117:                                              ; preds = %116, %29
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @svn_sort__array_insert(i32 %120, %struct.TYPE_21__** %13, i32 %121)
  br label %123

123:                                              ; preds = %117, %6
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %125 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  store %struct.TYPE_21__* %124, %struct.TYPE_21__** %125, align 8
  %126 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %126
}

declare dso_local %struct.TYPE_21__* @find_representation(i32*, %struct.TYPE_22__*, %struct.TYPE_19__**, i32, i64) #1

declare dso_local %struct.TYPE_21__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_fs_fs__use_log_addressing(i32) #1

declare dso_local i32 @SVN_ERR_ASSERT(%struct.TYPE_17__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_seek(i32, i32, i64*, i32*) #1

declare dso_local i32 @svn_fs_fs__read_rep_header(%struct.TYPE_18__**, i32, i32*, i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @svn_sort__array_insert(i32, %struct.TYPE_21__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
