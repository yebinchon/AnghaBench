; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_kwset.c_kwsprep.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_kwset.c_kwsprep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kwset = type { i32, i32, i8*, i64*, i32, i8*, %struct.trie**, %struct.trie*, i32 }
%struct.trie = type { i32, i32, i64, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.trie*, i64, %struct.trie* }
%struct.TYPE_9__ = type { i64, %struct.trie* }
%struct.TYPE_8__ = type { i64 }

@NCHAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kwsprep(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.kwset*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.trie*, align 8
  %6 = alloca %struct.trie*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.trie*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %12 = load i32, i32* @NCHAR, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @NCHAR, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca %struct.trie*, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %19 = load i64, i64* %2, align 8
  %20 = inttoptr i64 %19 to %struct.kwset*
  store %struct.kwset* %20, %struct.kwset** %3, align 8
  %21 = load %struct.kwset*, %struct.kwset** %3, align 8
  %22 = getelementptr inbounds %struct.kwset, %struct.kwset* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 256
  br i1 %24, label %25, label %42

25:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %38, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @NCHAR, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load %struct.kwset*, %struct.kwset** %3, align 8
  %32 = getelementptr inbounds %struct.kwset, %struct.kwset* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = trunc i32 %33 to i8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %15, i64 %36
  store i8 %34, i8* %37, align 1
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %26

41:                                               ; preds = %26
  br label %55

42:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %51, %42
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @NCHAR, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %15, i64 %49
  store i8 -1, i8* %50, align 1
  br label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %43

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %41
  %56 = load %struct.kwset*, %struct.kwset** %3, align 8
  %57 = getelementptr inbounds %struct.kwset, %struct.kwset* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %179

60:                                               ; preds = %55
  %61 = load %struct.kwset*, %struct.kwset** %3, align 8
  %62 = getelementptr inbounds %struct.kwset, %struct.kwset* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %179

65:                                               ; preds = %60
  %66 = load %struct.kwset*, %struct.kwset** %3, align 8
  %67 = getelementptr inbounds %struct.kwset, %struct.kwset* %66, i32 0, i32 8
  %68 = load %struct.kwset*, %struct.kwset** %3, align 8
  %69 = getelementptr inbounds %struct.kwset, %struct.kwset* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = trunc i32 %70 to i8
  %72 = call i64* @obstack_alloc(i32* %67, i8 zeroext %71)
  %73 = load %struct.kwset*, %struct.kwset** %3, align 8
  %74 = getelementptr inbounds %struct.kwset, %struct.kwset* %73, i32 0, i32 3
  store i64* %72, i64** %74, align 8
  %75 = load %struct.kwset*, %struct.kwset** %3, align 8
  %76 = getelementptr inbounds %struct.kwset, %struct.kwset* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  %79 = load %struct.kwset*, %struct.kwset** %3, align 8
  %80 = getelementptr inbounds %struct.kwset, %struct.kwset* %79, i32 0, i32 7
  %81 = load %struct.trie*, %struct.trie** %80, align 8
  store %struct.trie* %81, %struct.trie** %5, align 8
  br label %82

82:                                               ; preds = %102, %65
  %83 = load i32, i32* %4, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %82
  %86 = load %struct.trie*, %struct.trie** %5, align 8
  %87 = getelementptr inbounds %struct.trie, %struct.trie* %86, i32 0, i32 3
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.kwset*, %struct.kwset** %3, align 8
  %92 = getelementptr inbounds %struct.kwset, %struct.kwset* %91, i32 0, i32 3
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  store i64 %90, i64* %96, align 8
  %97 = load %struct.trie*, %struct.trie** %5, align 8
  %98 = getelementptr inbounds %struct.trie, %struct.trie* %97, i32 0, i32 3
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load %struct.trie*, %struct.trie** %100, align 8
  store %struct.trie* %101, %struct.trie** %5, align 8
  br label %102

102:                                              ; preds = %85
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %4, align 4
  br label %82

105:                                              ; preds = %82
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %130, %105
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.kwset*, %struct.kwset** %3, align 8
  %109 = getelementptr inbounds %struct.kwset, %struct.kwset* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %106
  %113 = load %struct.kwset*, %struct.kwset** %3, align 8
  %114 = getelementptr inbounds %struct.kwset, %struct.kwset* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 1
  %118 = sub nsw i32 %115, %117
  %119 = trunc i32 %118 to i8
  %120 = load %struct.kwset*, %struct.kwset** %3, align 8
  %121 = getelementptr inbounds %struct.kwset, %struct.kwset* %120, i32 0, i32 3
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i8
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds i8, i8* %15, i64 %128
  store i8 %119, i8* %129, align 1
  br label %130

130:                                              ; preds = %112
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %4, align 4
  br label %106

133:                                              ; preds = %106
  %134 = load %struct.kwset*, %struct.kwset** %3, align 8
  %135 = getelementptr inbounds %struct.kwset, %struct.kwset* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.kwset*, %struct.kwset** %3, align 8
  %138 = getelementptr inbounds %struct.kwset, %struct.kwset* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 8
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %175, %133
  %140 = load i32, i32* %4, align 4
  %141 = load %struct.kwset*, %struct.kwset** %3, align 8
  %142 = getelementptr inbounds %struct.kwset, %struct.kwset* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %143, 1
  %145 = icmp slt i32 %140, %144
  br i1 %145, label %146, label %178

146:                                              ; preds = %139
  %147 = load %struct.kwset*, %struct.kwset** %3, align 8
  %148 = getelementptr inbounds %struct.kwset, %struct.kwset* %147, i32 0, i32 3
  %149 = load i64*, i64** %148, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.kwset*, %struct.kwset** %3, align 8
  %155 = getelementptr inbounds %struct.kwset, %struct.kwset* %154, i32 0, i32 3
  %156 = load i64*, i64** %155, align 8
  %157 = load %struct.kwset*, %struct.kwset** %3, align 8
  %158 = getelementptr inbounds %struct.kwset, %struct.kwset* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sub nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %156, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %153, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %146
  %166 = load %struct.kwset*, %struct.kwset** %3, align 8
  %167 = getelementptr inbounds %struct.kwset, %struct.kwset* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %4, align 4
  %170 = add nsw i32 %169, 1
  %171 = sub nsw i32 %168, %170
  %172 = load %struct.kwset*, %struct.kwset** %3, align 8
  %173 = getelementptr inbounds %struct.kwset, %struct.kwset* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 8
  br label %174

174:                                              ; preds = %165, %146
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %4, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %4, align 4
  br label %139

178:                                              ; preds = %139
  br label %413

179:                                              ; preds = %60, %55
  %180 = load %struct.kwset*, %struct.kwset** %3, align 8
  %181 = getelementptr inbounds %struct.kwset, %struct.kwset* %180, i32 0, i32 7
  %182 = load %struct.trie*, %struct.trie** %181, align 8
  store %struct.trie* %182, %struct.trie** %10, align 8
  store %struct.trie* %182, %struct.trie** %5, align 8
  br label %183

183:                                              ; preds = %293, %179
  %184 = load %struct.trie*, %struct.trie** %5, align 8
  %185 = icmp ne %struct.trie* %184, null
  br i1 %185, label %186, label %297

186:                                              ; preds = %183
  %187 = load %struct.trie*, %struct.trie** %5, align 8
  %188 = getelementptr inbounds %struct.trie, %struct.trie* %187, i32 0, i32 3
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = call i32 @enqueue(%struct.TYPE_9__* %189, %struct.trie** %10)
  %191 = load %struct.kwset*, %struct.kwset** %3, align 8
  %192 = getelementptr inbounds %struct.kwset, %struct.kwset* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.trie*, %struct.trie** %5, align 8
  %195 = getelementptr inbounds %struct.trie, %struct.trie* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  %196 = load %struct.kwset*, %struct.kwset** %3, align 8
  %197 = getelementptr inbounds %struct.kwset, %struct.kwset* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.trie*, %struct.trie** %5, align 8
  %200 = getelementptr inbounds %struct.trie, %struct.trie* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  %201 = load %struct.trie*, %struct.trie** %5, align 8
  %202 = getelementptr inbounds %struct.trie, %struct.trie* %201, i32 0, i32 3
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  %204 = load %struct.trie*, %struct.trie** %5, align 8
  %205 = getelementptr inbounds %struct.trie, %struct.trie* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @treedelta(%struct.TYPE_9__* %203, i64 %206, i8* %15)
  %208 = load %struct.trie*, %struct.trie** %5, align 8
  %209 = getelementptr inbounds %struct.trie, %struct.trie* %208, i32 0, i32 3
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %209, align 8
  %211 = load %struct.trie*, %struct.trie** %5, align 8
  %212 = getelementptr inbounds %struct.trie, %struct.trie* %211, i32 0, i32 7
  %213 = load %struct.trie*, %struct.trie** %212, align 8
  %214 = load %struct.kwset*, %struct.kwset** %3, align 8
  %215 = getelementptr inbounds %struct.kwset, %struct.kwset* %214, i32 0, i32 7
  %216 = load %struct.trie*, %struct.trie** %215, align 8
  %217 = call i32 @treefails(%struct.TYPE_9__* %210, %struct.trie* %213, %struct.trie* %216)
  %218 = load %struct.trie*, %struct.trie** %5, align 8
  %219 = getelementptr inbounds %struct.trie, %struct.trie* %218, i32 0, i32 7
  %220 = load %struct.trie*, %struct.trie** %219, align 8
  store %struct.trie* %220, %struct.trie** %6, align 8
  br label %221

221:                                              ; preds = %288, %186
  %222 = load %struct.trie*, %struct.trie** %6, align 8
  %223 = icmp ne %struct.trie* %222, null
  br i1 %223, label %224, label %292

224:                                              ; preds = %221
  %225 = load %struct.trie*, %struct.trie** %6, align 8
  %226 = getelementptr inbounds %struct.trie, %struct.trie* %225, i32 0, i32 3
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %226, align 8
  %228 = load %struct.trie*, %struct.trie** %5, align 8
  %229 = getelementptr inbounds %struct.trie, %struct.trie* %228, i32 0, i32 3
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %229, align 8
  %231 = call i32 @hasevery(%struct.TYPE_9__* %227, %struct.TYPE_9__* %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %258, label %233

233:                                              ; preds = %224
  %234 = load %struct.trie*, %struct.trie** %5, align 8
  %235 = getelementptr inbounds %struct.trie, %struct.trie* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.trie*, %struct.trie** %6, align 8
  %238 = getelementptr inbounds %struct.trie, %struct.trie* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = sub nsw i64 %236, %239
  %241 = load %struct.trie*, %struct.trie** %6, align 8
  %242 = getelementptr inbounds %struct.trie, %struct.trie* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = sext i32 %243 to i64
  %245 = icmp slt i64 %240, %244
  br i1 %245, label %246, label %257

246:                                              ; preds = %233
  %247 = load %struct.trie*, %struct.trie** %5, align 8
  %248 = getelementptr inbounds %struct.trie, %struct.trie* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.trie*, %struct.trie** %6, align 8
  %251 = getelementptr inbounds %struct.trie, %struct.trie* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = sub nsw i64 %249, %252
  %254 = trunc i64 %253 to i32
  %255 = load %struct.trie*, %struct.trie** %6, align 8
  %256 = getelementptr inbounds %struct.trie, %struct.trie* %255, i32 0, i32 0
  store i32 %254, i32* %256, align 8
  br label %257

257:                                              ; preds = %246, %233
  br label %258

258:                                              ; preds = %257, %224
  %259 = load %struct.trie*, %struct.trie** %5, align 8
  %260 = getelementptr inbounds %struct.trie, %struct.trie* %259, i32 0, i32 6
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %287

263:                                              ; preds = %258
  %264 = load %struct.trie*, %struct.trie** %6, align 8
  %265 = getelementptr inbounds %struct.trie, %struct.trie* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = sext i32 %266 to i64
  %268 = load %struct.trie*, %struct.trie** %5, align 8
  %269 = getelementptr inbounds %struct.trie, %struct.trie* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.trie*, %struct.trie** %6, align 8
  %272 = getelementptr inbounds %struct.trie, %struct.trie* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = sub nsw i64 %270, %273
  %275 = icmp sgt i64 %267, %274
  br i1 %275, label %276, label %287

276:                                              ; preds = %263
  %277 = load %struct.trie*, %struct.trie** %5, align 8
  %278 = getelementptr inbounds %struct.trie, %struct.trie* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.trie*, %struct.trie** %6, align 8
  %281 = getelementptr inbounds %struct.trie, %struct.trie* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = sub nsw i64 %279, %282
  %284 = trunc i64 %283 to i32
  %285 = load %struct.trie*, %struct.trie** %6, align 8
  %286 = getelementptr inbounds %struct.trie, %struct.trie* %285, i32 0, i32 1
  store i32 %284, i32* %286, align 4
  br label %287

287:                                              ; preds = %276, %263, %258
  br label %288

288:                                              ; preds = %287
  %289 = load %struct.trie*, %struct.trie** %6, align 8
  %290 = getelementptr inbounds %struct.trie, %struct.trie* %289, i32 0, i32 7
  %291 = load %struct.trie*, %struct.trie** %290, align 8
  store %struct.trie* %291, %struct.trie** %6, align 8
  br label %221

292:                                              ; preds = %221
  br label %293

293:                                              ; preds = %292
  %294 = load %struct.trie*, %struct.trie** %5, align 8
  %295 = getelementptr inbounds %struct.trie, %struct.trie* %294, i32 0, i32 5
  %296 = load %struct.trie*, %struct.trie** %295, align 8
  store %struct.trie* %296, %struct.trie** %5, align 8
  br label %183

297:                                              ; preds = %183
  %298 = load %struct.kwset*, %struct.kwset** %3, align 8
  %299 = getelementptr inbounds %struct.kwset, %struct.kwset* %298, i32 0, i32 7
  %300 = load %struct.trie*, %struct.trie** %299, align 8
  %301 = getelementptr inbounds %struct.trie, %struct.trie* %300, i32 0, i32 5
  %302 = load %struct.trie*, %struct.trie** %301, align 8
  store %struct.trie* %302, %struct.trie** %5, align 8
  br label %303

303:                                              ; preds = %341, %297
  %304 = load %struct.trie*, %struct.trie** %5, align 8
  %305 = icmp ne %struct.trie* %304, null
  br i1 %305, label %306, label %345

306:                                              ; preds = %303
  %307 = load %struct.trie*, %struct.trie** %5, align 8
  %308 = getelementptr inbounds %struct.trie, %struct.trie* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = sext i32 %309 to i64
  %311 = load %struct.trie*, %struct.trie** %5, align 8
  %312 = getelementptr inbounds %struct.trie, %struct.trie* %311, i32 0, i32 4
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = icmp sgt i64 %310, %315
  br i1 %316, label %317, label %326

317:                                              ; preds = %306
  %318 = load %struct.trie*, %struct.trie** %5, align 8
  %319 = getelementptr inbounds %struct.trie, %struct.trie* %318, i32 0, i32 4
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = trunc i64 %322 to i32
  %324 = load %struct.trie*, %struct.trie** %5, align 8
  %325 = getelementptr inbounds %struct.trie, %struct.trie* %324, i32 0, i32 1
  store i32 %323, i32* %325, align 4
  br label %326

326:                                              ; preds = %317, %306
  %327 = load %struct.trie*, %struct.trie** %5, align 8
  %328 = getelementptr inbounds %struct.trie, %struct.trie* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.trie*, %struct.trie** %5, align 8
  %331 = getelementptr inbounds %struct.trie, %struct.trie* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = icmp sgt i32 %329, %332
  br i1 %333, label %334, label %340

334:                                              ; preds = %326
  %335 = load %struct.trie*, %struct.trie** %5, align 8
  %336 = getelementptr inbounds %struct.trie, %struct.trie* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.trie*, %struct.trie** %5, align 8
  %339 = getelementptr inbounds %struct.trie, %struct.trie* %338, i32 0, i32 0
  store i32 %337, i32* %339, align 8
  br label %340

340:                                              ; preds = %334, %326
  br label %341

341:                                              ; preds = %340
  %342 = load %struct.trie*, %struct.trie** %5, align 8
  %343 = getelementptr inbounds %struct.trie, %struct.trie* %342, i32 0, i32 5
  %344 = load %struct.trie*, %struct.trie** %343, align 8
  store %struct.trie* %344, %struct.trie** %5, align 8
  br label %303

345:                                              ; preds = %303
  store i32 0, i32* %4, align 4
  br label %346

346:                                              ; preds = %354, %345
  %347 = load i32, i32* %4, align 4
  %348 = load i32, i32* @NCHAR, align 4
  %349 = icmp slt i32 %347, %348
  br i1 %349, label %350, label %357

350:                                              ; preds = %346
  %351 = load i32, i32* %4, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.trie*, %struct.trie** %18, i64 %352
  store %struct.trie* null, %struct.trie** %353, align 8
  br label %354

354:                                              ; preds = %350
  %355 = load i32, i32* %4, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %4, align 4
  br label %346

357:                                              ; preds = %346
  %358 = load %struct.kwset*, %struct.kwset** %3, align 8
  %359 = getelementptr inbounds %struct.kwset, %struct.kwset* %358, i32 0, i32 7
  %360 = load %struct.trie*, %struct.trie** %359, align 8
  %361 = getelementptr inbounds %struct.trie, %struct.trie* %360, i32 0, i32 3
  %362 = load %struct.TYPE_9__*, %struct.TYPE_9__** %361, align 8
  %363 = call i32 @treenext(%struct.TYPE_9__* %362, %struct.trie** %18)
  %364 = load %struct.kwset*, %struct.kwset** %3, align 8
  %365 = getelementptr inbounds %struct.kwset, %struct.kwset* %364, i32 0, i32 2
  %366 = load i8*, i8** %365, align 8
  store i8* %366, i8** %7, align 8
  %367 = icmp ne i8* %366, null
  br i1 %367, label %368, label %392

368:                                              ; preds = %357
  store i32 0, i32* %4, align 4
  br label %369

369:                                              ; preds = %388, %368
  %370 = load i32, i32* %4, align 4
  %371 = load i32, i32* @NCHAR, align 4
  %372 = icmp slt i32 %370, %371
  br i1 %372, label %373, label %391

373:                                              ; preds = %369
  %374 = load i8*, i8** %7, align 8
  %375 = load i32, i32* %4, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i8, i8* %374, i64 %376
  %378 = load i8, i8* %377, align 1
  %379 = zext i8 %378 to i64
  %380 = getelementptr inbounds %struct.trie*, %struct.trie** %18, i64 %379
  %381 = load %struct.trie*, %struct.trie** %380, align 8
  %382 = load %struct.kwset*, %struct.kwset** %3, align 8
  %383 = getelementptr inbounds %struct.kwset, %struct.kwset* %382, i32 0, i32 6
  %384 = load %struct.trie**, %struct.trie*** %383, align 8
  %385 = load i32, i32* %4, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.trie*, %struct.trie** %384, i64 %386
  store %struct.trie* %381, %struct.trie** %387, align 8
  br label %388

388:                                              ; preds = %373
  %389 = load i32, i32* %4, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %4, align 4
  br label %369

391:                                              ; preds = %369
  br label %412

392:                                              ; preds = %357
  store i32 0, i32* %4, align 4
  br label %393

393:                                              ; preds = %408, %392
  %394 = load i32, i32* %4, align 4
  %395 = load i32, i32* @NCHAR, align 4
  %396 = icmp slt i32 %394, %395
  br i1 %396, label %397, label %411

397:                                              ; preds = %393
  %398 = load i32, i32* %4, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.trie*, %struct.trie** %18, i64 %399
  %401 = load %struct.trie*, %struct.trie** %400, align 8
  %402 = load %struct.kwset*, %struct.kwset** %3, align 8
  %403 = getelementptr inbounds %struct.kwset, %struct.kwset* %402, i32 0, i32 6
  %404 = load %struct.trie**, %struct.trie*** %403, align 8
  %405 = load i32, i32* %4, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.trie*, %struct.trie** %404, i64 %406
  store %struct.trie* %401, %struct.trie** %407, align 8
  br label %408

408:                                              ; preds = %397
  %409 = load i32, i32* %4, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %4, align 4
  br label %393

411:                                              ; preds = %393
  br label %412

412:                                              ; preds = %411, %391
  br label %413

413:                                              ; preds = %412, %178
  %414 = load %struct.kwset*, %struct.kwset** %3, align 8
  %415 = getelementptr inbounds %struct.kwset, %struct.kwset* %414, i32 0, i32 2
  %416 = load i8*, i8** %415, align 8
  store i8* %416, i8** %7, align 8
  %417 = icmp ne i8* %416, null
  br i1 %417, label %418, label %442

418:                                              ; preds = %413
  store i32 0, i32* %4, align 4
  br label %419

419:                                              ; preds = %438, %418
  %420 = load i32, i32* %4, align 4
  %421 = load i32, i32* @NCHAR, align 4
  %422 = icmp slt i32 %420, %421
  br i1 %422, label %423, label %441

423:                                              ; preds = %419
  %424 = load i8*, i8** %7, align 8
  %425 = load i32, i32* %4, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i8, i8* %424, i64 %426
  %428 = load i8, i8* %427, align 1
  %429 = zext i8 %428 to i64
  %430 = getelementptr inbounds i8, i8* %15, i64 %429
  %431 = load i8, i8* %430, align 1
  %432 = load %struct.kwset*, %struct.kwset** %3, align 8
  %433 = getelementptr inbounds %struct.kwset, %struct.kwset* %432, i32 0, i32 5
  %434 = load i8*, i8** %433, align 8
  %435 = load i32, i32* %4, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i8, i8* %434, i64 %436
  store i8 %431, i8* %437, align 1
  br label %438

438:                                              ; preds = %423
  %439 = load i32, i32* %4, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %4, align 4
  br label %419

441:                                              ; preds = %419
  br label %462

442:                                              ; preds = %413
  store i32 0, i32* %4, align 4
  br label %443

443:                                              ; preds = %458, %442
  %444 = load i32, i32* %4, align 4
  %445 = load i32, i32* @NCHAR, align 4
  %446 = icmp slt i32 %444, %445
  br i1 %446, label %447, label %461

447:                                              ; preds = %443
  %448 = load i32, i32* %4, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i8, i8* %15, i64 %449
  %451 = load i8, i8* %450, align 1
  %452 = load %struct.kwset*, %struct.kwset** %3, align 8
  %453 = getelementptr inbounds %struct.kwset, %struct.kwset* %452, i32 0, i32 5
  %454 = load i8*, i8** %453, align 8
  %455 = load i32, i32* %4, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i8, i8* %454, i64 %456
  store i8 %451, i8* %457, align 1
  br label %458

458:                                              ; preds = %447
  %459 = load i32, i32* %4, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %4, align 4
  br label %443

461:                                              ; preds = %443
  br label %462

462:                                              ; preds = %461, %441
  %463 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %463)
  ret i8* null
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64* @obstack_alloc(i32*, i8 zeroext) #2

declare dso_local i32 @enqueue(%struct.TYPE_9__*, %struct.trie**) #2

declare dso_local i32 @treedelta(%struct.TYPE_9__*, i64, i8*) #2

declare dso_local i32 @treefails(%struct.TYPE_9__*, %struct.trie*, %struct.trie*) #2

declare dso_local i32 @hasevery(%struct.TYPE_9__*, %struct.TYPE_9__*) #2

declare dso_local i32 @treenext(%struct.TYPE_9__*, %struct.trie**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
