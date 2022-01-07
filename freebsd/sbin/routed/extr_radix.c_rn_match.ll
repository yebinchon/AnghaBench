; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_radix.c_rn_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_radix.c_rn_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i32, i32, i32, i64, i32*, i32, %struct.radix_node*, %struct.radix_mask*, %struct.radix_node*, %struct.radix_node*, %struct.radix_node* }
%struct.radix_mask = type { i32, i32, i64, %struct.radix_node*, %struct.radix_mask* }
%struct.radix_node_head = type { %struct.radix_node* }

@RNF_ROOT = common dso_local global i32 0, align 4
@RNF_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radix_node* (i8*, %struct.radix_node_head*)* @rn_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radix_node* @rn_match(i8* %0, %struct.radix_node_head* %1) #0 {
  %3 = alloca %struct.radix_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.radix_node_head*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.radix_node*, align 8
  %8 = alloca %struct.radix_node*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.radix_node*, align 8
  %13 = alloca %struct.radix_node*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.radix_mask*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.radix_node_head* %1, %struct.radix_node_head** %5, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %6, align 8
  %23 = load %struct.radix_node_head*, %struct.radix_node_head** %5, align 8
  %24 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %23, i32 0, i32 0
  %25 = load %struct.radix_node*, %struct.radix_node** %24, align 8
  store %struct.radix_node* %25, %struct.radix_node** %7, align 8
  %26 = load i32*, i32** %6, align 8
  store i32* %26, i32** %9, align 8
  %27 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  store %struct.radix_node* %27, %struct.radix_node** %13, align 8
  %28 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %29 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %14, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %15, align 4
  br label %33

33:                                               ; preds = %59, %2
  %34 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %35 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %33
  %39 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %40 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %44 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %41, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %38
  %52 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %53 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %52, i32 0, i32 10
  %54 = load %struct.radix_node*, %struct.radix_node** %53, align 8
  store %struct.radix_node* %54, %struct.radix_node** %7, align 8
  br label %59

55:                                               ; preds = %38
  %56 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %57 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %56, i32 0, i32 9
  %58 = load %struct.radix_node*, %struct.radix_node** %57, align 8
  store %struct.radix_node* %58, %struct.radix_node** %7, align 8
  br label %59

59:                                               ; preds = %55, %51
  br label %33

60:                                               ; preds = %33
  %61 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %62 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %67 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i32*
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %65, %60
  %72 = load i32, i32* %14, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %9, align 8
  %76 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %77 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32* %81, i32** %10, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32* %85, i32** %11, align 8
  br label %86

86:                                               ; preds = %98, %71
  %87 = load i32*, i32** %9, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = icmp ult i32* %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %92, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %130

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97
  %99 = load i32*, i32** %9, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %9, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %10, align 8
  br label %86

103:                                              ; preds = %86
  %104 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %105 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @RNF_ROOT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %103
  %111 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  store %struct.radix_node* %111, %struct.radix_node** %3, align 8
  br label %285

112:                                              ; preds = %103
  %113 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %114 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %113, i32 0, i32 6
  %115 = load %struct.radix_node*, %struct.radix_node** %114, align 8
  %116 = icmp ne %struct.radix_node* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %119 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %118, i32 0, i32 6
  %120 = load %struct.radix_node*, %struct.radix_node** %119, align 8
  store %struct.radix_node* %120, %struct.radix_node** %7, align 8
  %121 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  store %struct.radix_node* %121, %struct.radix_node** %3, align 8
  br label %285

122:                                              ; preds = %112
  %123 = load i32*, i32** %9, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 -1
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  store %struct.radix_node* %128, %struct.radix_node** %3, align 8
  br label %285

129:                                              ; preds = %122
  store i32 0, i32* %18, align 4
  br label %145

130:                                              ; preds = %96
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %133, align 4
  %135 = xor i32 %132, %134
  %136 = and i32 %135, 255
  store i32 %136, i32* %17, align 4
  store i32 7, i32* %18, align 4
  br label %137

137:                                              ; preds = %141, %130
  %138 = load i32, i32* %17, align 4
  %139 = ashr i32 %138, 1
  store i32 %139, i32* %17, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i32, i32* %18, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %18, align 4
  br label %137

144:                                              ; preds = %137
  br label %145

145:                                              ; preds = %144, %129
  %146 = load i32*, i32** %9, align 8
  %147 = load i32*, i32** %6, align 8
  %148 = ptrtoint i32* %146 to i64
  %149 = ptrtoint i32* %147 to i64
  %150 = sub i64 %148, %149
  %151 = sdiv exact i64 %150, 4
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %16, align 4
  %153 = load i32, i32* %16, align 4
  %154 = shl i32 %153, 3
  %155 = load i32, i32* %18, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %18, align 4
  %157 = load i32, i32* %18, align 4
  %158 = sub nsw i32 -1, %157
  store i32 %158, i32* %19, align 4
  %159 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  store %struct.radix_node* %159, %struct.radix_node** %12, align 8
  %160 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %145
  %164 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %165 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %164, i32 0, i32 6
  %166 = load %struct.radix_node*, %struct.radix_node** %165, align 8
  store %struct.radix_node* %166, %struct.radix_node** %7, align 8
  br label %167

167:                                              ; preds = %163, %145
  br label %168

168:                                              ; preds = %197, %167
  %169 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %170 = icmp ne %struct.radix_node* %169, null
  br i1 %170, label %171, label %201

171:                                              ; preds = %168
  %172 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %173 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @RNF_NORMAL, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %171
  %179 = load i32, i32* %19, align 4
  %180 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %181 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp sle i32 %179, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %178
  %185 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  store %struct.radix_node* %185, %struct.radix_node** %3, align 8
  br label %285

