; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_svn_subst_keywords_differ.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_svn_subst_keywords_differ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @svn_subst_keywords_differ(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %9 = icmp eq %struct.TYPE_12__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %12 = icmp eq %struct.TYPE_12__* %11, null
  br i1 %12, label %105, label %13

13:                                               ; preds = %10, %3
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = icmp eq %struct.TYPE_12__* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = icmp eq %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = icmp eq %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = icmp eq %struct.TYPE_10__* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = icmp eq %struct.TYPE_11__* %34, null
  br i1 %35, label %105, label %36

36:                                               ; preds = %31, %26, %21, %16, %13
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = icmp eq %struct.TYPE_12__* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = icmp eq %struct.TYPE_8__* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = icmp eq %struct.TYPE_9__* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = icmp eq %struct.TYPE_10__* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = icmp eq %struct.TYPE_11__* %57, null
  br i1 %58, label %105, label %59

59:                                               ; preds = %54, %49, %44, %39, %36
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = icmp ne %struct.TYPE_12__* %60, null
  br i1 %61, label %62, label %107

62:                                               ; preds = %59
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = icmp ne %struct.TYPE_12__* %63, null
  br i1 %64, label %65, label %107

65:                                               ; preds = %62
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = icmp eq %struct.TYPE_8__* %68, null
  br i1 %69, label %70, label %107

70:                                               ; preds = %65
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = icmp eq %struct.TYPE_9__* %73, null
  br i1 %74, label %75, label %107

75:                                               ; preds = %70
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = icmp eq %struct.TYPE_10__* %78, null
  br i1 %79, label %80, label %107

80:                                               ; preds = %75
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = icmp eq %struct.TYPE_11__* %83, null
  br i1 %84, label %85, label %107

85:                                               ; preds = %80
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = icmp eq %struct.TYPE_8__* %88, null
  br i1 %89, label %90, label %107

90:                                               ; preds = %85
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = icmp eq %struct.TYPE_9__* %93, null
  br i1 %94, label %95, label %107

95:                                               ; preds = %90
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = icmp eq %struct.TYPE_10__* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = icmp eq %struct.TYPE_11__* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %100, %54, %31, %10
  %106 = load i64, i64* @FALSE, align 8
  store i64 %106, i64* %4, align 8
  br label %278

107:                                              ; preds = %100, %95, %90, %85, %80, %75, %70, %65, %62, %59
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = icmp eq %struct.TYPE_12__* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %112 = icmp eq %struct.TYPE_12__* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %110, %107
  %114 = load i64, i64* @TRUE, align 8
  store i64 %114, i64* %4, align 8
  br label %278

115:                                              ; preds = %110
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = icmp ne %struct.TYPE_8__* %119, null
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = icmp ne %struct.TYPE_8__* %125, null
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = icmp ne i32 %122, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %116
  %131 = load i64, i64* @TRUE, align 8
  store i64 %131, i64* %4, align 8
  br label %278

132:                                              ; preds = %116
  %133 = load i64, i64* %7, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %155

135:                                              ; preds = %132
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = icmp ne %struct.TYPE_8__* %138, null
  br i1 %139, label %140, label %155

140:                                              ; preds = %135
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @strcmp(i32 %145, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %140
  %154 = load i64, i64* @TRUE, align 8
  store i64 %154, i64* %4, align 8
  br label %278

155:                                              ; preds = %140, %135, %132
  br label %156

156:                                              ; preds = %155
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = icmp ne %struct.TYPE_9__* %159, null
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = icmp ne %struct.TYPE_9__* %165, null
  %167 = xor i1 %166, true
  %168 = zext i1 %167 to i32
  %169 = icmp ne i32 %162, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %156
  %171 = load i64, i64* @TRUE, align 8
  store i64 %171, i64* %4, align 8
  br label %278

172:                                              ; preds = %156
  %173 = load i64, i64* %7, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %195

175:                                              ; preds = %172
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = icmp ne %struct.TYPE_9__* %178, null
  br i1 %179, label %180, label %195

180:                                              ; preds = %175
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i64 @strcmp(i32 %185, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %180
  %194 = load i64, i64* @TRUE, align 8
  store i64 %194, i64* %4, align 8
  br label %278

195:                                              ; preds = %180, %175, %172
  br label %196

196:                                              ; preds = %195
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  %200 = icmp ne %struct.TYPE_10__* %199, null
  %201 = xor i1 %200, true
  %202 = zext i1 %201 to i32
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  %206 = icmp ne %struct.TYPE_10__* %205, null
  %207 = xor i1 %206, true
  %208 = zext i1 %207 to i32
  %209 = icmp ne i32 %202, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %196
  %211 = load i64, i64* @TRUE, align 8
  store i64 %211, i64* %4, align 8
  br label %278

212:                                              ; preds = %196
  %213 = load i64, i64* %7, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %235

215:                                              ; preds = %212
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = icmp ne %struct.TYPE_10__* %218, null
  br i1 %219, label %220, label %235

220:                                              ; preds = %215
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i64 @strcmp(i32 %225, i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %220
  %234 = load i64, i64* @TRUE, align 8
  store i64 %234, i64* %4, align 8
  br label %278

235:                                              ; preds = %220, %215, %212
  br label %236

236:                                              ; preds = %235
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %238, align 8
  %240 = icmp ne %struct.TYPE_11__* %239, null
  %241 = xor i1 %240, true
  %242 = zext i1 %241 to i32
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %244, align 8
  %246 = icmp ne %struct.TYPE_11__* %245, null
  %247 = xor i1 %246, true
  %248 = zext i1 %247 to i32
  %249 = icmp ne i32 %242, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %236
  %251 = load i64, i64* @TRUE, align 8
  store i64 %251, i64* %4, align 8
  br label %278

252:                                              ; preds = %236
  %253 = load i64, i64* %7, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %275

255:                                              ; preds = %252
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %257, align 8
  %259 = icmp ne %struct.TYPE_11__* %258, null
  br i1 %259, label %260, label %275

260:                                              ; preds = %255
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i64 @strcmp(i32 %265, i32 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %260
  %274 = load i64, i64* @TRUE, align 8
  store i64 %274, i64* %4, align 8
  br label %278

275:                                              ; preds = %260, %255, %252
  br label %276

276:                                              ; preds = %275
  %277 = load i64, i64* @FALSE, align 8
  store i64 %277, i64* %4, align 8
  br label %278

278:                                              ; preds = %276, %273, %250, %233, %210, %193, %170, %153, %130, %113, %105
  %279 = load i64, i64* %4, align 8
  ret i64 %279
}

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
