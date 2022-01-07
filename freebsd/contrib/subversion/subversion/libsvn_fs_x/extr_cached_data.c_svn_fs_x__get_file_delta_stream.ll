; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_svn_fs_x__get_file_delta_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_svn_fs_x__get_file_delta_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_16__ = type { i64, i64, i64 }

@svn_fs_x__rep_delta = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_fs_x__rep_self_delta = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__get_file_delta_stream(i32** %0, i32* %1, %struct.TYPE_17__* %2, %struct.TYPE_17__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %21 = icmp ne %struct.TYPE_19__* %20, null
  br i1 %21, label %22, label %121

22:                                               ; preds = %6
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %24 = icmp ne %struct.TYPE_17__* %23, null
  br i1 %24, label %25, label %121

25:                                               ; preds = %22
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @create_rep_state(%struct.TYPE_18__** %16, %struct.TYPE_16__** %17, i32* null, %struct.TYPE_19__* %28, i32* %29, i32* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %35 = icmp ne %struct.TYPE_17__* %34, null
  br i1 %35, label %36, label %83

36:                                               ; preds = %25
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  %40 = icmp ne %struct.TYPE_19__* %39, null
  br i1 %40, label %41, label %83

41:                                               ; preds = %36
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %43, align 8
  %45 = icmp ne %struct.TYPE_19__* %44, null
  br i1 %45, label %46, label %83

46:                                               ; preds = %41
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @svn_fs_x__rep_delta, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %46
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @svn_fs_x__get_revnum(i32 %61)
  %63 = icmp eq i64 %55, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %52
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %67, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %64
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = call i32* @get_storaged_delta_stream(%struct.TYPE_18__* %76, %struct.TYPE_17__* %77, i32* %78)
  %80 = load i32**, i32*** %8, align 8
  store i32* %79, i32** %80, align 8
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %81, i32** %7, align 8
  br label %152

82:                                               ; preds = %64, %52, %46
  br label %101

83:                                               ; preds = %41, %36, %25
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %85 = icmp ne %struct.TYPE_17__* %84, null
  br i1 %85, label %100, label %86

86:                                               ; preds = %83
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @svn_fs_x__rep_self_delta, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = call i32* @get_storaged_delta_stream(%struct.TYPE_18__* %93, %struct.TYPE_17__* %94, i32* %95)
  %97 = load i32**, i32*** %8, align 8
  store i32* %96, i32** %97, align 8
  %98 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %98, i32** %7, align 8
  br label %152

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99, %83
  br label %101

101:                                              ; preds = %100, %82
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %120

108:                                              ; preds = %101
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @svn_fs_x__close_revision_file(i32* %113)
  %115 = call i32 @SVN_ERR(i32 %114)
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  store i32* null, i32** %119, align 8
  br label %120

120:                                              ; preds = %108, %101
  br label %121

121:                                              ; preds = %120, %22, %6
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %123 = icmp ne %struct.TYPE_17__* %122, null
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = load i32*, i32** %9, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %127, align 8
  %129 = load i32, i32* @TRUE, align 4
  %130 = load i32*, i32** %12, align 8
  %131 = call i32 @svn_fs_x__get_contents(i32** %14, i32* %125, %struct.TYPE_19__* %128, i32 %129, i32* %130)
  %132 = call i32 @SVN_ERR(i32 %131)
  br label %136

133:                                              ; preds = %121
  %134 = load i32*, i32** %12, align 8
  %135 = call i32* @svn_stream_empty(i32* %134)
  store i32* %135, i32** %14, align 8
  br label %136

136:                                              ; preds = %133, %124
  %137 = load i32*, i32** %9, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %139, align 8
  %141 = load i32, i32* @TRUE, align 4
  %142 = load i32*, i32** %12, align 8
  %143 = call i32 @svn_fs_x__get_contents(i32** %15, i32* %137, %struct.TYPE_19__* %140, i32 %141, i32* %142)
  %144 = call i32 @SVN_ERR(i32 %143)
  %145 = load i32**, i32*** %8, align 8
  %146 = load i32*, i32** %14, align 8
  %147 = load i32*, i32** %15, align 8
  %148 = load i32, i32* @FALSE, align 4
  %149 = load i32*, i32** %12, align 8
  %150 = call i32 @svn_txdelta2(i32** %145, i32* %146, i32* %147, i32 %148, i32* %149)
  %151 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %151, i32** %7, align 8
  br label %152

152:                                              ; preds = %136, %92, %75
  %153 = load i32*, i32** %7, align 8
  ret i32* %153
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @create_rep_state(%struct.TYPE_18__**, %struct.TYPE_16__**, i32*, %struct.TYPE_19__*, i32*, i32*, i32*) #1

declare dso_local i64 @svn_fs_x__get_revnum(i32) #1

declare dso_local i32* @get_storaged_delta_stream(%struct.TYPE_18__*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @svn_fs_x__close_revision_file(i32*) #1

declare dso_local i32 @svn_fs_x__get_contents(i32**, i32*, %struct.TYPE_19__*, i32, i32*) #1

declare dso_local i32* @svn_stream_empty(i32*) #1

declare dso_local i32 @svn_txdelta2(i32**, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