186:                                              ; preds = %178
  br label %196

187:                                              ; preds = %171
  %188 = load i32*, i32** %6, align 8
  %189 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %190 = load i32, i32* %16, align 4
  %191 = call i64 @rn_satisfies_leaf(i32* %188, %struct.radix_node* %189, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %187
  %194 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  store %struct.radix_node* %194, %struct.radix_node** %3, align 8
  br label %285

195:                                              ; preds = %187
  br label %196

196:                                              ; preds = %195, %186
  br label %197

197:                                              ; preds = %196
  %198 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %199 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %198, i32 0, i32 6
  %200 = load %struct.radix_node*, %struct.radix_node** %199, align 8
  store %struct.radix_node* %200, %struct.radix_node** %7, align 8
  br label %168

201:                                              ; preds = %168
  %202 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  store %struct.radix_node* %202, %struct.radix_node** %7, align 8
  br label %203

203:                                              ; preds = %280, %201
  %204 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %205 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %204, i32 0, i32 8
  %206 = load %struct.radix_node*, %struct.radix_node** %205, align 8
  store %struct.radix_node* %206, %struct.radix_node** %7, align 8
  %207 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %208 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %207, i32 0, i32 7
  %209 = load %struct.radix_mask*, %struct.radix_mask** %208, align 8
  store %struct.radix_mask* %209, %struct.radix_mask** %20, align 8
  %210 = icmp ne %struct.radix_mask* %209, null
  br i1 %210, label %211, label %279

211:                                              ; preds = %203
  br label %212

212:                                              ; preds = %273, %211
  %213 = load %struct.radix_mask*, %struct.radix_mask** %20, align 8
  %214 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @RNF_NORMAL, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %230

219:                                              ; preds = %212
  %220 = load i32, i32* %19, align 4
  %221 = load %struct.radix_mask*, %struct.radix_mask** %20, align 8
  %222 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp sle i32 %220, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %219
  %226 = load %struct.radix_mask*, %struct.radix_mask** %20, align 8
  %227 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %226, i32 0, i32 3
  %228 = load %struct.radix_node*, %struct.radix_node** %227, align 8
  store %struct.radix_node* %228, %struct.radix_node** %3, align 8
  br label %285

229:                                              ; preds = %219
  br label %272

230:                                              ; preds = %212
  %231 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %232 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = sext i32 %233 to i64
  %235 = load i32, i32* %16, align 4
  %236 = call i32 @min(i64 %234, i32 %235)
  store i32 %236, i32* %14, align 4
  %237 = load i32*, i32** %6, align 8
  %238 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %239 = load %struct.radix_mask*, %struct.radix_mask** %20, align 8
  %240 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = call %struct.radix_node* @rn_search_m(i32* %237, %struct.radix_node* %238, i64 %241)
  store %struct.radix_node* %242, %struct.radix_node** %8, align 8
  br label %243

243:                                              ; preds = %256, %230
  %244 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %245 = icmp ne %struct.radix_node* %244, null
  br i1 %245, label %246, label %254

246:                                              ; preds = %243
  %247 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %248 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.radix_mask*, %struct.radix_mask** %20, align 8
  %251 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %249, %252
  br label %254

254:                                              ; preds = %246, %243
  %255 = phi i1 [ false, %243 ], [ %253, %246 ]
  br i1 %255, label %256, label %260

256:                                              ; preds = %254
  %257 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %258 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %257, i32 0, i32 6
  %259 = load %struct.radix_node*, %struct.radix_node** %258, align 8
  store %struct.radix_node* %259, %struct.radix_node** %8, align 8
  br label %243

260:                                              ; preds = %254
  %261 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %262 = icmp ne %struct.radix_node* %261, null
  br i1 %262, label %263, label %271

263:                                              ; preds = %260
  %264 = load i32*, i32** %6, align 8
  %265 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %266 = load i32, i32* %14, align 4
  %267 = call i64 @rn_satisfies_leaf(i32* %264, %struct.radix_node* %265, i32 %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %263
  %270 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  store %struct.radix_node* %270, %struct.radix_node** %3, align 8
  br label %285

271:                                              ; preds = %263, %260
  br label %272

272:                                              ; preds = %271, %229
  br label %273

273:                                              ; preds = %272
  %274 = load %struct.radix_mask*, %struct.radix_mask** %20, align 8
  %275 = getelementptr inbounds %struct.radix_mask, %struct.radix_mask* %274, i32 0, i32 4
  %276 = load %struct.radix_mask*, %struct.radix_mask** %275, align 8
  store %struct.radix_mask* %276, %struct.radix_mask** %20, align 8
  %277 = icmp ne %struct.radix_mask* %276, null
  br i1 %277, label %212, label %278

278:                                              ; preds = %273
  br label %279

279:                                              ; preds = %278, %203
  br label %280

280:                                              ; preds = %279
  %281 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %282 = load %struct.radix_node*, %struct.radix_node** %13, align 8
  %283 = icmp ne %struct.radix_node* %281, %282
  br i1 %283, label %203, label %284

284:                                              ; preds = %280
  store %struct.radix_node* null, %struct.radix_node** %3, align 8
  br label %285

285:                                              ; preds = %284, %269, %225, %193, %184, %127, %117, %110
  %286 = load %struct.radix_node*, %struct.radix_node** %3, align 8
  ret %struct.radix_node* %286
}

declare dso_local i64 @rn_satisfies_leaf(i32*, %struct.radix_node*, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local %struct.radix_node* @rn_search_m(i32*, %struct.radix_node*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
