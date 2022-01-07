; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_parse_fields.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_parse_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i8*, i32, i8*, i8*, i32, i32, i8*, i32, i32, i64 }

@XO_ROLE_NEWLINE = common dso_local global i32 0, align 4
@XO_ROLE_TEXT = common dso_local global i32 0, align 4
@XO_ROLE_EBRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"missing closing '}}': '%s'\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"backslash at the end of string\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"missing content (':'): '%s'\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"missing closing '}': %s\00", align 1
@XFF_ARGUMENT = common dso_local global i32 0, align 4
@xo_default_format = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32, i8*)* @xo_parse_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xo_parse_fields(i32* %0, %struct.TYPE_5__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %15, align 8
  store i32 0, i32* %16, align 4
  %21 = load i8*, i8** %9, align 8
  store i8* %21, i8** %10, align 8
  br label %22

22:                                               ; preds = %407, %4
  %23 = load i8*, i8** %10, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ult i32 %28, %29
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i1 [ false, %22 ], [ %30, %27 ]
  br i1 %32, label %33, label %412

33:                                               ; preds = %31
  %34 = load i8*, i8** %10, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load i32, i32* @XO_ROLE_NEWLINE, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 10
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i32 1, i32* %46, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** %10, align 8
  br label %407

49:                                               ; preds = %33
  %50 = load i8*, i8** %10, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 123
  br i1 %53, label %54, label %94

54:                                               ; preds = %49
  %55 = load i8*, i8** %10, align 8
  store i8* %55, i8** %11, align 8
  br label %56

56:                                               ; preds = %72, %54
  %57 = load i8*, i8** %11, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load i8*, i8** %11, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 123
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %11, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 10
  br i1 %69, label %70, label %71

70:                                               ; preds = %65, %60
  br label %75

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71
  %73 = load i8*, i8** %11, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %11, align 8
  br label %56

75:                                               ; preds = %70, %56
  %76 = load i32, i32* @XO_ROLE_TEXT, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 10
  store i32 %76, i32* %78, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = trunc i64 %86 to i32
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** %11, align 8
  store i8* %93, i8** %10, align 8
  br label %407

94:                                               ; preds = %49
  %95 = load i8*, i8** %10, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 123
  br i1 %99, label %100, label %171

100:                                              ; preds = %94
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* @XO_ROLE_EBRACE, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 10
  store i32 %105, i32* %107, align 4
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 2
  store i8* %109, i8** %10, align 8
  %110 = load i8*, i8** %10, align 8
  store i8* %110, i8** %11, align 8
  br label %111

111:                                              ; preds = %128, %100
  %112 = load i8*, i8** %11, align 8
  %113 = load i8, i8* %112, align 1
  %114 = icmp ne i8 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %111
  %116 = load i8*, i8** %11, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 125
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load i8*, i8** %11, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 125
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %131

127:                                              ; preds = %120, %115
  br label %128

128:                                              ; preds = %127
  %129 = load i8*, i8** %11, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %11, align 8
  br label %111

131:                                              ; preds = %126, %111
  %132 = load i8*, i8** %11, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load i32*, i32** %6, align 8
  %138 = load i8*, i8** %9, align 8
  %139 = call i32 @xo_printable(i8* %138)
  %140 = call i32 (i32*, i8*, ...) @xo_failure(i32* %137, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %139)
  store i32 -1, i32* %5, align 4
  br label %423

141:                                              ; preds = %131
  %142 = load i8*, i8** %11, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = ptrtoint i8* %142 to i64
  %147 = ptrtoint i8* %145 to i64
  %148 = sub i64 %146, %147
  %149 = add nsw i64 %148, 1
  %150 = trunc i64 %149 to i32
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 8
  %153 = load i8*, i8** %11, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 125
  br i1 %156, label %157, label %166

157:                                              ; preds = %141
  %158 = load i8*, i8** %11, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 125
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = load i8*, i8** %11, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 2
  store i8* %165, i8** %11, align 8
  br label %166

166:                                              ; preds = %163, %157, %141
  %167 = load i8*, i8** %11, align 8
  store i8* %167, i8** %10, align 8
  %168 = load i8*, i8** %10, align 8
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 4
  store i8* %168, i8** %170, align 8
  br label %407

171:                                              ; preds = %94
  %172 = load i8*, i8** %10, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  store i8* %173, i8** %13, align 8
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  store i8* %173, i8** %175, align 8
  store i8* null, i8** %17, align 8
  store i32 0, i32* %18, align 4
  %176 = load i32*, i32** %6, align 8
  %177 = load i8*, i8** %9, align 8
  %178 = load i8*, i8** %13, align 8
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %180 = call i8* @xo_parse_roles(i32* %176, i8* %177, i8* %178, %struct.TYPE_5__* %179)
  store i8* %180, i8** %11, align 8
  %181 = load i8*, i8** %11, align 8
  %182 = icmp eq i8* %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %171
  store i32 -1, i32* %5, align 4
  br label %423

184:                                              ; preds = %171
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 11
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  store i32 1, i32* %16, align 4
  br label %190

190:                                              ; preds = %189, %184
  %191 = load i8*, i8** %11, align 8
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 58
  br i1 %194, label %195, label %251

195:                                              ; preds = %190
  %196 = load i8*, i8** %11, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %11, align 8
  store i8* %197, i8** %12, align 8
  br label %198

198:                                              ; preds = %231, %195
  %199 = load i8*, i8** %11, align 8
  %200 = load i8, i8* %199, align 1
  %201 = icmp ne i8 %200, 0
  br i1 %201, label %202, label %234

202:                                              ; preds = %198
  %203 = load i8*, i8** %11, align 8
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp eq i32 %205, 125
  br i1 %206, label %212, label %207

207:                                              ; preds = %202
  %208 = load i8*, i8** %11, align 8
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %210, 47
  br i1 %211, label %212, label %213

212:                                              ; preds = %207, %202
  br label %234

213:                                              ; preds = %207
  %214 = load i8*, i8** %11, align 8
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp eq i32 %216, 92
  br i1 %217, label %218, label %230

218:                                              ; preds = %213
  %219 = load i8*, i8** %11, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 1
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %218
  %225 = load i32*, i32** %6, align 8
  %226 = call i32 (i32*, i8*, ...) @xo_failure(i32* %225, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %423

227:                                              ; preds = %218
  %228 = load i8*, i8** %11, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 1
  store i8* %229, i8** %11, align 8
  br label %231

230:                                              ; preds = %213
  br label %231

231:                                              ; preds = %230, %227
  %232 = load i8*, i8** %11, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %11, align 8
  br label %198

234:                                              ; preds = %212, %198
  %235 = load i8*, i8** %12, align 8
  %236 = load i8*, i8** %11, align 8
  %237 = icmp ne i8* %235, %236
  br i1 %237, label %238, label %250

238:                                              ; preds = %234
  %239 = load i8*, i8** %11, align 8
  %240 = load i8*, i8** %12, align 8
  %241 = ptrtoint i8* %239 to i64
  %242 = ptrtoint i8* %240 to i64
  %243 = sub i64 %241, %242
  %244 = trunc i64 %243 to i32
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 3
  store i32 %244, i32* %246, align 8
  %247 = load i8*, i8** %12, align 8
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 2
  store i8* %247, i8** %249, align 8
  br label %250

250:                                              ; preds = %238, %234
  br label %256

251:                                              ; preds = %190
  %252 = load i32*, i32** %6, align 8
  %253 = load i8*, i8** %9, align 8
  %254 = call i32 @xo_printable(i8* %253)
  %255 = call i32 (i32*, i8*, ...) @xo_failure(i32* %252, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %254)
  store i32 -1, i32* %5, align 4
  br label %423

256:                                              ; preds = %250
  %257 = load i8*, i8** %11, align 8
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp eq i32 %259, 47
  br i1 %260, label %261, label %308

261:                                              ; preds = %256
  %262 = load i8*, i8** %11, align 8
  %263 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %263, i8** %11, align 8
  store i8* %263, i8** %12, align 8
  br label %264

264:                                              ; preds = %297, %261
  %265 = load i8*, i8** %11, align 8
  %266 = load i8, i8* %265, align 1
  %267 = icmp ne i8 %266, 0
  br i1 %267, label %268, label %300

268:                                              ; preds = %264
  %269 = load i8*, i8** %11, align 8
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp eq i32 %271, 125
  br i1 %272, label %278, label %273

273:                                              ; preds = %268
  %274 = load i8*, i8** %11, align 8
  %275 = load i8, i8* %274, align 1
  %276 = sext i8 %275 to i32
  %277 = icmp eq i32 %276, 47
  br i1 %277, label %278, label %279

278:                                              ; preds = %273, %268
  br label %300

279:                                              ; preds = %273
  %280 = load i8*, i8** %11, align 8
  %281 = load i8, i8* %280, align 1
  %282 = sext i8 %281 to i32
  %283 = icmp eq i32 %282, 92
  br i1 %283, label %284, label %296

284:                                              ; preds = %279
  %285 = load i8*, i8** %11, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 1
  %287 = load i8, i8* %286, align 1
  %288 = sext i8 %287 to i32
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %284
  %291 = load i32*, i32** %6, align 8
  %292 = call i32 (i32*, i8*, ...) @xo_failure(i32* %291, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %423

293:                                              ; preds = %284
  %294 = load i8*, i8** %11, align 8
  %295 = getelementptr inbounds i8, i8* %294, i64 1
  store i8* %295, i8** %11, align 8
  br label %297

296:                                              ; preds = %279
  br label %297

297:                                              ; preds = %296, %293
  %298 = load i8*, i8** %11, align 8
  %299 = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %299, i8** %11, align 8
  br label %264

300:                                              ; preds = %278, %264
  %301 = load i8*, i8** %11, align 8
  %302 = load i8*, i8** %12, align 8
  %303 = ptrtoint i8* %301 to i64
  %304 = ptrtoint i8* %302 to i64
  %305 = sub i64 %303, %304
  %306 = trunc i64 %305 to i32
  store i32 %306, i32* %18, align 4
  %307 = load i8*, i8** %12, align 8
  store i8* %307, i8** %17, align 8
  br label %308

308:                                              ; preds = %300, %256
  %309 = load i8*, i8** %11, align 8
  %310 = load i8, i8* %309, align 1
  %311 = sext i8 %310 to i32
  %312 = icmp eq i32 %311, 47
  br i1 %312, label %313, label %342

313:                                              ; preds = %308
  %314 = load i8*, i8** %11, align 8
  %315 = getelementptr inbounds i8, i8* %314, i32 1
  store i8* %315, i8** %11, align 8
  store i8* %315, i8** %12, align 8
  br label %316

316:                                              ; preds = %327, %313
  %317 = load i8*, i8** %11, align 8
  %318 = load i8, i8* %317, align 1
  %319 = icmp ne i8 %318, 0
  br i1 %319, label %320, label %330

320:                                              ; preds = %316
  %321 = load i8*, i8** %11, align 8
  %322 = load i8, i8* %321, align 1
  %323 = sext i8 %322 to i32
  %324 = icmp eq i32 %323, 125
  br i1 %324, label %325, label %326

325:                                              ; preds = %320
  br label %330

326:                                              ; preds = %320
  br label %327

327:                                              ; preds = %326
  %328 = load i8*, i8** %11, align 8
  %329 = getelementptr inbounds i8, i8* %328, i32 1
  store i8* %329, i8** %11, align 8
  br label %316

330:                                              ; preds = %325, %316
  %331 = load i8*, i8** %12, align 8
  %332 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 5
  store i8* %331, i8** %333, align 8
  %334 = load i8*, i8** %11, align 8
  %335 = load i8*, i8** %12, align 8
  %336 = ptrtoint i8* %334 to i64
  %337 = ptrtoint i8* %335 to i64
  %338 = sub i64 %336, %337
  %339 = trunc i64 %338 to i32
  %340 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %340, i32 0, i32 6
  store i32 %339, i32* %341, align 8
  br label %342

342:                                              ; preds = %330, %308
  %343 = load i8*, i8** %11, align 8
  %344 = load i8, i8* %343, align 1
  %345 = sext i8 %344 to i32
  %346 = icmp ne i32 %345, 125
  br i1 %346, label %347, label %352

347:                                              ; preds = %342
  %348 = load i32*, i32** %6, align 8
  %349 = load i8*, i8** %9, align 8
  %350 = call i32 @xo_printable(i8* %349)
  %351 = call i32 (i32*, i8*, ...) @xo_failure(i32* %348, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %350)
  store i32 -1, i32* %5, align 4
  br label %423

352:                                              ; preds = %342
  %353 = load i8*, i8** %11, align 8
  %354 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %355 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %354, i32 0, i32 0
  %356 = load i8*, i8** %355, align 8
  %357 = ptrtoint i8* %353 to i64
  %358 = ptrtoint i8* %356 to i64
  %359 = sub i64 %357, %358
  %360 = trunc i64 %359 to i32
  %361 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i32 0, i32 1
  store i32 %360, i32* %362, align 8
  %363 = load i8*, i8** %11, align 8
  %364 = getelementptr inbounds i8, i8* %363, i32 1
  store i8* %364, i8** %11, align 8
  %365 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 4
  store i8* %364, i8** %366, align 8
  %367 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %368 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 8
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %381, label %371

371:                                              ; preds = %352
  %372 = load i8*, i8** %17, align 8
  %373 = icmp ne i8* %372, null
  br i1 %373, label %381, label %374

374:                                              ; preds = %371
  %375 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i32 0, i32 7
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* @XFF_ARGUMENT, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %405

381:                                              ; preds = %374, %371, %352
  %382 = load i8*, i8** %17, align 8
  %383 = icmp ne i8* %382, null
  br i1 %383, label %384, label %391

384:                                              ; preds = %381
  %385 = load i8*, i8** %17, align 8
  %386 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %387 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %386, i32 0, i32 8
  store i8* %385, i8** %387, align 8
  %388 = load i32, i32* %18, align 4
  %389 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %390 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %389, i32 0, i32 9
  store i32 %388, i32* %390, align 8
  br label %404

391:                                              ; preds = %381
  %392 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %393 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %392, i32 0, i32 10
  %394 = load i32, i32* %393, align 4
  %395 = call i64 @xo_role_wants_default_format(i32 %394)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %403

397:                                              ; preds = %391
  %398 = load i8*, i8** @xo_default_format, align 8
  %399 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %400 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %399, i32 0, i32 8
  store i8* %398, i8** %400, align 8
  %401 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %402 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %401, i32 0, i32 9
  store i32 2, i32* %402, align 8
  br label %403

403:                                              ; preds = %397, %391
  br label %404

404:                                              ; preds = %403, %384
  br label %405

405:                                              ; preds = %404, %374
  %406 = load i8*, i8** %11, align 8
  store i8* %406, i8** %10, align 8
  br label %407

407:                                              ; preds = %405, %166, %75, %41
  %408 = load i32, i32* %14, align 4
  %409 = add i32 %408, 1
  store i32 %409, i32* %14, align 4
  %410 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %411 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %410, i32 1
  store %struct.TYPE_5__* %411, %struct.TYPE_5__** %15, align 8
  br label %22

412:                                              ; preds = %31
  store i32 0, i32* %19, align 4
  %413 = load i32, i32* %16, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %421

415:                                              ; preds = %412
  %416 = load i32*, i32** %6, align 8
  %417 = load i8*, i8** %9, align 8
  %418 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %419 = load i32, i32* %14, align 4
  %420 = call i32 @xo_parse_field_numbers(i32* %416, i8* %417, %struct.TYPE_5__* %418, i32 %419)
  store i32 %420, i32* %19, align 4
  br label %421

421:                                              ; preds = %415, %412
  %422 = load i32, i32* %19, align 4
  store i32 %422, i32* %5, align 4
  br label %423

423:                                              ; preds = %421, %347, %290, %251, %224, %183, %136
  %424 = load i32, i32* %5, align 4
  ret i32 %424
}

declare dso_local i32 @xo_failure(i32*, i8*, ...) #1

declare dso_local i32 @xo_printable(i8*) #1

declare dso_local i8* @xo_parse_roles(i32*, i8*, i8*, %struct.TYPE_5__*) #1

declare dso_local i64 @xo_role_wants_default_format(i32) #1

declare dso_local i32 @xo_parse_field_numbers(i32*, i8*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
