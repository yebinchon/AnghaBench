; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_split.c_vs_join.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_split.c_vs_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@q = common dso_local global i32 0, align 4
@VERT_PRECEDE = common dso_local global i32 0, align 4
@VERT_FOLLOW = common dso_local global i32 0, align 4
@HORIZ_PRECEDE = common dso_local global i32 0, align 4
@HORIZ_FOLLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_8__**, i32*)* @vs_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vs_join(%struct.TYPE_8__* %0, %struct.TYPE_8__** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_8__**, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %8, align 8
  %16 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  store %struct.TYPE_8__** %16, %struct.TYPE_8__*** %9, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %12, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_8__* @TAILQ_FIRST(i32 %22)
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %10, align 8
  br label %24

24:                                               ; preds = %107, %3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %111

27:                                               ; preds = %24
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %30 = icmp eq %struct.TYPE_8__* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %107

32:                                               ; preds = %27
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %35, %38
  %40 = add i64 %39, 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %107

46:                                               ; preds = %32
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %52, %55
  %57 = icmp ugt i64 %49, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %107

59:                                               ; preds = %46
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %59
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %70, %73
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp uge i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  br label %111

80:                                               ; preds = %67
  br label %107

81:                                               ; preds = %59
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %84, %87
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %91, %94
  %96 = icmp ugt i64 %88, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %81
  br label %111

98:                                               ; preds = %81
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %12, align 8
  %103 = sub i64 %102, %101
  store i64 %103, i64* %12, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %105 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %105, i32 1
  store %struct.TYPE_8__** %106, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* %104, %struct.TYPE_8__** %105, align 8
  br label %107

107:                                              ; preds = %98, %80, %58, %45, %31
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %109 = load i32, i32* @q, align 4
  %110 = call %struct.TYPE_8__* @TAILQ_NEXT(%struct.TYPE_8__* %108, i32 %109)
  store %struct.TYPE_8__* %110, %struct.TYPE_8__** %10, align 8
  br label %24

111:                                              ; preds = %97, %79, %24
  %112 = load i64, i64* %12, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %115, align 8
  %116 = load i32, i32* @VERT_PRECEDE, align 4
  %117 = load i32*, i32** %7, align 8
  store i32 %116, i32* %117, align 4
  store i32 0, i32* %4, align 4
  br label %432

118:                                              ; preds = %111
  %119 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  store %struct.TYPE_8__** %119, %struct.TYPE_8__*** %9, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %12, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call %struct.TYPE_8__* @TAILQ_FIRST(i32 %125)
  store %struct.TYPE_8__* %126, %struct.TYPE_8__** %10, align 8
  br label %127

127:                                              ; preds = %210, %118
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %129 = icmp ne %struct.TYPE_8__* %128, null
  br i1 %129, label %130, label %214

130:                                              ; preds = %127
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %133 = icmp eq %struct.TYPE_8__* %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %210

135:                                              ; preds = %130
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = add i64 %141, %144
  %146 = add i64 %145, 1
  %147 = icmp ne i64 %138, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %135
  br label %210

149:                                              ; preds = %135
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %155, %158
  %160 = icmp ugt i64 %152, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %149
  br label %210

162:                                              ; preds = %149
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = icmp slt i64 %165, %168
  br i1 %169, label %170, label %184

170:                                              ; preds = %162
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = add i64 %173, %176
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = icmp uge i64 %177, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %170
  br label %214

183:                                              ; preds = %170
  br label %210

184:                                              ; preds = %162
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = add i64 %187, %190
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = add i64 %194, %197
  %199 = icmp ugt i64 %191, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %184
  br label %214

201:                                              ; preds = %184
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* %12, align 8
  %206 = sub i64 %205, %204
  store i64 %206, i64* %12, align 8
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %208 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %208, i32 1
  store %struct.TYPE_8__** %209, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* %207, %struct.TYPE_8__** %208, align 8
  br label %210

210:                                              ; preds = %201, %183, %161, %148, %134
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %212 = load i32, i32* @q, align 4
  %213 = call %struct.TYPE_8__* @TAILQ_NEXT(%struct.TYPE_8__* %211, i32 %212)
  store %struct.TYPE_8__* %213, %struct.TYPE_8__** %10, align 8
  br label %127

214:                                              ; preds = %200, %182, %127
  %215 = load i64, i64* %12, align 8
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %218, align 8
  %219 = load i32, i32* @VERT_FOLLOW, align 4
  %220 = load i32*, i32** %7, align 8
  store i32 %219, i32* %220, align 4
  store i32 0, i32* %4, align 4
  br label %432

221:                                              ; preds = %214
  store i32 0, i32* %11, align 4
  %222 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  store %struct.TYPE_8__** %222, %struct.TYPE_8__*** %9, align 8
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %12, align 8
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call %struct.TYPE_8__* @TAILQ_FIRST(i32 %228)
  store %struct.TYPE_8__* %229, %struct.TYPE_8__** %10, align 8
  br label %230

230:                                              ; preds = %315, %221
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %232 = icmp ne %struct.TYPE_8__* %231, null
  br i1 %232, label %233, label %319

233:                                              ; preds = %230
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %236 = icmp eq %struct.TYPE_8__* %234, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %233
  br label %315

238:                                              ; preds = %233
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = add i64 %241, %244
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %245, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %238
  br label %315

251:                                              ; preds = %238
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = add i64 %257, %260
  %262 = icmp ugt i64 %254, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %251
  br label %315

264:                                              ; preds = %251
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = icmp slt i64 %267, %270
  br i1 %271, label %272, label %286

272:                                              ; preds = %264
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = add i64 %275, %278
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = icmp uge i64 %279, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %272
  br label %319

285:                                              ; preds = %272
  br label %315

286:                                              ; preds = %264
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 2
  %292 = load i64, i64* %291, align 8
  %293 = add i64 %289, %292
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 2
  %299 = load i64, i64* %298, align 8
  %300 = add i64 %296, %299
  %301 = icmp ugt i64 %293, %300
  br i1 %301, label %302, label %303

302:                                              ; preds = %286
  br label %319

303:                                              ; preds = %286
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 2
  %306 = load i64, i64* %305, align 8
  %307 = load i32, i32* %11, align 4
  %308 = sext i32 %307 to i64
  %309 = add i64 %306, %308
  %310 = load i64, i64* %12, align 8
  %311 = sub i64 %310, %309
  store i64 %311, i64* %12, align 8
  store i32 1, i32* %11, align 4
  %312 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %313 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %313, i32 1
  store %struct.TYPE_8__** %314, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* %312, %struct.TYPE_8__** %313, align 8
  br label %315

315:                                              ; preds = %303, %285, %263, %250, %237
  %316 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %317 = load i32, i32* @q, align 4
  %318 = call %struct.TYPE_8__* @TAILQ_NEXT(%struct.TYPE_8__* %316, i32 %317)
  store %struct.TYPE_8__* %318, %struct.TYPE_8__** %10, align 8
  br label %230

319:                                              ; preds = %302, %284, %230
  %320 = load i64, i64* %12, align 8
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %319
  %323 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %323, align 8
  %324 = load i32, i32* @HORIZ_PRECEDE, align 4
  %325 = load i32*, i32** %7, align 8
  store i32 %324, i32* %325, align 4
  store i32 0, i32* %4, align 4
  br label %432

326:                                              ; preds = %319
  store i32 0, i32* %11, align 4
  %327 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  store %struct.TYPE_8__** %327, %struct.TYPE_8__*** %9, align 8
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  store i64 %330, i64* %12, align 8
  %331 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = call %struct.TYPE_8__* @TAILQ_FIRST(i32 %333)
  store %struct.TYPE_8__* %334, %struct.TYPE_8__** %10, align 8
  br label %335

335:                                              ; preds = %420, %326
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %337 = icmp ne %struct.TYPE_8__* %336, null
  br i1 %337, label %338, label %424

338:                                              ; preds = %335
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %341 = icmp eq %struct.TYPE_8__* %339, %340
  br i1 %341, label %342, label %343

342:                                              ; preds = %338
  br label %420

343:                                              ; preds = %338
  %344 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i32 0, i32 3
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 3
  %349 = load i64, i64* %348, align 8
  %350 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = add i64 %349, %352
  %354 = icmp ne i64 %346, %353
  br i1 %354, label %355, label %356

355:                                              ; preds = %343
  br label %420

356:                                              ; preds = %343
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %363, i32 0, i32 2
  %365 = load i64, i64* %364, align 8
  %366 = add i64 %362, %365
  %367 = icmp ugt i64 %359, %366
  br i1 %367, label %368, label %369

368:                                              ; preds = %356
  br label %420

369:                                              ; preds = %356
  %370 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 1
  %372 = load i64, i64* %371, align 8
  %373 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 1
  %375 = load i64, i64* %374, align 8
  %376 = icmp slt i64 %372, %375
  br i1 %376, label %377, label %391

377:                                              ; preds = %369
  %378 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 1
  %380 = load i64, i64* %379, align 8
  %381 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 2
  %383 = load i64, i64* %382, align 8
  %384 = add i64 %380, %383
  %385 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = icmp uge i64 %384, %387
  br i1 %388, label %389, label %390

389:                                              ; preds = %377
  br label %424

390:                                              ; preds = %377
  br label %420

391:                                              ; preds = %369
  %392 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %392, i32 0, i32 1
  %394 = load i64, i64* %393, align 8
  %395 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 2
  %397 = load i64, i64* %396, align 8
  %398 = add i64 %394, %397
  %399 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %399, i32 0, i32 1
  %401 = load i64, i64* %400, align 8
  %402 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %402, i32 0, i32 2
  %404 = load i64, i64* %403, align 8
  %405 = add i64 %401, %404
  %406 = icmp ugt i64 %398, %405
  br i1 %406, label %407, label %408

407:                                              ; preds = %391
  br label %424

408:                                              ; preds = %391
  %409 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %409, i32 0, i32 2
  %411 = load i64, i64* %410, align 8
  %412 = load i32, i32* %11, align 4
  %413 = sext i32 %412 to i64
  %414 = add i64 %411, %413
  %415 = load i64, i64* %12, align 8
  %416 = sub i64 %415, %414
  store i64 %416, i64* %12, align 8
  store i32 1, i32* %11, align 4
  %417 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %418 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %419 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %418, i32 1
  store %struct.TYPE_8__** %419, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* %417, %struct.TYPE_8__** %418, align 8
  br label %420

420:                                              ; preds = %408, %390, %368, %355, %342
  %421 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %422 = load i32, i32* @q, align 4
  %423 = call %struct.TYPE_8__* @TAILQ_NEXT(%struct.TYPE_8__* %421, i32 %422)
  store %struct.TYPE_8__* %423, %struct.TYPE_8__** %10, align 8
  br label %335

424:                                              ; preds = %407, %389, %335
  %425 = load i64, i64* %12, align 8
  %426 = icmp eq i64 %425, 0
  br i1 %426, label %427, label %431

427:                                              ; preds = %424
  %428 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %428, align 8
  %429 = load i32, i32* @HORIZ_FOLLOW, align 4
  %430 = load i32*, i32** %7, align 8
  store i32 %429, i32* %430, align 4
  store i32 0, i32* %4, align 4
  br label %432

431:                                              ; preds = %424
  store i32 1, i32* %4, align 4
  br label %432

432:                                              ; preds = %431, %427, %322, %217, %114
  %433 = load i32, i32* %4, align 4
  ret i32 %433
}

declare dso_local %struct.TYPE_8__* @TAILQ_FIRST(i32) #1

declare dso_local %struct.TYPE_8__* @TAILQ_NEXT(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
