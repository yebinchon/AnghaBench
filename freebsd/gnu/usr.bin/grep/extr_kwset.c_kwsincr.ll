; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_kwset.c_kwsincr.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_kwset.c_kwsincr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kwset = type { i8*, i32, i64, i64, i32, %struct.trie* }
%struct.trie = type { i32, i64, i64, i64, i64, %struct.trie*, %struct.tree* }
%struct.tree = type { i8, i32, %struct.trie*, %struct.tree*, %struct.tree* }

@.str = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kwsincr(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kwset*, align 8
  %9 = alloca %struct.trie*, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.tree*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [12 x %struct.tree*], align 16
  %14 = alloca [12 x i32], align 16
  %15 = alloca %struct.tree*, align 8
  %16 = alloca %struct.tree*, align 8
  %17 = alloca %struct.tree*, align 8
  %18 = alloca %struct.tree*, align 8
  %19 = alloca %struct.tree*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %20 = load i64, i64* %5, align 8
  %21 = inttoptr i64 %20 to %struct.kwset*
  store %struct.kwset* %21, %struct.kwset** %8, align 8
  %22 = load %struct.kwset*, %struct.kwset** %8, align 8
  %23 = getelementptr inbounds %struct.kwset, %struct.kwset* %22, i32 0, i32 5
  %24 = load %struct.trie*, %struct.trie** %23, align 8
  store %struct.trie* %24, %struct.trie** %9, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 %25
  store i8* %27, i8** %6, align 8
  br label %28

28:                                               ; preds = %455, %3
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %7, align 8
  %31 = icmp ne i64 %29, 0
  br i1 %31, label %32, label %459

32:                                               ; preds = %28
  %33 = load %struct.kwset*, %struct.kwset** %8, align 8
  %34 = getelementptr inbounds %struct.kwset, %struct.kwset* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.kwset*, %struct.kwset** %8, align 8
  %39 = getelementptr inbounds %struct.kwset, %struct.kwset* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 -1
  store i8* %42, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  br label %53

48:                                               ; preds = %32
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 -1
  store i8* %50, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  br label %53

53:                                               ; preds = %48, %37
  %54 = phi i32 [ %47, %37 ], [ %52, %48 ]
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %10, align 1
  %56 = load %struct.trie*, %struct.trie** %9, align 8
  %57 = getelementptr inbounds %struct.trie, %struct.trie* %56, i32 0, i32 6
  %58 = load %struct.tree*, %struct.tree** %57, align 8
  store %struct.tree* %58, %struct.tree** %11, align 8
  %59 = load %struct.trie*, %struct.trie** %9, align 8
  %60 = getelementptr inbounds %struct.trie, %struct.trie* %59, i32 0, i32 6
  %61 = bitcast %struct.tree** %60 to %struct.tree*
  %62 = getelementptr inbounds [12 x %struct.tree*], [12 x %struct.tree*]* %13, i64 0, i64 0
  store %struct.tree* %61, %struct.tree** %62, align 16
  %63 = getelementptr inbounds [12 x i32], [12 x i32]* %14, i64 0, i64 0
  store i32 0, i32* %63, align 16
  store i32 1, i32* %12, align 4
  br label %64

64:                                               ; preds = %105, %53
  %65 = load %struct.tree*, %struct.tree** %11, align 8
  %66 = icmp ne %struct.tree* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i8, i8* %10, align 1
  %69 = zext i8 %68 to i32
  %70 = load %struct.tree*, %struct.tree** %11, align 8
  %71 = getelementptr inbounds %struct.tree, %struct.tree* %70, i32 0, i32 0
  %72 = load i8, i8* %71, align 8
  %73 = zext i8 %72 to i32
  %74 = icmp ne i32 %69, %73
  br label %75

75:                                               ; preds = %67, %64
  %76 = phi i1 [ false, %64 ], [ %74, %67 ]
  br i1 %76, label %77, label %106

77:                                               ; preds = %75
  %78 = load %struct.tree*, %struct.tree** %11, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [12 x %struct.tree*], [12 x %struct.tree*]* %13, i64 0, i64 %80
  store %struct.tree* %78, %struct.tree** %81, align 8
  %82 = load i8, i8* %10, align 1
  %83 = zext i8 %82 to i32
  %84 = load %struct.tree*, %struct.tree** %11, align 8
  %85 = getelementptr inbounds %struct.tree, %struct.tree* %84, i32 0, i32 0
  %86 = load i8, i8* %85, align 8
  %87 = zext i8 %86 to i32
  %88 = icmp slt i32 %83, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %77
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds [12 x i32], [12 x i32]* %14, i64 0, i64 %92
  store i32 0, i32* %93, align 4
  %94 = load %struct.tree*, %struct.tree** %11, align 8
  %95 = getelementptr inbounds %struct.tree, %struct.tree* %94, i32 0, i32 4
  %96 = load %struct.tree*, %struct.tree** %95, align 8
  store %struct.tree* %96, %struct.tree** %11, align 8
  br label %105

97:                                               ; preds = %77
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds [12 x i32], [12 x i32]* %14, i64 0, i64 %100
  store i32 1, i32* %101, align 4
  %102 = load %struct.tree*, %struct.tree** %11, align 8
  %103 = getelementptr inbounds %struct.tree, %struct.tree* %102, i32 0, i32 3
  %104 = load %struct.tree*, %struct.tree** %103, align 8
  store %struct.tree* %104, %struct.tree** %11, align 8
  br label %105

105:                                              ; preds = %97, %89
  br label %64

106:                                              ; preds = %75
  %107 = load %struct.tree*, %struct.tree** %11, align 8
  %108 = icmp ne %struct.tree* %107, null
  br i1 %108, label %455, label %109

109:                                              ; preds = %106
  %110 = load %struct.kwset*, %struct.kwset** %8, align 8
  %111 = getelementptr inbounds %struct.kwset, %struct.kwset* %110, i32 0, i32 4
  %112 = call i64 @obstack_alloc(i32* %111, i32 32)
  %113 = inttoptr i64 %112 to %struct.tree*
  store %struct.tree* %113, %struct.tree** %11, align 8
  %114 = load %struct.tree*, %struct.tree** %11, align 8
  %115 = icmp ne %struct.tree* %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %109
  %117 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i8* %117, i8** %4, align 8
  br label %505

118:                                              ; preds = %109
  %119 = load %struct.tree*, %struct.tree** %11, align 8
  %120 = getelementptr inbounds %struct.tree, %struct.tree* %119, i32 0, i32 4
  store %struct.tree* null, %struct.tree** %120, align 8
  %121 = load %struct.tree*, %struct.tree** %11, align 8
  %122 = getelementptr inbounds %struct.tree, %struct.tree* %121, i32 0, i32 3
  store %struct.tree* null, %struct.tree** %122, align 8
  %123 = load %struct.kwset*, %struct.kwset** %8, align 8
  %124 = getelementptr inbounds %struct.kwset, %struct.kwset* %123, i32 0, i32 4
  %125 = call i64 @obstack_alloc(i32* %124, i32 56)
  %126 = inttoptr i64 %125 to %struct.trie*
  %127 = load %struct.tree*, %struct.tree** %11, align 8
  %128 = getelementptr inbounds %struct.tree, %struct.tree* %127, i32 0, i32 2
  store %struct.trie* %126, %struct.trie** %128, align 8
  %129 = load %struct.tree*, %struct.tree** %11, align 8
  %130 = getelementptr inbounds %struct.tree, %struct.tree* %129, i32 0, i32 2
  %131 = load %struct.trie*, %struct.trie** %130, align 8
  %132 = icmp ne %struct.trie* %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %118
  %134 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i8* %134, i8** %4, align 8
  br label %505

135:                                              ; preds = %118
  %136 = load %struct.tree*, %struct.tree** %11, align 8
  %137 = getelementptr inbounds %struct.tree, %struct.tree* %136, i32 0, i32 2
  %138 = load %struct.trie*, %struct.trie** %137, align 8
  %139 = getelementptr inbounds %struct.trie, %struct.trie* %138, i32 0, i32 0
  store i32 0, i32* %139, align 8
  %140 = load %struct.tree*, %struct.tree** %11, align 8
  %141 = getelementptr inbounds %struct.tree, %struct.tree* %140, i32 0, i32 2
  %142 = load %struct.trie*, %struct.trie** %141, align 8
  %143 = getelementptr inbounds %struct.trie, %struct.trie* %142, i32 0, i32 6
  store %struct.tree* null, %struct.tree** %143, align 8
  %144 = load %struct.trie*, %struct.trie** %9, align 8
  %145 = load %struct.tree*, %struct.tree** %11, align 8
  %146 = getelementptr inbounds %struct.tree, %struct.tree* %145, i32 0, i32 2
  %147 = load %struct.trie*, %struct.trie** %146, align 8
  %148 = getelementptr inbounds %struct.trie, %struct.trie* %147, i32 0, i32 5
  store %struct.trie* %144, %struct.trie** %148, align 8
  %149 = load %struct.tree*, %struct.tree** %11, align 8
  %150 = getelementptr inbounds %struct.tree, %struct.tree* %149, i32 0, i32 2
  %151 = load %struct.trie*, %struct.trie** %150, align 8
  %152 = getelementptr inbounds %struct.trie, %struct.trie* %151, i32 0, i32 4
  store i64 0, i64* %152, align 8
  %153 = load %struct.tree*, %struct.tree** %11, align 8
  %154 = getelementptr inbounds %struct.tree, %struct.tree* %153, i32 0, i32 2
  %155 = load %struct.trie*, %struct.trie** %154, align 8
  %156 = getelementptr inbounds %struct.trie, %struct.trie* %155, i32 0, i32 3
  store i64 0, i64* %156, align 8
  %157 = load %struct.trie*, %struct.trie** %9, align 8
  %158 = getelementptr inbounds %struct.trie, %struct.trie* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, 1
  %161 = load %struct.tree*, %struct.tree** %11, align 8
  %162 = getelementptr inbounds %struct.tree, %struct.tree* %161, i32 0, i32 2
  %163 = load %struct.trie*, %struct.trie** %162, align 8
  %164 = getelementptr inbounds %struct.trie, %struct.trie* %163, i32 0, i32 1
  store i64 %160, i64* %164, align 8
  %165 = load %struct.tree*, %struct.tree** %11, align 8
  %166 = getelementptr inbounds %struct.tree, %struct.tree* %165, i32 0, i32 2
  %167 = load %struct.trie*, %struct.trie** %166, align 8
  %168 = getelementptr inbounds %struct.trie, %struct.trie* %167, i32 0, i32 2
  store i64 0, i64* %168, align 8
  %169 = load i8, i8* %10, align 1
  %170 = load %struct.tree*, %struct.tree** %11, align 8
  %171 = getelementptr inbounds %struct.tree, %struct.tree* %170, i32 0, i32 0
  store i8 %169, i8* %171, align 8
  %172 = load %struct.tree*, %struct.tree** %11, align 8
  %173 = getelementptr inbounds %struct.tree, %struct.tree* %172, i32 0, i32 1
  store i32 0, i32* %173, align 4
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [12 x i32], [12 x i32]* %14, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %135
  %181 = load %struct.tree*, %struct.tree** %11, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [12 x %struct.tree*], [12 x %struct.tree*]* %13, i64 0, i64 %183
  %185 = load %struct.tree*, %struct.tree** %184, align 8
  %186 = getelementptr inbounds %struct.tree, %struct.tree* %185, i32 0, i32 4
  store %struct.tree* %181, %struct.tree** %186, align 8
  br label %194

187:                                              ; preds = %135
  %188 = load %struct.tree*, %struct.tree** %11, align 8
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [12 x %struct.tree*], [12 x %struct.tree*]* %13, i64 0, i64 %190
  %192 = load %struct.tree*, %struct.tree** %191, align 8
  %193 = getelementptr inbounds %struct.tree, %struct.tree* %192, i32 0, i32 3
  store %struct.tree* %188, %struct.tree** %193, align 8
  br label %194

194:                                              ; preds = %187, %180
  br label %195

195:                                              ; preds = %231, %194
  %196 = load i32, i32* %12, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %195
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [12 x %struct.tree*], [12 x %struct.tree*]* %13, i64 0, i64 %200
  %202 = load %struct.tree*, %struct.tree** %201, align 8
  %203 = getelementptr inbounds %struct.tree, %struct.tree* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  %206 = xor i1 %205, true
  br label %207

207:                                              ; preds = %198, %195
  %208 = phi i1 [ false, %195 ], [ %206, %198 ]
  br i1 %208, label %209, label %234

209:                                              ; preds = %207
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [12 x i32], [12 x i32]* %14, i64 0, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %209
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [12 x %struct.tree*], [12 x %struct.tree*]* %13, i64 0, i64 %217
  %219 = load %struct.tree*, %struct.tree** %218, align 8
  %220 = getelementptr inbounds %struct.tree, %struct.tree* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, -1
  store i32 %222, i32* %220, align 4
  br label %231

223:                                              ; preds = %209
  %224 = load i32, i32* %12, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [12 x %struct.tree*], [12 x %struct.tree*]* %13, i64 0, i64 %225
  %227 = load %struct.tree*, %struct.tree** %226, align 8
  %228 = getelementptr inbounds %struct.tree, %struct.tree* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %228, align 4
  br label %231

231:                                              ; preds = %223, %215
  %232 = load i32, i32* %12, align 4
  %233 = add nsw i32 %232, -1
  store i32 %233, i32* %12, align 4
  br label %195

234:                                              ; preds = %207
  %235 = load i32, i32* %12, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %454

237:                                              ; preds = %234
  %238 = load i32, i32* %12, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [12 x i32], [12 x i32]* %14, i64 0, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %252

243:                                              ; preds = %237
  %244 = load i32, i32* %12, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [12 x %struct.tree*], [12 x %struct.tree*]* %13, i64 0, i64 %245
  %247 = load %struct.tree*, %struct.tree** %246, align 8
  %248 = getelementptr inbounds %struct.tree, %struct.tree* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, -1
  store i32 %250, i32* %248, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %267, label %252

252:                                              ; preds = %243, %237
  %253 = load i32, i32* %12, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [12 x i32], [12 x i32]* %14, i64 0, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = icmp eq i32 %256, 1
  br i1 %257, label %258, label %454

258:                                              ; preds = %252
  %259 = load i32, i32* %12, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [12 x %struct.tree*], [12 x %struct.tree*]* %13, i64 0, i64 %260
  %262 = load %struct.tree*, %struct.tree** %261, align 8
  %263 = getelementptr inbounds %struct.tree, %struct.tree* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %263, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %454

267:                                              ; preds = %258, %243
  %268 = load i32, i32* %12, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [12 x %struct.tree*], [12 x %struct.tree*]* %13, i64 0, i64 %269
  %271 = load %struct.tree*, %struct.tree** %270, align 8
  %272 = getelementptr inbounds %struct.tree, %struct.tree* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  switch i32 %273, label %428 [
    i32 -2, label %274
    i32 2, label %351
  ]

274:                                              ; preds = %267
  %275 = load i32, i32* %12, align 4
  %276 = add nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [12 x i32], [12 x i32]* %14, i64 0, i64 %277
  %279 = load i32, i32* %278, align 4
  switch i32 %279, label %348 [
    i32 0, label %280
    i32 1, label %301
  ]

280:                                              ; preds = %274
  %281 = load i32, i32* %12, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [12 x %struct.tree*], [12 x %struct.tree*]* %13, i64 0, i64 %282
  %284 = load %struct.tree*, %struct.tree** %283, align 8
  store %struct.tree* %284, %struct.tree** %16, align 8
  %285 = load %struct.tree*, %struct.tree** %16, align 8
  %286 = getelementptr inbounds %struct.tree, %struct.tree* %285, i32 0, i32 4
  %287 = load %struct.tree*, %struct.tree** %286, align 8
  store %struct.tree* %287, %struct.tree** %15, align 8
  %288 = load %struct.tree*, %struct.tree** %15, align 8
  %289 = getelementptr inbounds %struct.tree, %struct.tree* %288, i32 0, i32 3
  %290 = load %struct.tree*, %struct.tree** %289, align 8
  store %struct.tree* %290, %struct.tree** %18, align 8
  %291 = load %struct.tree*, %struct.tree** %16, align 8
  %292 = load %struct.tree*, %struct.tree** %15, align 8
  %293 = getelementptr inbounds %struct.tree, %struct.tree* %292, i32 0, i32 3
  store %struct.tree* %291, %struct.tree** %293, align 8
  %294 = load %struct.tree*, %struct.tree** %18, align 8
  %295 = load %struct.tree*, %struct.tree** %16, align 8
  %296 = getelementptr inbounds %struct.tree, %struct.tree* %295, i32 0, i32 4
  store %struct.tree* %294, %struct.tree** %296, align 8
  %297 = load %struct.tree*, %struct.tree** %16, align 8
  %298 = getelementptr inbounds %struct.tree, %struct.tree* %297, i32 0, i32 1
  store i32 0, i32* %298, align 4
  %299 = load %struct.tree*, %struct.tree** %15, align 8
  %300 = getelementptr inbounds %struct.tree, %struct.tree* %299, i32 0, i32 1
  store i32 0, i32* %300, align 4
  br label %350

301:                                              ; preds = %274
  %302 = load i32, i32* %12, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [12 x %struct.tree*], [12 x %struct.tree*]* %13, i64 0, i64 %303
  %305 = load %struct.tree*, %struct.tree** %304, align 8
  store %struct.tree* %305, %struct.tree** %16, align 8
  %306 = load %struct.tree*, %struct.tree** %16, align 8
  %307 = getelementptr inbounds %struct.tree, %struct.tree* %306, i32 0, i32 4
  %308 = load %struct.tree*, %struct.tree** %307, align 8
  store %struct.tree* %308, %struct.tree** %17, align 8
  %309 = load %struct.tree*, %struct.tree** %17, align 8
  %310 = getelementptr inbounds %struct.tree, %struct.tree* %309, i32 0, i32 3
  %311 = load %struct.tree*, %struct.tree** %310, align 8
  store %struct.tree* %311, %struct.tree** %15, align 8
  %312 = load %struct.tree*, %struct.tree** %15, align 8
  %313 = getelementptr inbounds %struct.tree, %struct.tree* %312, i32 0, i32 3
  %314 = load %struct.tree*, %struct.tree** %313, align 8
  store %struct.tree* %314, %struct.tree** %18, align 8
  %315 = load %struct.tree*, %struct.tree** %15, align 8
  %316 = getelementptr inbounds %struct.tree, %struct.tree* %315, i32 0, i32 4
  %317 = load %struct.tree*, %struct.tree** %316, align 8
  store %struct.tree* %317, %struct.tree** %19, align 8
  %318 = load %struct.tree*, %struct.tree** %17, align 8
  %319 = load %struct.tree*, %struct.tree** %15, align 8
  %320 = getelementptr inbounds %struct.tree, %struct.tree* %319, i32 0, i32 4
  store %struct.tree* %318, %struct.tree** %320, align 8
  %321 = load %struct.tree*, %struct.tree** %19, align 8
  %322 = load %struct.tree*, %struct.tree** %17, align 8
  %323 = getelementptr inbounds %struct.tree, %struct.tree* %322, i32 0, i32 3
  store %struct.tree* %321, %struct.tree** %323, align 8
  %324 = load %struct.tree*, %struct.tree** %16, align 8
  %325 = load %struct.tree*, %struct.tree** %15, align 8
  %326 = getelementptr inbounds %struct.tree, %struct.tree* %325, i32 0, i32 3
  store %struct.tree* %324, %struct.tree** %326, align 8
  %327 = load %struct.tree*, %struct.tree** %18, align 8
  %328 = load %struct.tree*, %struct.tree** %16, align 8
  %329 = getelementptr inbounds %struct.tree, %struct.tree* %328, i32 0, i32 4
  store %struct.tree* %327, %struct.tree** %329, align 8
  %330 = load %struct.tree*, %struct.tree** %15, align 8
  %331 = getelementptr inbounds %struct.tree, %struct.tree* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = icmp ne i32 %332, 1
  %334 = zext i1 %333 to i64
  %335 = select i1 %333, i32 0, i32 -1
  %336 = load %struct.tree*, %struct.tree** %17, align 8
  %337 = getelementptr inbounds %struct.tree, %struct.tree* %336, i32 0, i32 1
  store i32 %335, i32* %337, align 4
  %338 = load %struct.tree*, %struct.tree** %15, align 8
  %339 = getelementptr inbounds %struct.tree, %struct.tree* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = icmp ne i32 %340, -1
  %342 = zext i1 %341 to i64
  %343 = select i1 %341, i32 0, i32 1
  %344 = load %struct.tree*, %struct.tree** %16, align 8
  %345 = getelementptr inbounds %struct.tree, %struct.tree* %344, i32 0, i32 1
  store i32 %343, i32* %345, align 4
  %346 = load %struct.tree*, %struct.tree** %15, align 8
  %347 = getelementptr inbounds %struct.tree, %struct.tree* %346, i32 0, i32 1
  store i32 0, i32* %347, align 4
  br label %350

348:                                              ; preds = %274
  %349 = call i32 (...) @abort() #3
  unreachable

350:                                              ; preds = %301, %280
  br label %430

351:                                              ; preds = %267
  %352 = load i32, i32* %12, align 4
  %353 = add nsw i32 %352, 1
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [12 x i32], [12 x i32]* %14, i64 0, i64 %354
  %356 = load i32, i32* %355, align 4
  switch i32 %356, label %425 [
    i32 1, label %357
    i32 0, label %378
  ]

357:                                              ; preds = %351
  %358 = load i32, i32* %12, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [12 x %struct.tree*], [12 x %struct.tree*]* %13, i64 0, i64 %359
  %361 = load %struct.tree*, %struct.tree** %360, align 8
  store %struct.tree* %361, %struct.tree** %17, align 8
  %362 = load %struct.tree*, %struct.tree** %17, align 8
  %363 = getelementptr inbounds %struct.tree, %struct.tree* %362, i32 0, i32 3
  %364 = load %struct.tree*, %struct.tree** %363, align 8
  store %struct.tree* %364, %struct.tree** %15, align 8
  %365 = load %struct.tree*, %struct.tree** %15, align 8
  %366 = getelementptr inbounds %struct.tree, %struct.tree* %365, i32 0, i32 4
  %367 = load %struct.tree*, %struct.tree** %366, align 8
  store %struct.tree* %367, %struct.tree** %19, align 8
  %368 = load %struct.tree*, %struct.tree** %17, align 8
  %369 = load %struct.tree*, %struct.tree** %15, align 8
  %370 = getelementptr inbounds %struct.tree, %struct.tree* %369, i32 0, i32 4
  store %struct.tree* %368, %struct.tree** %370, align 8
  %371 = load %struct.tree*, %struct.tree** %19, align 8
  %372 = load %struct.tree*, %struct.tree** %17, align 8
  %373 = getelementptr inbounds %struct.tree, %struct.tree* %372, i32 0, i32 3
  store %struct.tree* %371, %struct.tree** %373, align 8
  %374 = load %struct.tree*, %struct.tree** %17, align 8
  %375 = getelementptr inbounds %struct.tree, %struct.tree* %374, i32 0, i32 1
  store i32 0, i32* %375, align 4
  %376 = load %struct.tree*, %struct.tree** %15, align 8
  %377 = getelementptr inbounds %struct.tree, %struct.tree* %376, i32 0, i32 1
  store i32 0, i32* %377, align 4
  br label %427

378:                                              ; preds = %351
  %379 = load i32, i32* %12, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [12 x %struct.tree*], [12 x %struct.tree*]* %13, i64 0, i64 %380
  %382 = load %struct.tree*, %struct.tree** %381, align 8
  store %struct.tree* %382, %struct.tree** %17, align 8
  %383 = load %struct.tree*, %struct.tree** %17, align 8
  %384 = getelementptr inbounds %struct.tree, %struct.tree* %383, i32 0, i32 3
  %385 = load %struct.tree*, %struct.tree** %384, align 8
  store %struct.tree* %385, %struct.tree** %16, align 8
  %386 = load %struct.tree*, %struct.tree** %16, align 8
  %387 = getelementptr inbounds %struct.tree, %struct.tree* %386, i32 0, i32 4
  %388 = load %struct.tree*, %struct.tree** %387, align 8
  store %struct.tree* %388, %struct.tree** %15, align 8
  %389 = load %struct.tree*, %struct.tree** %15, align 8
  %390 = getelementptr inbounds %struct.tree, %struct.tree* %389, i32 0, i32 4
  %391 = load %struct.tree*, %struct.tree** %390, align 8
  store %struct.tree* %391, %struct.tree** %19, align 8
  %392 = load %struct.tree*, %struct.tree** %15, align 8
  %393 = getelementptr inbounds %struct.tree, %struct.tree* %392, i32 0, i32 3
  %394 = load %struct.tree*, %struct.tree** %393, align 8
  store %struct.tree* %394, %struct.tree** %18, align 8
  %395 = load %struct.tree*, %struct.tree** %17, align 8
  %396 = load %struct.tree*, %struct.tree** %15, align 8
  %397 = getelementptr inbounds %struct.tree, %struct.tree* %396, i32 0, i32 4
  store %struct.tree* %395, %struct.tree** %397, align 8
  %398 = load %struct.tree*, %struct.tree** %19, align 8
  %399 = load %struct.tree*, %struct.tree** %17, align 8
  %400 = getelementptr inbounds %struct.tree, %struct.tree* %399, i32 0, i32 3
  store %struct.tree* %398, %struct.tree** %400, align 8
  %401 = load %struct.tree*, %struct.tree** %16, align 8
  %402 = load %struct.tree*, %struct.tree** %15, align 8
  %403 = getelementptr inbounds %struct.tree, %struct.tree* %402, i32 0, i32 3
  store %struct.tree* %401, %struct.tree** %403, align 8
  %404 = load %struct.tree*, %struct.tree** %18, align 8
  %405 = load %struct.tree*, %struct.tree** %16, align 8
  %406 = getelementptr inbounds %struct.tree, %struct.tree* %405, i32 0, i32 4
  store %struct.tree* %404, %struct.tree** %406, align 8
  %407 = load %struct.tree*, %struct.tree** %15, align 8
  %408 = getelementptr inbounds %struct.tree, %struct.tree* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = icmp ne i32 %409, 1
  %411 = zext i1 %410 to i64
  %412 = select i1 %410, i32 0, i32 -1
  %413 = load %struct.tree*, %struct.tree** %17, align 8
  %414 = getelementptr inbounds %struct.tree, %struct.tree* %413, i32 0, i32 1
  store i32 %412, i32* %414, align 4
  %415 = load %struct.tree*, %struct.tree** %15, align 8
  %416 = getelementptr inbounds %struct.tree, %struct.tree* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = icmp ne i32 %417, -1
  %419 = zext i1 %418 to i64
  %420 = select i1 %418, i32 0, i32 1
  %421 = load %struct.tree*, %struct.tree** %16, align 8
  %422 = getelementptr inbounds %struct.tree, %struct.tree* %421, i32 0, i32 1
  store i32 %420, i32* %422, align 4
  %423 = load %struct.tree*, %struct.tree** %15, align 8
  %424 = getelementptr inbounds %struct.tree, %struct.tree* %423, i32 0, i32 1
  store i32 0, i32* %424, align 4
  br label %427

425:                                              ; preds = %351
  %426 = call i32 (...) @abort() #3
  unreachable

427:                                              ; preds = %378, %357
  br label %430

428:                                              ; preds = %267
  %429 = call i32 (...) @abort() #3
  unreachable

430:                                              ; preds = %427, %350
  %431 = load i32, i32* %12, align 4
  %432 = sub nsw i32 %431, 1
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds [12 x i32], [12 x i32]* %14, i64 0, i64 %433
  %435 = load i32, i32* %434, align 4
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %445

437:                                              ; preds = %430
  %438 = load %struct.tree*, %struct.tree** %15, align 8
  %439 = load i32, i32* %12, align 4
  %440 = sub nsw i32 %439, 1
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds [12 x %struct.tree*], [12 x %struct.tree*]* %13, i64 0, i64 %441
  %443 = load %struct.tree*, %struct.tree** %442, align 8
  %444 = getelementptr inbounds %struct.tree, %struct.tree* %443, i32 0, i32 4
  store %struct.tree* %438, %struct.tree** %444, align 8
  br label %453

445:                                              ; preds = %430
  %446 = load %struct.tree*, %struct.tree** %15, align 8
  %447 = load i32, i32* %12, align 4
  %448 = sub nsw i32 %447, 1
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds [12 x %struct.tree*], [12 x %struct.tree*]* %13, i64 0, i64 %449
  %451 = load %struct.tree*, %struct.tree** %450, align 8
  %452 = getelementptr inbounds %struct.tree, %struct.tree* %451, i32 0, i32 3
  store %struct.tree* %446, %struct.tree** %452, align 8
  br label %453

453:                                              ; preds = %445, %437
  br label %454

454:                                              ; preds = %453, %258, %252, %234
  br label %455

455:                                              ; preds = %454, %106
  %456 = load %struct.tree*, %struct.tree** %11, align 8
  %457 = getelementptr inbounds %struct.tree, %struct.tree* %456, i32 0, i32 2
  %458 = load %struct.trie*, %struct.trie** %457, align 8
  store %struct.trie* %458, %struct.trie** %9, align 8
  br label %28

459:                                              ; preds = %28
  %460 = load %struct.trie*, %struct.trie** %9, align 8
  %461 = getelementptr inbounds %struct.trie, %struct.trie* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %472, label %464

464:                                              ; preds = %459
  %465 = load %struct.kwset*, %struct.kwset** %8, align 8
  %466 = getelementptr inbounds %struct.kwset, %struct.kwset* %465, i32 0, i32 1
  %467 = load i32, i32* %466, align 8
  %468 = mul nsw i32 2, %467
  %469 = add nsw i32 1, %468
  %470 = load %struct.trie*, %struct.trie** %9, align 8
  %471 = getelementptr inbounds %struct.trie, %struct.trie* %470, i32 0, i32 0
  store i32 %469, i32* %471, align 8
  br label %472

472:                                              ; preds = %464, %459
  %473 = load %struct.kwset*, %struct.kwset** %8, align 8
  %474 = getelementptr inbounds %struct.kwset, %struct.kwset* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 8
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %474, align 8
  %477 = load %struct.trie*, %struct.trie** %9, align 8
  %478 = getelementptr inbounds %struct.trie, %struct.trie* %477, i32 0, i32 1
  %479 = load i64, i64* %478, align 8
  %480 = load %struct.kwset*, %struct.kwset** %8, align 8
  %481 = getelementptr inbounds %struct.kwset, %struct.kwset* %480, i32 0, i32 2
  %482 = load i64, i64* %481, align 8
  %483 = icmp slt i64 %479, %482
  br i1 %483, label %484, label %490

484:                                              ; preds = %472
  %485 = load %struct.trie*, %struct.trie** %9, align 8
  %486 = getelementptr inbounds %struct.trie, %struct.trie* %485, i32 0, i32 1
  %487 = load i64, i64* %486, align 8
  %488 = load %struct.kwset*, %struct.kwset** %8, align 8
  %489 = getelementptr inbounds %struct.kwset, %struct.kwset* %488, i32 0, i32 2
  store i64 %487, i64* %489, align 8
  br label %490

490:                                              ; preds = %484, %472
  %491 = load %struct.trie*, %struct.trie** %9, align 8
  %492 = getelementptr inbounds %struct.trie, %struct.trie* %491, i32 0, i32 1
  %493 = load i64, i64* %492, align 8
  %494 = load %struct.kwset*, %struct.kwset** %8, align 8
  %495 = getelementptr inbounds %struct.kwset, %struct.kwset* %494, i32 0, i32 3
  %496 = load i64, i64* %495, align 8
  %497 = icmp sgt i64 %493, %496
  br i1 %497, label %498, label %504

498:                                              ; preds = %490
  %499 = load %struct.trie*, %struct.trie** %9, align 8
  %500 = getelementptr inbounds %struct.trie, %struct.trie* %499, i32 0, i32 1
  %501 = load i64, i64* %500, align 8
  %502 = load %struct.kwset*, %struct.kwset** %8, align 8
  %503 = getelementptr inbounds %struct.kwset, %struct.kwset* %502, i32 0, i32 3
  store i64 %501, i64* %503, align 8
  br label %504

504:                                              ; preds = %498, %490
  store i8* null, i8** %4, align 8
  br label %505

505:                                              ; preds = %504, %133, %116
  %506 = load i8*, i8** %4, align 8
  ret i8* %506
}

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i8* @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
