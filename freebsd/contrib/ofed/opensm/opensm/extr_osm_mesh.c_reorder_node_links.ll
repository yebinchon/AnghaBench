; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_reorder_node_links.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_reorder_node_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__**, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64*, i32*, i32** }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32* }

@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed allocating links array - out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed allocating axes array - out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_11__*, i32)* @reorder_node_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reorder_node_links(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i32* %24, i32** %8, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %27, i64 %29
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %9, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %10, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %11, align 4
  store i32 0, i32* %19, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i8* @calloc(i32 %41, i32 8)
  %43 = bitcast i8* %42 to i32**
  store i32** %43, i32*** %12, align 8
  %44 = icmp ne i32** %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %3
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* @OSM_LOG_ERROR, align 4
  %48 = call i32 @OSM_LOG(i32* %46, i32 %47, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %248

49:                                               ; preds = %3
  %50 = load i32, i32* %11, align 4
  %51 = call i8* @calloc(i32 %50, i32 4)
  %52 = bitcast i8* %51 to i32*
  store i32* %52, i32** %13, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = load i32**, i32*** %12, align 8
  %56 = bitcast i32** %55 to i32*
  %57 = call i32 @free(i32* %56)
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* @OSM_LOG_ERROR, align 4
  %60 = call i32 @OSM_LOG(i32* %58, i32 %59, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %248

61:                                               ; preds = %49
  store i32 0, i32* %14, align 4
  br label %62

62:                                               ; preds = %159, %61
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %20, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %162

66:                                               ; preds = %62
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %74

74:                                               ; preds = %155, %66
  %75 = load i32, i32* %16, align 4
  %76 = icmp sle i32 %75, 2
  br i1 %76, label %77, label %158

77:                                               ; preds = %74
  %78 = load i32, i32* %15, align 4
  %79 = mul nsw i32 2, %78
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 %79, %80
  store i32 %81, i32* %18, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %77
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %92 = load i32, i32* %18, align 4
  %93 = call i32 @opposite(%struct.TYPE_10__* %91, i32 %92)
  store i32 %93, i32* %18, align 4
  br label %94

94:                                               ; preds = %90, %77
  store i32 0, i32* %17, align 4
  br label %95

95:                                               ; preds = %151, %94
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %154

99:                                               ; preds = %95
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 3
  %102 = load i32**, i32*** %101, align 8
  %103 = load i32, i32* %17, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %99
  br label %151

109:                                              ; preds = %99
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %18, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %150

119:                                              ; preds = %109
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 3
  %122 = load i32**, i32*** %121, align 8
  %123 = load i32, i32* %17, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = load i32**, i32*** %12, align 8
  %128 = load i32, i32* %19, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  store i32* %126, i32** %130, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %17, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %13, align 8
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %137, i32* %141, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 3
  %144 = load i32**, i32*** %143, align 8
  %145 = load i32, i32* %17, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %144, i64 %146
  store i32* null, i32** %147, align 8
  %148 = load i32, i32* %19, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %19, align 4
  br label %150

150:                                              ; preds = %119, %109
  br label %151

151:                                              ; preds = %150, %108
  %152 = load i32, i32* %17, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %17, align 4
  br label %95

154:                                              ; preds = %95
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %16, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %16, align 4
  br label %74

158:                                              ; preds = %74
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %14, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %14, align 4
  br label %62

162:                                              ; preds = %62
  store i32 0, i32* %14, align 4
  br label %163

163:                                              ; preds = %208, %162
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %11, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %211

167:                                              ; preds = %163
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 3
  %170 = load i32**, i32*** %169, align 8
  %171 = load i32, i32* %14, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32*, i32** %170, i64 %172
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %167
  br label %208

177:                                              ; preds = %167
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 3
  %180 = load i32**, i32*** %179, align 8
  %181 = load i32, i32* %14, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32*, i32** %180, i64 %182
  %184 = load i32*, i32** %183, align 8
  %185 = load i32**, i32*** %12, align 8
  %186 = load i32, i32* %19, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32*, i32** %185, i64 %187
  store i32* %184, i32** %188, align 8
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %13, align 8
  %197 = load i32, i32* %19, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  store i32 %195, i32* %199, align 4
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 3
  %202 = load i32**, i32*** %201, align 8
  %203 = load i32, i32* %14, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32*, i32** %202, i64 %204
  store i32* null, i32** %205, align 8
  %206 = load i32, i32* %19, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %19, align 4
  br label %208

208:                                              ; preds = %177, %176
  %209 = load i32, i32* %14, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %14, align 4
  br label %163

211:                                              ; preds = %163
  store i32 0, i32* %14, align 4
  br label %212

212:                                              ; preds = %239, %211
  %213 = load i32, i32* %14, align 4
  %214 = load i32, i32* %11, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %242

216:                                              ; preds = %212
  %217 = load i32**, i32*** %12, align 8
  %218 = load i32, i32* %14, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32*, i32** %217, i64 %219
  %221 = load i32*, i32** %220, align 8
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 3
  %224 = load i32**, i32*** %223, align 8
  %225 = load i32, i32* %14, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32*, i32** %224, i64 %226
  store i32* %221, i32** %227, align 8
  %228 = load i32*, i32** %13, align 8
  %229 = load i32, i32* %14, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %14, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  store i32 %232, i32* %238, align 4
  br label %239

239:                                              ; preds = %216
  %240 = load i32, i32* %14, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %14, align 4
  br label %212

242:                                              ; preds = %212
  %243 = load i32**, i32*** %12, align 8
  %244 = bitcast i32** %243 to i32*
  %245 = call i32 @free(i32* %244)
  %246 = load i32*, i32** %13, align 8
  %247 = call i32 @free(i32* %246)
  store i32 0, i32* %4, align 4
  br label %248

248:                                              ; preds = %242, %54, %45
  %249 = load i32, i32* %4, align 4
  ret i32 %249
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @opposite(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
