; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_make_coord.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_make_coord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__**, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32*, i32, i32*, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed allocating coord - out of memory\0A\00", align 1
@LARGE = common dso_local global i32 0, align 4
@OSM_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%d/%d unassigned/assigned axes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i32)* @make_coord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_coord(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32* %25, i32** %8, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %16, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @OSM_LOG_ENTER(i32* %32)
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %120, %3
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %123

38:                                               ; preds = %34
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %41, i64 %43
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %13, align 8
  %46 = load i32, i32* %16, align 4
  %47 = call i32* @calloc(i32 %46, i32 4)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store i32* %47, i32** %51, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %38
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* @OSM_LOG_ERROR, align 4
  %61 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %59, i32 %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @OSM_LOG_EXIT(i32* %62)
  store i32 -1, i32* %4, align 4
  br label %270

64:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %86, %64
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %65
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @LARGE, align 4
  br label %76

76:                                               ; preds = %74, %73
  %77 = phi i32 [ 0, %73 ], [ %75, %74 ]
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %77, i32* %85, align 4
  br label %86

86:                                               ; preds = %76
  %87 = load i32, i32* %9, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %65

89:                                               ; preds = %65
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %116, %89
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp ult i32 %91, %96
  br i1 %97, label %98, label %119

98:                                               ; preds = %90
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %98
  %110 = load i32, i32* %19, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %19, align 4
  br label %115

112:                                              ; preds = %98
  %113 = load i32, i32* %18, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %18, align 4
  br label %115

115:                                              ; preds = %112, %109
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %9, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %90

119:                                              ; preds = %90
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  br label %34

123:                                              ; preds = %34
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %126 = load i32, i32* %19, align 4
  %127 = load i32, i32* %18, align 4
  %128 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %124, i32 %125, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %264, %123
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %130

130:                                              ; preds = %260, %129
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %17, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %263

134:                                              ; preds = %130
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %137, i64 %139
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  store %struct.TYPE_12__* %141, %struct.TYPE_12__** %13, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @LARGE, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %134
  br label %260

152:                                              ; preds = %134
  store i32 0, i32* %10, align 4
  br label %153

153:                                              ; preds = %256, %152
  %154 = load i32, i32* %10, align 4
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = icmp ult i32 %154, %159
  br i1 %160, label %161, label %259

161:                                              ; preds = %153
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %10, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %161
  br label %256

173:                                              ; preds = %161
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %175, align 8
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 3
  %181 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %181, i64 %183
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %176, i64 %187
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %188, align 8
  store %struct.TYPE_12__* %189, %struct.TYPE_12__** %14, align 8
  store i32 0, i32* %11, align 4
  br label %190

190:                                              ; preds = %252, %173
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* %16, align 4
  %193 = icmp ult i32 %191, %192
  br i1 %193, label %194, label %255

194:                                              ; preds = %190
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %11, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %20, align 4
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %10, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = sub nsw i32 %212, 1
  store i32 %213, i32* %21, align 4
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* %21, align 4
  %216 = udiv i32 %215, 2
  %217 = icmp eq i32 %214, %216
  br i1 %217, label %218, label %226

218:                                              ; preds = %194
  %219 = load i32, i32* %21, align 4
  %220 = and i32 %219, 1
  %221 = icmp ne i32 %220, 0
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i32 -1, i32 1
  %224 = load i32, i32* %20, align 4
  %225 = add nsw i32 %224, %223
  store i32 %225, i32* %20, align 4
  br label %226

226:                                              ; preds = %218, %194
  %227 = load i32, i32* %20, align 4
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %11, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = call i64 @ltmag(i32 %227, i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %251

239:                                              ; preds = %226
  %240 = load i32, i32* %20, align 4
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %11, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  store i32 %240, i32* %248, align 4
  %249 = load i32, i32* %15, align 4
  %250 = add i32 %249, 1
  store i32 %250, i32* %15, align 4
  br label %251

251:                                              ; preds = %239, %226
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %11, align 4
  %254 = add i32 %253, 1
  store i32 %254, i32* %11, align 4
  br label %190

255:                                              ; preds = %190
  br label %256

256:                                              ; preds = %255, %172
  %257 = load i32, i32* %10, align 4
  %258 = add i32 %257, 1
  store i32 %258, i32* %10, align 4
  br label %153

259:                                              ; preds = %153
  br label %260

260:                                              ; preds = %259, %151
  %261 = load i32, i32* %12, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %12, align 4
  br label %130

263:                                              ; preds = %130
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %15, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %129, label %267

267:                                              ; preds = %264
  %268 = load i32*, i32** %8, align 8
  %269 = call i32 @OSM_LOG_EXIT(i32* %268)
  store i32 0, i32* %4, align 4
  br label %270

270:                                              ; preds = %267, %58
  %271 = load i32, i32* %4, align 4
  ret i32 %271
}

declare dso_local i32 @OSM_LOG_ENTER(i32*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, ...) #1

declare dso_local i32 @OSM_LOG_EXIT(i32*) #1

declare dso_local i64 @ltmag(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
