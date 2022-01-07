; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_measure_geometry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_measure_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__**, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32*, i32* }

@MAX_DIMENSION = common dso_local global i32 0, align 4
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed allocating size - out of memory\0A\00", align 1
@LARGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*)* @measure_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @measure_geometry(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32* %23, i32** %6, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* @MAX_DIMENSION, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %13, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %14, align 8
  %34 = load i32, i32* @MAX_DIMENSION, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %15, align 8
  %37 = load i32, i32* @MAX_DIMENSION, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %16, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @OSM_LOG_ENTER(i32* %40)
  %42 = load i32, i32* %11, align 4
  %43 = call i32* @calloc(i32 %42, i32 4)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %2
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* @OSM_LOG_ERROR, align 4
  %53 = call i32 @OSM_LOG(i32* %51, i32 %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @OSM_LOG_EXIT(i32* %54)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %240

56:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %71, %56
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load i32, i32* @LARGE, align 4
  %63 = sub nsw i32 0, %62
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %33, i64 %65
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @LARGE, align 4
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %36, i64 %69
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %61
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %57

74:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %165, %74
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %168

79:                                               ; preds = %75
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %82, i64 %84
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  store %struct.TYPE_10__* %86, %struct.TYPE_10__** %10, align 8
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %161, %79
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %164

91:                                               ; preds = %87
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @LARGE, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  br label %161

104:                                              ; preds = %91
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %33, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp sgt i32 %113, %117
  br i1 %118, label %119, label %132

119:                                              ; preds = %104
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %33, i64 %130
  store i32 %128, i32* %131, align 4
  br label %132

132:                                              ; preds = %119, %104
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %36, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %141, %145
  br i1 %146, label %147, label %160

147:                                              ; preds = %132
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %36, i64 %158
  store i32 %156, i32* %159, align 4
  br label %160

160:                                              ; preds = %147, %132
  br label %161

161:                                              ; preds = %160, %103
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %7, align 4
  br label %87

164:                                              ; preds = %87
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  br label %75

168:                                              ; preds = %75
  store i32 0, i32* %7, align 4
  br label %169

169:                                              ; preds = %193, %168
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %11, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %196

173:                                              ; preds = %169
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %33, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %36, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = sub nsw i32 %177, %181
  %183 = add nsw i32 %182, 1
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %39, i64 %185
  store i32 %183, i32* %186, align 4
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 %183, i32* %192, align 4
  br label %193

193:                                              ; preds = %173
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %7, align 4
  br label %169

196:                                              ; preds = %169
  store i32 0, i32* %8, align 4
  br label %197

197:                                              ; preds = %234, %196
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %11, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %237

201:                                              ; preds = %197
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %7, align 4
  br label %202

202:                                              ; preds = %220, %201
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* %11, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %223

206:                                              ; preds = %202
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %39, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %17, align 4
  %212 = icmp sgt i32 %210, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %206
  %214 = load i32, i32* %7, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %39, i64 %215
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %17, align 4
  %218 = load i32, i32* %7, align 4
  store i32 %218, i32* %18, align 4
  br label %219

219:                                              ; preds = %213, %206
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %7, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %7, align 4
  br label %202

223:                                              ; preds = %202
  %224 = load i32, i32* %18, align 4
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  store i32 %224, i32* %230, align 4
  %231 = load i32, i32* %18, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %39, i64 %232
  store i32 -1, i32* %233, align 4
  br label %234

234:                                              ; preds = %223
  %235 = load i32, i32* %8, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %8, align 4
  br label %197

237:                                              ; preds = %197
  %238 = load i32*, i32** %6, align 8
  %239 = call i32 @OSM_LOG_EXIT(i32* %238)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %240

240:                                              ; preds = %237, %50
  %241 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %241)
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @OSM_LOG_ENTER(i32*) #2

declare dso_local i32* @calloc(i32, i32) #2

declare dso_local i32 @OSM_LOG(i32*, i32, i8*) #2

declare dso_local i32 @OSM_LOG_EXIT(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
