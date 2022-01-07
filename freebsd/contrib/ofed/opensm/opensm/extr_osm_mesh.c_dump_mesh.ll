; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_dump_mesh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_dump_mesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__**, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32*, i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%2d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" [%d]->[\00", align 1
@OSM_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @dump_mesh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_mesh(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca [256 x i8], align 16
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32* %17, i32** %3, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @OSM_LOG_ENTER(i32* %21)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %250, %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %253

27:                                               ; preds = %23
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %30, i64 %32
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %11, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %6, align 4
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %41 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %41, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %98, %27
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %101

46:                                               ; preds = %42
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = sub i64 256, %52
  %54 = trunc i64 %53 to i32
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %50, i32 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp ugt i64 %70, 256
  br i1 %71, label %72, label %73

72:                                               ; preds = %46
  store i32 256, i32* %10, align 4
  br label %73

73:                                               ; preds = %72, %46
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = sub nsw i32 %75, 1
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %73
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 256, %84
  %86 = trunc i64 %85 to i32
  %87 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %82, i32 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp ugt i64 %93, 256
  br i1 %94, label %95, label %96

95:                                               ; preds = %78
  store i32 256, i32* %10, align 4
  br label %96

96:                                               ; preds = %95, %78
  br label %97

97:                                               ; preds = %96, %73
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %42

101:                                              ; preds = %42
  %102 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = sub i64 256, %107
  %109 = trunc i64 %108 to i32
  %110 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %105, i32 %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = icmp ugt i64 %116, 256
  br i1 %117, label %118, label %119

118:                                              ; preds = %101
  store i32 256, i32* %10, align 4
  br label %119

119:                                              ; preds = %118, %101
  store i32 0, i32* %8, align 4
  br label %120

120:                                              ; preds = %242, %119
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %121, %126
  br i1 %127, label %128, label %245

128:                                              ; preds = %120
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %130, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %136, i64 %138
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %131, i64 %142
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  store %struct.TYPE_10__* %144, %struct.TYPE_10__** %12, align 8
  %145 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = sub i64 256, %150
  %152 = trunc i64 %151 to i32
  %153 = load i32, i32* %8, align 4
  %154 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %148, i32 %152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = icmp ugt i64 %160, 256
  br i1 %161, label %162, label %163

162:                                              ; preds = %128
  store i32 256, i32* %10, align 4
  br label %163

163:                                              ; preds = %162, %128
  store i32 0, i32* %9, align 4
  br label %164

164:                                              ; preds = %220, %163
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %223

168:                                              ; preds = %164
  %169 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = sub i64 256, %174
  %176 = trunc i64 %175 to i32
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %172, i32 %176, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %188, %186
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = icmp ugt i64 %192, 256
  br i1 %193, label %194, label %195

194:                                              ; preds = %168
  store i32 256, i32* %10, align 4
  br label %195

195:                                              ; preds = %194, %168
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* %6, align 4
  %198 = sub nsw i32 %197, 1
  %199 = icmp ne i32 %196, %198
  br i1 %199, label %200, label %219

200:                                              ; preds = %195
  %201 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = sub i64 256, %206
  %208 = trunc i64 %207 to i32
  %209 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %204, i32 %208, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = add nsw i64 %211, %209
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* %10, align 4
  %215 = sext i32 %214 to i64
  %216 = icmp ugt i64 %215, 256
  br i1 %216, label %217, label %218

217:                                              ; preds = %200
  store i32 256, i32* %10, align 4
  br label %218

218:                                              ; preds = %217, %200
  br label %219

219:                                              ; preds = %218, %195
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %9, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %9, align 4
  br label %164

223:                                              ; preds = %164
  %224 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %224, i64 %226
  %228 = load i32, i32* %10, align 4
  %229 = sext i32 %228 to i64
  %230 = sub i64 256, %229
  %231 = trunc i64 %230 to i32
  %232 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %227, i32 %231, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %233 = load i32, i32* %10, align 4
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %234, %232
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %10, align 4
  %237 = load i32, i32* %10, align 4
  %238 = sext i32 %237 to i64
  %239 = icmp ugt i64 %238, 256
  br i1 %239, label %240, label %241

240:                                              ; preds = %223
  store i32 256, i32* %10, align 4
  br label %241

241:                                              ; preds = %240, %223
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %8, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %8, align 4
  br label %120

245:                                              ; preds = %120
  %246 = load i32*, i32** %3, align 8
  %247 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %248 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %249 = call i32 @OSM_LOG(i32* %246, i32 %247, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %248)
  br label %250

250:                                              ; preds = %245
  %251 = load i32, i32* %4, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %4, align 4
  br label %23

253:                                              ; preds = %23
  %254 = load i32*, i32** %3, align 8
  %255 = call i32 @OSM_LOG_EXIT(i32* %254)
  ret void
}

declare dso_local i32 @OSM_LOG_ENTER(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, i8*) #1

declare dso_local i32 @OSM_LOG_EXIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
