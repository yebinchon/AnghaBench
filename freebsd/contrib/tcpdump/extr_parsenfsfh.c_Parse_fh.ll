; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_parsenfsfh.c_Parse_fh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_parsenfsfh.c_Parse_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i8, i8 }

@.str = private unnamed_addr constant [7 x i8] c"Auspex\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"BSD 4.4\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OSF\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"IRIX4\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"IRIX5\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"SUNOS4\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"SUNOS5\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Ultrix\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"VMS\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"AIX32\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"HPUX9\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%.2X\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Parse_fh(i8* %0, i32 %1, %struct.TYPE_5__* %2, i32* %3, i8** %4, i8** %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i8** %5, i8*** %13, align 8
  store i32 %6, i32* %14, align 4
  %19 = load i8*, i8** %8, align 8
  store i8* %19, i8** %15, align 8
  store i32 129, i32* %17, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  store i32 129, i32* %17, align 4
  br label %230

23:                                               ; preds = %7
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %229

27:                                               ; preds = %23
  %28 = load i8*, i8** %15, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %106

33:                                               ; preds = %27
  %34 = load i8*, i8** %15, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %106

39:                                               ; preds = %33
  %40 = load i8*, i8** %15, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i8*, i8** %15, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 3
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 139, i32* %17, align 4
  br label %105

52:                                               ; preds = %45, %39
  %53 = load i8*, i8** %15, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 4
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %52
  %59 = load i8*, i8** %15, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 5
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load i8*, i8** %15, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 8
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %68, 12
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i8*, i8** %15, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 9
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 137, i32* %17, align 4
  br label %104

77:                                               ; preds = %70, %64, %58, %52
  %78 = load i8*, i8** %15, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 4
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %77
  %84 = load i8*, i8** %15, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 5
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %87, 8
  br i1 %88, label %89, label %102

89:                                               ; preds = %83
  %90 = load i8*, i8** %15, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 6
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load i8*, i8** %15, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 7
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i32 135, i32* %17, align 4
  br label %103

102:                                              ; preds = %95, %89, %83, %77
  store i32 132, i32* %17, align 4
  br label %103

103:                                              ; preds = %102, %101
  br label %104

104:                                              ; preds = %103, %76
  br label %105

105:                                              ; preds = %104, %51
  br label %228

106:                                              ; preds = %33, %27
  %107 = load i8*, i8** %15, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %157

112:                                              ; preds = %106
  %113 = load i8*, i8** %15, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 3
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %157

118:                                              ; preds = %112
  %119 = load i8*, i8** %15, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 6
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load i8*, i8** %15, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 7
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  store i32 138, i32* %17, align 4
  br label %156

131:                                              ; preds = %124, %118
  %132 = load i32, i32* %9, align 4
  %133 = icmp sge i32 %132, 6
  br i1 %133, label %134, label %147

134:                                              ; preds = %131
  %135 = load i8*, i8** %15, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 21
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %134
  %141 = load i8*, i8** %15, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 23
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  store i32 130, i32* %17, align 4
  br label %155

147:                                              ; preds = %140, %134, %131
  %148 = load i8*, i8** %15, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 9
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp eq i32 %151, 10
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  store i32 131, i32* %17, align 4
  br label %154

154:                                              ; preds = %153, %147
  br label %155

155:                                              ; preds = %154, %146
  br label %156

156:                                              ; preds = %155, %130
  br label %227

157:                                              ; preds = %112, %106
  %158 = load i8*, i8** %15, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 8
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp eq i32 %161, 12
  br i1 %162, label %163, label %170

163:                                              ; preds = %157
  %164 = load i8*, i8** %15, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 9
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  store i32 137, i32* %17, align 4
  br label %226

170:                                              ; preds = %163, %157
  %171 = load i8*, i8** %15, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 8
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %217

176:                                              ; preds = %170
  %177 = load i8*, i8** %15, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 9
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = icmp eq i32 %180, 10
  br i1 %181, label %182, label %217

182:                                              ; preds = %176
  %183 = load i8*, i8** %15, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 7
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %207

188:                                              ; preds = %182
  %189 = load i8*, i8** %15, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 6
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %207

194:                                              ; preds = %188
  %195 = load i8*, i8** %15, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 5
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %194
  %201 = load i8*, i8** %15, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 4
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %200
  store i32 136, i32* %17, align 4
  br label %216

207:                                              ; preds = %200, %194, %188, %182
  %208 = load i8*, i8** %15, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 7
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = icmp eq i32 %211, 2
  br i1 %212, label %213, label %214

213:                                              ; preds = %207
  store i32 131, i32* %17, align 4
  br label %215

214:                                              ; preds = %207
  store i32 131, i32* %17, align 4
  br label %215

215:                                              ; preds = %214, %213
  br label %216

