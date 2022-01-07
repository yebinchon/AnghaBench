; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_svn_fs_fs__get_file_delta_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_svn_fs_fs__get_file_delta_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_21__ = type { i64, i64, i64 }

@svn_fs_fs__rep_delta = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_fs_fs__rep_self_delta = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__get_file_delta_stream(i32** %0, %struct.TYPE_20__* %1, %struct.TYPE_23__* %2, %struct.TYPE_23__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca %struct.TYPE_24__*, align 8
  store i32** %0, i32*** %7, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %16, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %23 = icmp ne %struct.TYPE_18__* %22, null
  br i1 %23, label %24, label %125

24:                                               ; preds = %5
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %26 = icmp ne %struct.TYPE_23__* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %125, label %32

32:                                               ; preds = %27, %24
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @create_rep_state(%struct.TYPE_22__** %14, %struct.TYPE_21__** %15, i32* null, %struct.TYPE_18__* %35, %struct.TYPE_20__* %36, i32* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %42 = icmp ne %struct.TYPE_23__* %41, null
  br i1 %42, label %43, label %87

43:                                               ; preds = %32
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = icmp ne %struct.TYPE_18__* %46, null
  br i1 %47, label %48, label %87

48:                                               ; preds = %43
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = icmp ne %struct.TYPE_18__* %51, null
  br i1 %52, label %53, label %87

53:                                               ; preds = %48
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @svn_fs_fs__rep_delta, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %86

59:                                               ; preds = %53
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %62, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %59
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %72, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %69
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = call i32* @get_storaged_delta_stream(%struct.TYPE_22__* %80, %struct.TYPE_23__* %81, i32* %82)
  %84 = load i32**, i32*** %7, align 8
  store i32* %83, i32** %84, align 8
  %85 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %85, i32** %6, align 8
  br label %156

86:                                               ; preds = %69, %59, %53
  br label %105

87:                                               ; preds = %48, %43, %32
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %89 = icmp ne %struct.TYPE_23__* %88, null
  br i1 %89, label %104, label %90

90:                                               ; preds = %87
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @svn_fs_fs__rep_self_delta, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = call i32* @get_storaged_delta_stream(%struct.TYPE_22__* %97, %struct.TYPE_23__* %98, i32* %99)
  %101 = load i32**, i32*** %7, align 8
  store i32* %100, i32** %101, align 8
  %102 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %102, i32** %6, align 8
  br label %156

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103, %87
  br label %105

105:                                              ; preds = %104, %86
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %124

112:                                              ; preds = %105
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @svn_fs_fs__close_revision_file(i32* %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  store i32* null, i32** %123, align 8
  br label %124

124:                                              ; preds = %112, %105
  br label %125

125:                                              ; preds = %124, %27, %5
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %127 = icmp ne %struct.TYPE_23__* %126, null
  br i1 %127, label %128, label %137

128:                                              ; preds = %125
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %131, align 8
  %133 = load i32, i32* @TRUE, align 4
  %134 = load i32*, i32** %11, align 8
  %135 = call i32 @svn_fs_fs__get_contents(i32** %12, %struct.TYPE_20__* %129, %struct.TYPE_18__* %132, i32 %133, i32* %134)
  %136 = call i32 @SVN_ERR(i32 %135)
  br label %140

137:                                              ; preds = %125
  %138 = load i32*, i32** %11, align 8
  %139 = call i32* @svn_stream_empty(i32* %138)
  store i32* %139, i32** %12, align 8
  br label %140

140:                                              ; preds = %137, %128
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %143, align 8
  %145 = load i32, i32* @TRUE, align 4
  %146 = load i32*, i32** %11, align 8
  %147 = call i32 @svn_fs_fs__get_contents(i32** %13, %struct.TYPE_20__* %141, %struct.TYPE_18__* %144, i32 %145, i32* %146)
  %148 = call i32 @SVN_ERR(i32 %147)
  %149 = load i32**, i32*** %7, align 8
  %150 = load i32*, i32** %12, align 8
  %151 = load i32*, i32** %13, align 8
  %152 = load i32, i32* @FALSE, align 4
  %153 = load i32*, i32** %11, align 8
  %154 = call i32 @svn_txdelta2(i32** %149, i32* %150, i32* %151, i32 %152, i32* %153)
  %155 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %155, i32** %6, align 8
  br label %156

156:                                              ; preds = %140, %96, %79
  %157 = load i32*, i32** %6, align 8
  ret i32* %157
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @create_rep_state(%struct.TYPE_22__**, %struct.TYPE_21__**, i32*, %struct.TYPE_18__*, %struct.TYPE_20__*, i32*, i32*) #1

declare dso_local i32* @get_storaged_delta_stream(%struct.TYPE_22__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @svn_fs_fs__close_revision_file(i32*) #1

declare dso_local i32 @svn_fs_fs__get_contents(i32**, %struct.TYPE_20__*, %struct.TYPE_18__*, i32, i32*) #1

declare dso_local i32* @svn_stream_empty(i32*) #1

declare dso_local i32 @svn_txdelta2(i32**, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
