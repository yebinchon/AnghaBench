; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compose_delta.c_svn_txdelta_compose_windows.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compose_delta.c_svn_txdelta_compose_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_19__ = type { i64, i32, i64 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, i32, i64, i64, %struct.TYPE_21__* }

@svn_txdelta_source = common dso_local global i64 0, align 8
@svn_txdelta_new = common dso_local global i64 0, align 8
@range_from_target = common dso_local global i64 0, align 8
@svn_txdelta_target = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @svn_txdelta_compose_windows(%struct.TYPE_18__* %0, %struct.TYPE_18__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_20__, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca %struct.TYPE_21__*, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i32* %2, i32** %6, align 8
  %21 = bitcast %struct.TYPE_20__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 8, i1 false)
  %22 = load i32*, i32** %6, align 8
  %23 = call i32* @svn_pool_create(i32* %22)
  store i32* %23, i32** %9, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32* @create_offset_index(%struct.TYPE_18__* %24, i32* %25)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i32* @create_range_index(i32* %27)
  store i32* %28, i32** %11, align 8
  store i64 0, i64* %12, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @svn_stringbuf_create_empty(i32* %29)
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %177, %3
  %33 = load i32, i32* %13, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %180

38:                                               ; preds = %32
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i64 %43
  store %struct.TYPE_19__* %44, %struct.TYPE_19__** %14, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @svn_txdelta_source, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %38
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @svn_txdelta_new, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %61, i64 %65
  br label %68

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67, %56
  %69 = phi i8* [ %66, %56 ], [ null, %67 ]
  store i8* %69, i8** %15, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @svn_txdelta__insert_op(%struct.TYPE_20__* %7, i64 %72, i32 %75, i64 %78, i8* %79, i32* %80)
  br label %171

82:                                               ; preds = %38
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %16, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  store i64 %94, i64* %17, align 8
  %95 = load i64, i64* %12, align 8
  store i64 %95, i64* %20, align 8
  %96 = load i64, i64* %16, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @splay_range_index(i64 %96, i32* %97)
  %99 = load i64, i64* %16, align 8
  %100 = load i64, i64* %17, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = call %struct.TYPE_21__* @build_range_list(i64 %99, i64 %100, i32* %101)
  store %struct.TYPE_21__* %102, %struct.TYPE_21__** %18, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  store %struct.TYPE_21__* %103, %struct.TYPE_21__** %19, align 8
  br label %104

104:                                              ; preds = %149, %82
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %106 = icmp ne %struct.TYPE_21__* %105, null
  br i1 %106, label %107, label %153

107:                                              ; preds = %104
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @range_from_target, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %107
  %114 = load i64, i64* @svn_txdelta_target, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %120, %123
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @svn_txdelta__insert_op(%struct.TYPE_20__* %7, i64 %114, i32 %117, i64 %124, i8* null, i32* %125)
  br label %139

127:                                              ; preds = %107
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %20, align 8
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %136 = load i32*, i32** %10, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = call i32 @copy_source_ops(i64 %130, i64 %133, i64 %134, i32 0, %struct.TYPE_20__* %7, %struct.TYPE_18__* %135, i32* %136, i32* %137)
  br label %139

139:                                              ; preds = %127, %113
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %142, %145
  %147 = load i64, i64* %20, align 8
  %148 = add nsw i64 %147, %146
  store i64 %148, i64* %20, align 8
  br label %149

149:                                              ; preds = %139
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 4
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %151, align 8
  store %struct.TYPE_21__* %152, %struct.TYPE_21__** %19, align 8
  br label %104

153:                                              ; preds = %104
  %154 = load i64, i64* %20, align 8
  %155 = load i64, i64* %12, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %155, %158
  %160 = icmp eq i64 %154, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %164 = load i32*, i32** %11, align 8
  %165 = call i32 @free_range_list(%struct.TYPE_21__* %163, i32* %164)
  %166 = load i64, i64* %16, align 8
  %167 = load i64, i64* %17, align 8
  %168 = load i64, i64* %12, align 8
  %169 = load i32*, i32** %11, align 8
  %170 = call i32 @insert_range(i64 %166, i64 %167, i64 %168, i32* %169)
  br label %171

171:                                              ; preds = %153, %68
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* %12, align 8
  %176 = add nsw i64 %175, %174
  store i64 %176, i64* %12, align 8
  br label %177

177:                                              ; preds = %171
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %13, align 4
  br label %32

180:                                              ; preds = %32
  %181 = load i32*, i32** %9, align 8
  %182 = call i32 @svn_pool_destroy(i32* %181)
  %183 = load i32*, i32** %6, align 8
  %184 = call %struct.TYPE_18__* @svn_txdelta__make_window(%struct.TYPE_20__* %7, i32* %183)
  store %struct.TYPE_18__* %184, %struct.TYPE_18__** %8, align 8
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 3
  store i32 %187, i32* %189, align 4
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  ret %struct.TYPE_18__* %200
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @svn_pool_create(i32*) #2

declare dso_local i32* @create_offset_index(%struct.TYPE_18__*, i32*) #2

declare dso_local i32* @create_range_index(i32*) #2

declare dso_local i32 @svn_stringbuf_create_empty(i32*) #2

declare dso_local i32 @svn_txdelta__insert_op(%struct.TYPE_20__*, i64, i32, i64, i8*, i32*) #2

declare dso_local i32 @splay_range_index(i64, i32*) #2

declare dso_local %struct.TYPE_21__* @build_range_list(i64, i64, i32*) #2

declare dso_local i32 @copy_source_ops(i64, i64, i64, i32, %struct.TYPE_20__*, %struct.TYPE_18__*, i32*, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @free_range_list(%struct.TYPE_21__*, i32*) #2

declare dso_local i32 @insert_range(i64, i64, i64, i32*) #2

declare dso_local i32 @svn_pool_destroy(i32*) #2

declare dso_local %struct.TYPE_18__* @svn_txdelta__make_window(%struct.TYPE_20__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
