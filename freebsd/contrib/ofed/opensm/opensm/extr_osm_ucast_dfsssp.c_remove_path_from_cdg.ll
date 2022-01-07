; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_dfsssp.c_remove_path_from_cdg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_dfsssp.c_remove_path_from_cdg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_21__*, i32, %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { %struct.TYPE_17__*, %struct.TYPE_20__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64* }

@OSM_NO_PATH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__**, %struct.TYPE_19__*, i64, %struct.TYPE_19__*, i64)* @remove_path_from_cdg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_path_from_cdg(%struct.TYPE_21__** %0, %struct.TYPE_19__* %1, i64 %2, %struct.TYPE_19__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__**, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_21__*, align 8
  %20 = alloca %struct.TYPE_21__*, align 8
  %21 = alloca %struct.TYPE_21__*, align 8
  %22 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_21__** %0, %struct.TYPE_21__*** %7, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %19, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %20, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %21, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %22, align 8
  %23 = call i64 @malloc(i32 32)
  %24 = inttoptr i64 %23 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %19, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %26 = icmp ne %struct.TYPE_21__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  br label %162

28:                                               ; preds = %5
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %30 = call i32 @set_default_cdg_node(%struct.TYPE_21__* %29)
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  store %struct.TYPE_21__* %31, %struct.TYPE_21__** %21, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call %struct.TYPE_20__* @osm_node_get_remote_node(%struct.TYPE_20__* %34, i64 %39, i64* %17)
  store %struct.TYPE_20__* %40, %struct.TYPE_20__** %13, align 8
  br label %41

41:                                               ; preds = %147, %28
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %43 = icmp ne %struct.TYPE_20__* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %48 = icmp ne %struct.TYPE_18__* %47, null
  br label %49

49:                                               ; preds = %44, %41
  %50 = phi i1 [ false, %41 ], [ %48, %44 ]
  br i1 %50, label %51, label %149

51:                                               ; preds = %49
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %52, %struct.TYPE_20__** %12, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %11, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %16, align 8
  %61 = load i64, i64* %16, align 8
  %62 = load i64, i64* @OSM_NO_PATH, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %162

65:                                               ; preds = %51
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %67 = call i32 @osm_node_get_base_lid(%struct.TYPE_20__* %66, i32 0)
  %68 = call i64 @cl_ntoh16(i32 %67)
  store i64 %68, i64* %14, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %70 = load i64, i64* %16, align 8
  %71 = call %struct.TYPE_20__* @osm_node_get_remote_node(%struct.TYPE_20__* %69, i64 %70, i64* %17)
  store %struct.TYPE_20__* %71, %struct.TYPE_20__** %13, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %73 = icmp ne %struct.TYPE_20__* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %65
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = icmp ne %struct.TYPE_18__* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %74, %65
  br label %149

80:                                               ; preds = %74
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %82 = call i32 @osm_node_get_base_lid(%struct.TYPE_20__* %81, i32 0)
  %83 = call i64 @cl_ntoh16(i32 %82)
  store i64 %83, i64* %15, align 8
  %84 = load i64, i64* %14, align 8
  %85 = trunc i64 %84 to i32
  %86 = shl i32 %85, 48
  %87 = load i64, i64* %16, align 8
  %88 = trunc i64 %87 to i32
  %89 = shl i32 %88, 32
  %90 = add nsw i32 %86, %89
  %91 = load i64, i64* %15, align 8
  %92 = trunc i64 %91 to i32
  %93 = shl i32 %92, 16
  %94 = add nsw i32 %90, %93
  %95 = load i64, i64* %17, align 8
  %96 = trunc i64 %95 to i32
  %97 = add nsw i32 %94, %96
  store i32 %97, i32* %18, align 4
  %98 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %98, align 8
  %100 = load i32, i32* %18, align 4
  %101 = call %struct.TYPE_21__* @cdg_search(%struct.TYPE_21__* %99, i32 %100)
  store %struct.TYPE_21__* %101, %struct.TYPE_21__** %20, align 8
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %103 = icmp ne %struct.TYPE_21__* %102, null
  br i1 %103, label %104, label %146

104:                                              ; preds = %80
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %106, align 8
  store %struct.TYPE_21__* %107, %struct.TYPE_21__** %22, align 8
  br label %108

108:                                              ; preds = %124, %104
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %110 = icmp ne %struct.TYPE_21__* %109, null
  br i1 %110, label %111, label %122

111:                                              ; preds = %108
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %113, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %116 = icmp ne %struct.TYPE_21__* %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %119, align 8
  %121 = icmp ne %struct.TYPE_21__* %120, null
  br label %122

122:                                              ; preds = %117, %111, %108
  %123 = phi i1 [ false, %111 ], [ false, %108 ], [ %121, %117 ]
  br i1 %123, label %124, label %128

124:                                              ; preds = %122
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 3
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %126, align 8
  store %struct.TYPE_21__* %127, %struct.TYPE_21__** %22, align 8
  br label %108

128:                                              ; preds = %122
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %130 = icmp ne %struct.TYPE_21__* %129, null
  br i1 %130, label %131, label %144

131:                                              ; preds = %128
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %133, align 8
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %136 = icmp eq %struct.TYPE_21__* %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %131
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  br label %143

142:                                              ; preds = %131
  br label %143

143:                                              ; preds = %142, %137
  br label %145

144:                                              ; preds = %128
  br label %145

145:                                              ; preds = %144, %143
  br label %147

146:                                              ; preds = %80
  br label %162

147:                                              ; preds = %145
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  store %struct.TYPE_21__* %148, %struct.TYPE_21__** %21, align 8
  br label %41

149:                                              ; preds = %79, %49
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %151, align 8
  %153 = icmp ne %struct.TYPE_21__* %152, null
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %156, align 8
  %158 = call i32 @free(%struct.TYPE_21__* %157)
  br label %159

159:                                              ; preds = %154, %149
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %161 = call i32 @free(%struct.TYPE_21__* %160)
  store i32 0, i32* %6, align 4
  br label %179

162:                                              ; preds = %146, %64, %27
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %164 = icmp ne %struct.TYPE_21__* %163, null
  br i1 %164, label %165, label %178

165:                                              ; preds = %162
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %167, align 8
  %169 = icmp ne %struct.TYPE_21__* %168, null
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %172, align 8
  %174 = call i32 @free(%struct.TYPE_21__* %173)
  br label %175

175:                                              ; preds = %170, %165
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %177 = call i32 @free(%struct.TYPE_21__* %176)
  br label %178

178:                                              ; preds = %175, %162
  store i32 1, i32* %6, align 4
  br label %179

179:                                              ; preds = %178, %159
  %180 = load i32, i32* %6, align 4
  ret i32 %180
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @set_default_cdg_node(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_20__* @osm_node_get_remote_node(%struct.TYPE_20__*, i64, i64*) #1

declare dso_local i64 @cl_ntoh16(i32) #1

declare dso_local i32 @osm_node_get_base_lid(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_21__* @cdg_search(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