216:                                              ; preds = %215, %206
  br label %225

217:                                              ; preds = %176, %170
  %218 = load i8*, i8** %15, align 8
  %219 = load i32, i32* %9, align 4
  %220 = call i64 @is_UCX(i8* %218, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  store i32 128, i32* %17, align 4
  br label %224

223:                                              ; preds = %217
  store i32 129, i32* %17, align 4
  br label %224

224:                                              ; preds = %223, %222
  br label %225

225:                                              ; preds = %224, %216
  br label %226

226:                                              ; preds = %225, %169
  br label %227

227:                                              ; preds = %226, %156
  br label %228

228:                                              ; preds = %227, %105
  br label %229

229:                                              ; preds = %228, %26
  br label %230

230:                                              ; preds = %229, %22
  %231 = load i32, i32* %17, align 4
  switch i32 %231, label %816 [
    i32 139, label %232
    i32 138, label %267
    i32 137, label %302
    i32 135, label %365
    i32 134, label %400
    i32 132, label %458
    i32 131, label %506
    i32 130, label %573
    i32 128, label %609
    i32 140, label %644
    i32 136, label %702
    i32 129, label %759
  ]

232:                                              ; preds = %230
  %233 = load i8*, i8** %15, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 7
  %235 = load i8, i8* %234, align 1
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  store i8 %235, i8* %238, align 8
  %239 = load i8*, i8** %15, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 6
  %241 = load i8, i8* %240, align 1
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 1
  store i8 %241, i8* %244, align 1
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 2
  store i8* null, i8** %246, align 8
  %247 = load i8*, i8** %15, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 12
  %249 = load i8, i8* %248, align 1
  %250 = load i8*, i8** %15, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 13
  %252 = load i8, i8* %251, align 1
  %253 = load i8*, i8** %15, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 14
  %255 = load i8, i8* %254, align 1
  %256 = load i8*, i8** %15, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 15
  %258 = load i8, i8* %257, align 1
  %259 = call i8* @make_uint32(i8 zeroext %249, i8 zeroext %252, i8 zeroext %255, i8 zeroext %258)
  %260 = ptrtoint i8* %259 to i32
  %261 = load i32*, i32** %11, align 8
  store i32 %260, i32* %261, align 4
  %262 = load i8**, i8*** %12, align 8
  %263 = icmp ne i8** %262, null
  br i1 %263, label %264, label %266

264:                                              ; preds = %232
  %265 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %265, align 8
  br label %266

266:                                              ; preds = %264, %232
  br label %816

267:                                              ; preds = %230
  %268 = load i8*, i8** %15, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 0
  %270 = load i8, i8* %269, align 1
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 0
  store i8 %270, i8* %273, align 8
  %274 = load i8*, i8** %15, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 1
  %276 = load i8, i8* %275, align 1
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 1
  store i8 %276, i8* %279, align 1
  %280 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 2
  store i8* null, i8** %281, align 8
  %282 = load i8*, i8** %15, align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 15
  %284 = load i8, i8* %283, align 1
  %285 = load i8*, i8** %15, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 14
  %287 = load i8, i8* %286, align 1
  %288 = load i8*, i8** %15, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 13
  %290 = load i8, i8* %289, align 1
  %291 = load i8*, i8** %15, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 12
  %293 = load i8, i8* %292, align 1
  %294 = call i8* @make_uint32(i8 zeroext %284, i8 zeroext %287, i8 zeroext %290, i8 zeroext %293)
  %295 = ptrtoint i8* %294 to i32
  %296 = load i32*, i32** %11, align 8
  store i32 %295, i32* %296, align 4
  %297 = load i8**, i8*** %12, align 8
  %298 = icmp ne i8** %297, null
  br i1 %298, label %299, label %301

299:                                              ; preds = %267
  %300 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %300, align 8
  br label %301

301:                                              ; preds = %299, %267
  br label %816

302:                                              ; preds = %230
  %303 = load i8*, i8** %15, align 8
  %304 = getelementptr inbounds i8, i8* %303, i64 7
  %305 = load i8, i8* %304, align 1
  %306 = load i8*, i8** %15, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 6
  %308 = load i8, i8* %307, align 1
  %309 = load i8*, i8** %15, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 5
  %311 = load i8, i8* %310, align 1
  %312 = load i8*, i8** %15, align 8
  %313 = getelementptr inbounds i8, i8* %312, i64 4
  %314 = load i8, i8* %313, align 1
  %315 = call i8* @make_uint32(i8 zeroext %305, i8 zeroext %308, i8 zeroext %311, i8 zeroext %314)
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 2
  store i8* %315, i8** %317, align 8
  %318 = load i8*, i8** %15, align 8
  %319 = getelementptr inbounds i8, i8* %318, i64 3
  %320 = load i8, i8* %319, align 1
  %321 = load i8*, i8** %15, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 2
  %323 = load i8, i8* %322, align 1
  %324 = load i8*, i8** %15, align 8
  %325 = getelementptr inbounds i8, i8* %324, i64 1
  %326 = load i8, i8* %325, align 1
  %327 = load i8*, i8** %15, align 8
  %328 = getelementptr inbounds i8, i8* %327, i64 0
  %329 = load i8, i8* %328, align 1
  %330 = call i8* @make_uint32(i8 zeroext %320, i8 zeroext %323, i8 zeroext %326, i8 zeroext %329)
  %331 = ptrtoint i8* %330 to i32
  store i32 %331, i32* %16, align 4
  %332 = load i32, i32* %16, align 4
  %333 = and i32 %332, 1048575
  %334 = trunc i32 %333 to i8
  %335 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 0
  store i8 %334, i8* %337, align 8
  %338 = load i32, i32* %16, align 4
  %339 = ashr i32 %338, 20
  %340 = and i32 %339, 4095
  %341 = trunc i32 %340 to i8
  %342 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 1
  store i8 %341, i8* %344, align 1
  %345 = load i8*, i8** %15, align 8
  %346 = getelementptr inbounds i8, i8* %345, i64 15
  %347 = load i8, i8* %346, align 1
  %348 = load i8*, i8** %15, align 8
  %349 = getelementptr inbounds i8, i8* %348, i64 14
  %350 = load i8, i8* %349, align 1
  %351 = load i8*, i8** %15, align 8
  %352 = getelementptr inbounds i8, i8* %351, i64 13
  %353 = load i8, i8* %352, align 1
  %354 = load i8*, i8** %15, align 8
  %355 = getelementptr inbounds i8, i8* %354, i64 12
  %356 = load i8, i8* %355, align 1
  %357 = call i8* @make_uint32(i8 zeroext %347, i8 zeroext %350, i8 zeroext %353, i8 zeroext %356)
  %358 = ptrtoint i8* %357 to i32
  %359 = load i32*, i32** %11, align 8
  store i32 %358, i32* %359, align 4
  %360 = load i8**, i8*** %12, align 8
  %361 = icmp ne i8** %360, null
  br i1 %361, label %362, label %364

362:                                              ; preds = %302
  %363 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %363, align 8
  br label %364

364:                                              ; preds = %362, %302
  br label %816

365:                                              ; preds = %230
  %366 = load i8*, i8** %15, align 8
  %367 = getelementptr inbounds i8, i8* %366, i64 3
  %368 = load i8, i8* %367, align 1
  %369 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %370 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 0
  store i8 %368, i8* %371, align 8
  %372 = load i8*, i8** %15, align 8
  %373 = getelementptr inbounds i8, i8* %372, i64 2
  %374 = load i8, i8* %373, align 1
  %375 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %376, i32 0, i32 1
  store i8 %374, i8* %377, align 1
  %378 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %378, i32 0, i32 2
  store i8* null, i8** %379, align 8
  %380 = load i8*, i8** %15, align 8
  %381 = getelementptr inbounds i8, i8* %380, i64 8
  %382 = load i8, i8* %381, align 1
  %383 = load i8*, i8** %15, align 8
  %384 = getelementptr inbounds i8, i8* %383, i64 9
  %385 = load i8, i8* %384, align 1
  %386 = load i8*, i8** %15, align 8
  %387 = getelementptr inbounds i8, i8* %386, i64 10
  %388 = load i8, i8* %387, align 1
  %389 = load i8*, i8** %15, align 8
  %390 = getelementptr inbounds i8, i8* %389, i64 11
  %391 = load i8, i8* %390, align 1
  %392 = call i8* @make_uint32(i8 zeroext %382, i8 zeroext %385, i8 zeroext %388, i8 zeroext %391)
  %393 = ptrtoint i8* %392 to i32
  %394 = load i32*, i32** %11, align 8
  store i32 %393, i32* %394, align 4
  %395 = load i8**, i8*** %12, align 8
  %396 = icmp ne i8** %395, null
  br i1 %396, label %397, label %399

397:                                              ; preds = %365
  %398 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %398, align 8
  br label %399

399:                                              ; preds = %397, %365
  br label %816

400:                                              ; preds = %230
  %401 = load i8*, i8** %15, align 8
  %402 = getelementptr inbounds i8, i8* %401, i64 2
  %403 = load i8, i8* %402, align 1
  %404 = load i8*, i8** %15, align 8
  %405 = getelementptr inbounds i8, i8* %404, i64 3
  %406 = load i8, i8* %405, align 1
  %407 = call i8* @make_uint16(i8 zeroext %403, i8 zeroext %406)
  %408 = ptrtoint i8* %407 to i8
  %409 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %410 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i32 0, i32 0
  store i8 %408, i8* %411, align 8
  %412 = load i8*, i8** %15, align 8
  %413 = getelementptr inbounds i8, i8* %412, i64 0
  %414 = load i8, i8* %413, align 1
  %415 = load i8*, i8** %15, align 8
  %416 = getelementptr inbounds i8, i8* %415, i64 1
  %417 = load i8, i8* %416, align 1
  %418 = call i8* @make_uint16(i8 zeroext %414, i8 zeroext %417)
  %419 = ptrtoint i8* %418 to i8
  %420 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %421 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %421, i32 0, i32 1
  store i8 %419, i8* %422, align 1
  %423 = load i8*, i8** %15, align 8
  %424 = getelementptr inbounds i8, i8* %423, i64 4
  %425 = load i8, i8* %424, align 1
  %426 = load i8*, i8** %15, align 8
  %427 = getelementptr inbounds i8, i8* %426, i64 5
  %428 = load i8, i8* %427, align 1
  %429 = load i8*, i8** %15, align 8
  %430 = getelementptr inbounds i8, i8* %429, i64 6
  %431 = load i8, i8* %430, align 1
  %432 = load i8*, i8** %15, align 8
  %433 = getelementptr inbounds i8, i8* %432, i64 7
  %434 = load i8, i8* %433, align 1
  %435 = call i8* @make_uint32(i8 zeroext %425, i8 zeroext %428, i8 zeroext %431, i8 zeroext %434)
  %436 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %437 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %436, i32 0, i32 2
  store i8* %435, i8** %437, align 8
  %438 = load i8*, i8** %15, align 8
  %439 = getelementptr inbounds i8, i8* %438, i64 12
  %440 = load i8, i8* %439, align 1
  %441 = load i8*, i8** %15, align 8
  %442 = getelementptr inbounds i8, i8* %441, i64 13
  %443 = load i8, i8* %442, align 1
  %444 = load i8*, i8** %15, align 8
  %445 = getelementptr inbounds i8, i8* %444, i64 14
  %446 = load i8, i8* %445, align 1
  %447 = load i8*, i8** %15, align 8
  %448 = getelementptr inbounds i8, i8* %447, i64 15
  %449 = load i8, i8* %448, align 1
  %450 = call i8* @make_uint32(i8 zeroext %440, i8 zeroext %443, i8 zeroext %446, i8 zeroext %449)
  %451 = ptrtoint i8* %450 to i32
  %452 = load i32*, i32** %11, align 8
  store i32 %451, i32* %452, align 4
  %453 = load i8**, i8*** %12, align 8
  %454 = icmp ne i8** %453, null
  br i1 %454, label %455, label %457

455:                                              ; preds = %400
  %456 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %456, align 8
  br label %457

457:                                              ; preds = %455, %400
  br label %816

458:                                              ; preds = %230
  %459 = load i8*, i8** %15, align 8
  %460 = getelementptr inbounds i8, i8* %459, i64 3
  %461 = load i8, i8* %460, align 1
  %462 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %463 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %462, i32 0, i32 1
  %464 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %463, i32 0, i32 0
  store i8 %461, i8* %464, align 8
  %465 = load i8*, i8** %15, align 8
  %466 = getelementptr inbounds i8, i8* %465, i64 2
  %467 = load i8, i8* %466, align 1
  %468 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %469 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %468, i32 0, i32 1
  %470 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %469, i32 0, i32 1
  store i8 %467, i8* %470, align 1
  %471 = load i8*, i8** %15, align 8
  %472 = getelementptr inbounds i8, i8* %471, i64 4
  %473 = load i8, i8* %472, align 1
  %474 = load i8*, i8** %15, align 8
  %475 = getelementptr inbounds i8, i8* %474, i64 5
  %476 = load i8, i8* %475, align 1
  %477 = load i8*, i8** %15, align 8
  %478 = getelementptr inbounds i8, i8* %477, i64 6
  %479 = load i8, i8* %478, align 1
  %480 = load i8*, i8** %15, align 8
  %481 = getelementptr inbounds i8, i8* %480, i64 7
  %482 = load i8, i8* %481, align 1
  %483 = call i8* @make_uint32(i8 zeroext %473, i8 zeroext %476, i8 zeroext %479, i8 zeroext %482)
  %484 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %485 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %484, i32 0, i32 2
  store i8* %483, i8** %485, align 8
  %486 = load i8*, i8** %15, align 8
  %487 = getelementptr inbounds i8, i8* %486, i64 12
  %488 = load i8, i8* %487, align 1
  %489 = load i8*, i8** %15, align 8
  %490 = getelementptr inbounds i8, i8* %489, i64 13
  %491 = load i8, i8* %490, align 1
  %492 = load i8*, i8** %15, align 8
  %493 = getelementptr inbounds i8, i8* %492, i64 14
  %494 = load i8, i8* %493, align 1
  %495 = load i8*, i8** %15, align 8
  %496 = getelementptr inbounds i8, i8* %495, i64 15
  %497 = load i8, i8* %496, align 1
  %498 = call i8* @make_uint32(i8 zeroext %488, i8 zeroext %491, i8 zeroext %494, i8 zeroext %497)
  %499 = ptrtoint i8* %498 to i32
  %500 = load i32*, i32** %11, align 8
  store i32 %499, i32* %500, align 4
  %501 = load i8**, i8*** %12, align 8
  %502 = icmp ne i8** %501, null
  br i1 %502, label %503, label %505

503:                                              ; preds = %458
  %504 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %504, align 8
  br label %505

505:                                              ; preds = %503, %458
  br label %816

506:                                              ; preds = %230
  %507 = load i8*, i8** %15, align 8
  %508 = getelementptr inbounds i8, i8* %507, i64 0
  %509 = load i8, i8* %508, align 1
  %510 = load i8*, i8** %15, align 8
  %511 = getelementptr inbounds i8, i8* %510, i64 1
  %512 = load i8, i8* %511, align 1
  %513 = call i8* @make_uint16(i8 zeroext %509, i8 zeroext %512)
  %514 = ptrtoint i8* %513 to i32
  store i32 %514, i32* %16, align 4
  %515 = load i32, i32* %16, align 4
  %516 = ashr i32 %515, 2
  %517 = and i32 %516, 16383
  %518 = trunc i32 %517 to i8
  %519 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %520 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %519, i32 0, i32 1
  %521 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %520, i32 0, i32 1
  store i8 %518, i8* %521, align 1
  %522 = load i8*, i8** %15, align 8
  %523 = getelementptr inbounds i8, i8* %522, i64 1
  %524 = load i8, i8* %523, align 1
  %525 = load i8*, i8** %15, align 8
  %526 = getelementptr inbounds i8, i8* %525, i64 2
  %527 = load i8, i8* %526, align 1
  %528 = load i8*, i8** %15, align 8
  %529 = getelementptr inbounds i8, i8* %528, i64 3
  %530 = load i8, i8* %529, align 1
  %531 = call i32 @make_uint24(i8 zeroext %524, i8 zeroext %527, i8 zeroext %530)
  store i32 %531, i32* %16, align 4
  %532 = load i32, i32* %16, align 4
  %533 = and i32 %532, 262143
  %534 = trunc i32 %533 to i8
  %535 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %536 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %535, i32 0, i32 1
  %537 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %536, i32 0, i32 0
  store i8 %534, i8* %537, align 8
  %538 = load i8*, i8** %15, align 8
  %539 = getelementptr inbounds i8, i8* %538, i64 4
  %540 = load i8, i8* %539, align 1
  %541 = load i8*, i8** %15, align 8
  %542 = getelementptr inbounds i8, i8* %541, i64 5
  %543 = load i8, i8* %542, align 1
  %544 = load i8*, i8** %15, align 8
  %545 = getelementptr inbounds i8, i8* %544, i64 6
  %546 = load i8, i8* %545, align 1
  %547 = load i8*, i8** %15, align 8
  %548 = getelementptr inbounds i8, i8* %547, i64 7
  %549 = load i8, i8* %548, align 1
  %550 = call i8* @make_uint32(i8 zeroext %540, i8 zeroext %543, i8 zeroext %546, i8 zeroext %549)
  %551 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %552 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %551, i32 0, i32 2
  store i8* %550, i8** %552, align 8
  %553 = load i8*, i8** %15, align 8
  %554 = getelementptr inbounds i8, i8* %553, i64 12
  %555 = load i8, i8* %554, align 1
  %556 = load i8*, i8** %15, align 8
  %557 = getelementptr inbounds i8, i8* %556, i64 13
  %558 = load i8, i8* %557, align 1
  %559 = load i8*, i8** %15, align 8
  %560 = getelementptr inbounds i8, i8* %559, i64 14
  %561 = load i8, i8* %560, align 1
  %562 = load i8*, i8** %15, align 8
  %563 = getelementptr inbounds i8, i8* %562, i64 15
  %564 = load i8, i8* %563, align 1
  %565 = call i8* @make_uint32(i8 zeroext %555, i8 zeroext %558, i8 zeroext %561, i8 zeroext %564)
  %566 = ptrtoint i8* %565 to i32
  %567 = load i32*, i32** %11, align 8
  store i32 %566, i32* %567, align 4
  %568 = load i8**, i8*** %12, align 8
  %569 = icmp ne i8** %568, null
  br i1 %569, label %570, label %572

570:                                              ; preds = %506
  %571 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %571, align 8
  br label %572

572:                                              ; preds = %570, %506
  br label %816

573:                                              ; preds = %230
  %574 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %575 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %574, i32 0, i32 2
  store i8* null, i8** %575, align 8
  %576 = load i8*, i8** %15, align 8
  %577 = getelementptr inbounds i8, i8* %576, i64 0
  %578 = load i8, i8* %577, align 1
  %579 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %580 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %579, i32 0, i32 1
  %581 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %580, i32 0, i32 0
  store i8 %578, i8* %581, align 8
  %582 = load i8*, i8** %15, align 8
  %583 = getelementptr inbounds i8, i8* %582, i64 1
  %584 = load i8, i8* %583, align 1
  %585 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %586 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %585, i32 0, i32 1
  %587 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %586, i32 0, i32 1
  store i8 %584, i8* %587, align 1
  %588 = load i8*, i8** %15, align 8
  %589 = getelementptr inbounds i8, i8* %588, i64 7
  %590 = load i8, i8* %589, align 1
  %591 = load i8*, i8** %15, align 8
  %592 = getelementptr inbounds i8, i8* %591, i64 6
  %593 = load i8, i8* %592, align 1
  %594 = load i8*, i8** %15, align 8
  %595 = getelementptr inbounds i8, i8* %594, i64 5
  %596 = load i8, i8* %595, align 1
  %597 = load i8*, i8** %15, align 8
  %598 = getelementptr inbounds i8, i8* %597, i64 4
  %599 = load i8, i8* %598, align 1
  %600 = call i8* @make_uint32(i8 zeroext %590, i8 zeroext %593, i8 zeroext %596, i8 zeroext %599)
  %601 = ptrtoint i8* %600 to i32
  store i32 %601, i32* %16, align 4
  %602 = load i32, i32* %16, align 4
  %603 = load i32*, i32** %11, align 8
  store i32 %602, i32* %603, align 4
  %604 = load i8**, i8*** %12, align 8
  %605 = icmp ne i8** %604, null
  br i1 %605, label %606, label %608

606:                                              ; preds = %573
  %607 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %607, align 8
  br label %608

608:                                              ; preds = %606, %573
  br label %816

609:                                              ; preds = %230
  %610 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %611 = bitcast %struct.TYPE_5__* %610 to i8*
  %612 = call i32 @memset(i8* %611, i32 0, i32 24)
  %613 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %614 = bitcast %struct.TYPE_5__* %613 to i8*
  %615 = load i8*, i8** %8, align 8
  %616 = call i32 @memcpy(i8* %614, i8* %615, i32 14)
  %617 = load i8*, i8** %15, align 8
  %618 = getelementptr inbounds i8, i8* %617, i64 26
  %619 = load i8, i8* %618, align 1
  %620 = load i8*, i8** %15, align 8
  %621 = getelementptr inbounds i8, i8* %620, i64 27
  %622 = load i8, i8* %621, align 1
  %623 = load i8*, i8** %15, align 8
  %624 = getelementptr inbounds i8, i8* %623, i64 23
  %625 = load i8, i8* %624, align 1
  %626 = load i8*, i8** %15, align 8
  %627 = getelementptr inbounds i8, i8* %626, i64 22
  %628 = load i8, i8* %627, align 1
  %629 = call i8* @make_uint32(i8 zeroext %619, i8 zeroext %622, i8 zeroext %625, i8 zeroext %628)
  %630 = ptrtoint i8* %629 to i32
  %631 = load i32*, i32** %11, align 8
  store i32 %630, i32* %631, align 4
  %632 = load i8**, i8*** %13, align 8
  %633 = icmp ne i8** %632, null
  br i1 %633, label %634, label %638

634:                                              ; preds = %609
  %635 = load i8*, i8** %15, align 8
  %636 = getelementptr inbounds i8, i8* %635, i64 1
  %637 = load i8**, i8*** %13, align 8
  store i8* %636, i8** %637, align 8
  br label %638

638:                                              ; preds = %634, %609
  %639 = load i8**, i8*** %12, align 8
  %640 = icmp ne i8** %639, null
  br i1 %640, label %641, label %643

641:                                              ; preds = %638
  %642 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %642, align 8
  br label %643

643:                                              ; preds = %641, %638
  br label %816

644:                                              ; preds = %230
  %645 = load i8*, i8** %15, align 8
  %646 = getelementptr inbounds i8, i8* %645, i64 2
  %647 = load i8, i8* %646, align 1
  %648 = load i8*, i8** %15, align 8
  %649 = getelementptr inbounds i8, i8* %648, i64 3
  %650 = load i8, i8* %649, align 1
  %651 = call i8* @make_uint16(i8 zeroext %647, i8 zeroext %650)
  %652 = ptrtoint i8* %651 to i8
  %653 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %654 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %653, i32 0, i32 1
  %655 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %654, i32 0, i32 0
  store i8 %652, i8* %655, align 8
  %656 = load i8*, i8** %15, align 8
  %657 = getelementptr inbounds i8, i8* %656, i64 0
  %658 = load i8, i8* %657, align 1
  %659 = load i8*, i8** %15, align 8
  %660 = getelementptr inbounds i8, i8* %659, i64 1
  %661 = load i8, i8* %660, align 1
  %662 = call i8* @make_uint16(i8 zeroext %658, i8 zeroext %661)
  %663 = ptrtoint i8* %662 to i8
  %664 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %665 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %664, i32 0, i32 1
  %666 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %665, i32 0, i32 1
  store i8 %663, i8* %666, align 1
  %667 = load i8*, i8** %15, align 8
  %668 = getelementptr inbounds i8, i8* %667, i64 4
  %669 = load i8, i8* %668, align 1
  %670 = load i8*, i8** %15, align 8
  %671 = getelementptr inbounds i8, i8* %670, i64 5
  %672 = load i8, i8* %671, align 1
  %673 = load i8*, i8** %15, align 8
  %674 = getelementptr inbounds i8, i8* %673, i64 6
  %675 = load i8, i8* %674, align 1
  %676 = load i8*, i8** %15, align 8
  %677 = getelementptr inbounds i8, i8* %676, i64 7
  %678 = load i8, i8* %677, align 1
  %679 = call i8* @make_uint32(i8 zeroext %669, i8 zeroext %672, i8 zeroext %675, i8 zeroext %678)
  %680 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %681 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %680, i32 0, i32 2
  store i8* %679, i8** %681, align 8
  %682 = load i8*, i8** %15, align 8
  %683 = getelementptr inbounds i8, i8* %682, i64 12
  %684 = load i8, i8* %683, align 1
  %685 = load i8*, i8** %15, align 8
  %686 = getelementptr inbounds i8, i8* %685, i64 13
  %687 = load i8, i8* %686, align 1
  %688 = load i8*, i8** %15, align 8
  %689 = getelementptr inbounds i8, i8* %688, i64 14
  %690 = load i8, i8* %689, align 1
  %691 = load i8*, i8** %15, align 8
  %692 = getelementptr inbounds i8, i8* %691, i64 15
  %693 = load i8, i8* %692, align 1
  %694 = call i8* @make_uint32(i8 zeroext %684, i8 zeroext %687, i8 zeroext %690, i8 zeroext %693)
  %695 = ptrtoint i8* %694 to i32
  %696 = load i32*, i32** %11, align 8
  store i32 %695, i32* %696, align 4
  %697 = load i8**, i8*** %12, align 8
  %698 = icmp ne i8** %697, null
  br i1 %698, label %699, label %701

699:                                              ; preds = %644
  %700 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %700, align 8
  br label %701

701:                                              ; preds = %699, %644
  br label %816

702:                                              ; preds = %230
  %703 = load i8*, i8** %15, align 8
  %704 = getelementptr inbounds i8, i8* %703, i64 0
  %705 = load i8, i8* %704, align 1
  %706 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %707 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %706, i32 0, i32 1
  %708 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %707, i32 0, i32 1
  store i8 %705, i8* %708, align 1
  %709 = load i8*, i8** %15, align 8
  %710 = getelementptr inbounds i8, i8* %709, i64 1
  %711 = load i8, i8* %710, align 1
  %712 = load i8*, i8** %15, align 8
  %713 = getelementptr inbounds i8, i8* %712, i64 2
  %714 = load i8, i8* %713, align 1
  %715 = load i8*, i8** %15, align 8
  %716 = getelementptr inbounds i8, i8* %715, i64 3
  %717 = load i8, i8* %716, align 1
  %718 = call i32 @make_uint24(i8 zeroext %711, i8 zeroext %714, i8 zeroext %717)
  store i32 %718, i32* %16, align 4
  %719 = load i32, i32* %16, align 4
  %720 = trunc i32 %719 to i8
  %721 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %722 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %721, i32 0, i32 1
  %723 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %722, i32 0, i32 0
  store i8 %720, i8* %723, align 8
  %724 = load i8*, i8** %15, align 8
  %725 = getelementptr inbounds i8, i8* %724, i64 4
  %726 = load i8, i8* %725, align 1
  %727 = load i8*, i8** %15, align 8
  %728 = getelementptr inbounds i8, i8* %727, i64 5
  %729 = load i8, i8* %728, align 1
  %730 = load i8*, i8** %15, align 8
  %731 = getelementptr inbounds i8, i8* %730, i64 6
  %732 = load i8, i8* %731, align 1
  %733 = load i8*, i8** %15, align 8
  %734 = getelementptr inbounds i8, i8* %733, i64 7
  %735 = load i8, i8* %734, align 1
  %736 = call i8* @make_uint32(i8 zeroext %726, i8 zeroext %729, i8 zeroext %732, i8 zeroext %735)
  %737 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %738 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %737, i32 0, i32 2
  store i8* %736, i8** %738, align 8
  %739 = load i8*, i8** %15, align 8
  %740 = getelementptr inbounds i8, i8* %739, i64 12
  %741 = load i8, i8* %740, align 1
  %742 = load i8*, i8** %15, align 8
  %743 = getelementptr inbounds i8, i8* %742, i64 13
  %744 = load i8, i8* %743, align 1
  %745 = load i8*, i8** %15, align 8
  %746 = getelementptr inbounds i8, i8* %745, i64 14
  %747 = load i8, i8* %746, align 1
  %748 = load i8*, i8** %15, align 8
  %749 = getelementptr inbounds i8, i8* %748, i64 15
  %750 = load i8, i8* %749, align 1
  %751 = call i8* @make_uint32(i8 zeroext %741, i8 zeroext %744, i8 zeroext %747, i8 zeroext %750)
  %752 = ptrtoint i8* %751 to i32
  %753 = load i32*, i32** %11, align 8
  store i32 %752, i32* %753, align 4
  %754 = load i8**, i8*** %12, align 8
  %755 = icmp ne i8** %754, null
  br i1 %755, label %756, label %758

756:                                              ; preds = %702
  %757 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %757, align 8
  br label %758

758:                                              ; preds = %756, %702
  br label %816

759:                                              ; preds = %230
  store i32 0, i32* %18, align 4
  br label %760

760:                                              ; preds = %786, %759
  %761 = load i32, i32* %18, align 4
  %762 = load i32, i32* %9, align 4
  %763 = mul nsw i32 %762, 4
  %764 = icmp slt i32 %761, %763
  br i1 %764, label %765, label %770

765:                                              ; preds = %760
  %766 = load i32, i32* %18, align 4
  %767 = mul nsw i32 %766, 2
  %768 = sext i32 %767 to i64
  %769 = icmp ult i64 %768, 7
  br label %770

770:                                              ; preds = %765, %760
  %771 = phi i1 [ false, %760 ], [ %769, %765 ]
  br i1 %771, label %772, label %789

772:                                              ; preds = %770
  %773 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %774 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %773, i32 0, i32 0
  %775 = load i8*, i8** %774, align 8
  %776 = load i32, i32* %18, align 4
  %777 = mul nsw i32 %776, 2
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds i8, i8* %775, i64 %778
  %780 = load i8*, i8** %15, align 8
  %781 = load i32, i32* %18, align 4
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds i8, i8* %780, i64 %782
  %784 = load i8, i8* %783, align 1
  %785 = call i32 @snprintf(i8* %779, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8 zeroext %784)
  br label %786

786:                                              ; preds = %772
  %787 = load i32, i32* %18, align 4
  %788 = add nsw i32 %787, 1
  store i32 %788, i32* %18, align 4
  br label %760

789:                                              ; preds = %770
  %790 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %791 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %790, i32 0, i32 0
  %792 = load i8*, i8** %791, align 8
  %793 = load i32, i32* %18, align 4
  %794 = mul nsw i32 %793, 2
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds i8, i8* %792, i64 %795
  store i8 0, i8* %796, align 1
  %797 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %798 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %797, i32 0, i32 2
  store i8* null, i8** %798, align 8
  %799 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %800 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %799, i32 0, i32 1
  %801 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %800, i32 0, i32 0
  store i8 1, i8* %801, align 8
  %802 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %803 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %802, i32 0, i32 1
  %804 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %803, i32 0, i32 1
  store i8 1, i8* %804, align 1
  %805 = load i32*, i32** %11, align 8
  store i32 1, i32* %805, align 4
  %806 = load i8**, i8*** %13, align 8
  %807 = icmp ne i8** %806, null
  br i1 %807, label %808, label %810

808:                                              ; preds = %789
  %809 = load i8**, i8*** %13, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %809, align 8
  br label %810

810:                                              ; preds = %808, %789
  %811 = load i8**, i8*** %12, align 8
  %812 = icmp ne i8** %811, null
  br i1 %812, label %813, label %815

813:                                              ; preds = %810
  %814 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %814, align 8
  br label %815

815:                                              ; preds = %813, %810
  br label %816

816:                                              ; preds = %230, %815, %758, %701, %643, %608, %572, %505, %457, %399, %364, %301, %266
  ret void
}

declare dso_local i64 @is_UCX(i8*, i32) #1

declare dso_local i8* @make_uint32(i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i8* @make_uint16(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @make_uint24(i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
