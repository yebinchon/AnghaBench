; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_fc_col.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_fc_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i8*, i32 }

@SC_TINPUT_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@G_INTERRUPTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CHK_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, %struct.TYPE_17__**)* @txt_fc_col to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txt_fc_col(%struct.TYPE_16__* %0, i32 %1, %struct.TYPE_17__** %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__**, align 8
  %7 = alloca %struct.TYPE_17__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_17__** %2, %struct.TYPE_17__*** %6, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %9, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %28, i64 0
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %33, i64 0
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  %39 = load i8*, i8** %21, align 8
  %40 = load i64, i64* %23, align 8
  %41 = call i32 @INT2CHAR(%struct.TYPE_16__* %27, i8* %32, i32 %38, i8* %39, i64 %40)
  %42 = load i8*, i8** %21, align 8
  %43 = call i8* @strrchr(i8* %42, i8 signext 47)
  store i8* %43, i8** %22, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %3
  store i64 0, i64* %16, align 8
  br label %91

46:                                               ; preds = %3
  %47 = load i8*, i8** %22, align 8
  %48 = load i8*, i8** %21, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %16, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %18, align 4
  %55 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %55, i64 1
  store %struct.TYPE_17__** %56, %struct.TYPE_17__*** %7, align 8
  br label %57

57:                                               ; preds = %85, %46
  %58 = load i32, i32* %18, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %57
  %61 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %61, i64 0
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %16, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %83, label %69

69:                                               ; preds = %60
  %70 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %70, i64 0
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %75, i64 0
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i64, i64* %16, align 8
  %81 = call i64 @MEMCMP(i8* %74, i8* %79, i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %69, %60
  store i64 0, i64* %16, align 8
  br label %90

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %18, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %18, align 4
  %88 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %88, i32 1
  store %struct.TYPE_17__** %89, %struct.TYPE_17__*** %7, align 8
  br label %57

90:                                               ; preds = %83, %57
  br label %91

91:                                               ; preds = %90, %45
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %18, align 4
  %93 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  store %struct.TYPE_17__** %93, %struct.TYPE_17__*** %7, align 8
  store i64 0, i64* %13, align 8
  br label %94

94:                                               ; preds = %127, %91
  %95 = load i32, i32* %18, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %132

97:                                               ; preds = %94
  store i64 0, i64* %12, align 8
  %98 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %98, i64 0
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i64, i64* %16, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %8, align 8
  br label %105

105:                                              ; preds = %117, %97
  %106 = load i8*, i8** %8, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %105
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = load i8, i8* %112, align 1
  %114 = call i64 @KEY_COL(%struct.TYPE_16__* %111, i8 signext %113)
  %115 = load i64, i64* %12, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %12, align 8
  br label %117

117:                                              ; preds = %110
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %8, align 8
  br label %105

120:                                              ; preds = %105
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* %13, align 8
  %123 = icmp ugt i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i64, i64* %12, align 8
  store i64 %125, i64* %13, align 8
  br label %126

126:                                              ; preds = %124, %120
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %18, align 4
  %130 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %130, i32 1
  store %struct.TYPE_17__** %131, %struct.TYPE_17__*** %7, align 8
  br label %94

132:                                              ; preds = %94
  %133 = load i64, i64* %13, align 8
  %134 = call i64 @COL_OFF(i64 %133, i32 6)
  %135 = load i64, i64* %13, align 8
  %136 = add i64 %135, %134
  store i64 %136, i64* %13, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %138 = load i32, i32* @SC_TINPUT_INFO, align 4
  %139 = call i64 @F_ISSET(%struct.TYPE_16__* %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %132
  store i32 1, i32* %20, align 4
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %143 = load i32, i32* @SC_TINPUT_INFO, align 4
  %144 = call i32 @F_CLR(%struct.TYPE_16__* %142, i32 %143)
  br label %146

145:                                              ; preds = %132
  store i32 0, i32* %20, align 4
  br label %146

146:                                              ; preds = %145, %141
  %147 = load i64, i64* %13, align 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp uge i64 %147, %150
  br i1 %151, label %152, label %211

152:                                              ; preds = %146
  %153 = load i32, i32* %5, align 4
  store i32 %153, i32* %18, align 4
  %154 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  store %struct.TYPE_17__** %154, %struct.TYPE_17__*** %7, align 8
  br label %155

155:                                              ; preds = %199, %152
  %156 = load i32, i32* %18, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %204

158:                                              ; preds = %155
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %160 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %160, i64 0
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = load i64, i64* %16, align 8
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  %167 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %167, i64 0
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* %16, align 8
  %175 = sub i64 %173, %174
  %176 = trunc i64 %175 to i32
  %177 = load i8*, i8** %21, align 8
  %178 = load i64, i64* %23, align 8
  %179 = call i32 @INT2CHAR(%struct.TYPE_16__* %159, i8* %166, i32 %176, i8* %177, i64 %178)
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %181 = load i8*, i8** %21, align 8
  %182 = call i8* @msg_print(%struct.TYPE_16__* %180, i8* %181, i32* %19)
  store i8* %182, i8** %22, align 8
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %184 = load i8*, i8** %22, align 8
  %185 = call i64 (%struct.TYPE_16__*, i8*, ...) @ex_printf(%struct.TYPE_16__* %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %184)
  %186 = load i32, i32* %19, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %158
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %190 = load i8*, i8** %22, align 8
  %191 = call i32 @FREE_SPACE(%struct.TYPE_16__* %189, i8* %190, i32 0)
  br label %192

192:                                              ; preds = %188, %158
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %194 = load i32, i32* @G_INTERRUPTED, align 4
  %195 = call i64 @F_ISSET(%struct.TYPE_16__* %193, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  br label %204

198:                                              ; preds = %192
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %18, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %18, align 4
  %202 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %202, i32 1
  store %struct.TYPE_17__** %203, %struct.TYPE_17__*** %7, align 8
  br label %155

204:                                              ; preds = %197, %155
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %206 = load i32, i32* @G_INTERRUPTED, align 4
  %207 = call i64 @F_ISSET(%struct.TYPE_16__* %205, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  br label %339

210:                                              ; preds = %204
  br label %335

211:                                              ; preds = %146
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = sub i64 %214, 1
  %216 = load i64, i64* %13, align 8
  %217 = udiv i64 %215, %216
  store i64 %217, i64* %15, align 8
  %218 = load i32, i32* %5, align 4
  %219 = sext i32 %218 to i64
  %220 = load i64, i64* %15, align 8
  %221 = icmp ugt i64 %219, %220
  br i1 %221, label %222, label %236

222:                                              ; preds = %211
  %223 = load i32, i32* %5, align 4
  %224 = sext i32 %223 to i64
  %225 = load i64, i64* %15, align 8
  %226 = udiv i64 %224, %225
  store i64 %226, i64* %14, align 8
  %227 = load i32, i32* %5, align 4
  %228 = sext i32 %227 to i64
  %229 = load i64, i64* %15, align 8
  %230 = urem i64 %228, %229
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %222
  %233 = load i64, i64* %14, align 8
  %234 = add i64 %233, 1
  store i64 %234, i64* %14, align 8
  br label %235

235:                                              ; preds = %232, %222
  br label %237

236:                                              ; preds = %211
  store i64 1, i64* %14, align 8
  br label %237

237:                                              ; preds = %236, %235
  store i64 0, i64* %17, align 8
  br label %238

238:                                              ; preds = %323, %237
  %239 = load i64, i64* %17, align 8
  %240 = load i64, i64* %14, align 8
  %241 = icmp ult i64 %239, %240
  br i1 %241, label %242, label %326

242:                                              ; preds = %238
  %243 = load i64, i64* %17, align 8
  store i64 %243, i64* %10, align 8
  store i64 0, i64* %12, align 8
  br label %244

244:                                              ; preds = %311, %242
  %245 = load i64, i64* %12, align 8
  %246 = load i64, i64* %15, align 8
  %247 = icmp ult i64 %245, %246
  br i1 %247, label %248, label %314

248:                                              ; preds = %244
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %250 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %251 = load i64, i64* %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %250, i64 %251
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8
  %256 = load i64, i64* %16, align 8
  %257 = getelementptr inbounds i8, i8* %255, i64 %256
  %258 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %259 = load i64, i64* %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %258, i64 %259
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = load i64, i64* %16, align 8
  %267 = sub i64 %265, %266
  %268 = trunc i64 %267 to i32
  %269 = load i8*, i8** %21, align 8
  %270 = load i64, i64* %23, align 8
  %271 = call i32 @INT2CHAR(%struct.TYPE_16__* %249, i8* %257, i32 %268, i8* %269, i64 %270)
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %273 = load i8*, i8** %21, align 8
  %274 = call i8* @msg_print(%struct.TYPE_16__* %272, i8* %273, i32* %19)
  store i8* %274, i8** %22, align 8
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %276 = load i8*, i8** %22, align 8
  %277 = call i64 (%struct.TYPE_16__*, i8*, ...) @ex_printf(%struct.TYPE_16__* %275, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %276)
  store i64 %277, i64* %11, align 8
  %278 = load i32, i32* %19, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %248
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %282 = load i8*, i8** %22, align 8
  %283 = call i32 @FREE_SPACE(%struct.TYPE_16__* %281, i8* %282, i32 0)
  br label %284

284:                                              ; preds = %280, %248
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %286 = load i32, i32* @G_INTERRUPTED, align 4
  %287 = call i64 @F_ISSET(%struct.TYPE_16__* %285, i32 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %284
  br label %339

290:                                              ; preds = %284
  %291 = load i64, i64* %14, align 8
  %292 = load i64, i64* %10, align 8
  %293 = add i64 %292, %291
  store i64 %293, i64* %10, align 8
  %294 = load i32, i32* %5, align 4
  %295 = sext i32 %294 to i64
  %296 = icmp uge i64 %293, %295
  br i1 %296, label %297, label %298

297:                                              ; preds = %290
  br label %314

298:                                              ; preds = %290
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %300 = load i64, i64* %13, align 8
  %301 = load i64, i64* %11, align 8
  %302 = sub i64 %300, %301
  %303 = trunc i64 %302 to i32
  %304 = call i64 (%struct.TYPE_16__*, i8*, ...) @ex_printf(%struct.TYPE_16__* %299, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %303, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %306 = load i32, i32* @G_INTERRUPTED, align 4
  %307 = call i64 @F_ISSET(%struct.TYPE_16__* %305, i32 %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %298
  br label %339

310:                                              ; preds = %298
  br label %311

311:                                              ; preds = %310
  %312 = load i64, i64* %12, align 8
  %313 = add i64 %312, 1
  store i64 %313, i64* %12, align 8
  br label %244

314:                                              ; preds = %297, %244
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %316 = call i32 @ex_puts(%struct.TYPE_16__* %315, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %318 = load i32, i32* @G_INTERRUPTED, align 4
  %319 = call i64 @F_ISSET(%struct.TYPE_16__* %317, i32 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %314
  br label %339

322:                                              ; preds = %314
  br label %323

323:                                              ; preds = %322
  %324 = load i64, i64* %17, align 8
  %325 = add i64 %324, 1
  store i64 %325, i64* %17, align 8
  br label %238

326:                                              ; preds = %238
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %328 = call i32 @ex_puts(%struct.TYPE_16__* %327, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %330 = load i32, i32* @G_INTERRUPTED, align 4
  %331 = call i64 @F_ISSET(%struct.TYPE_16__* %329, i32 %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %326
  br label %339

334:                                              ; preds = %326
  br label %335

335:                                              ; preds = %334, %210
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %337 = call i32 @ex_fflush(%struct.TYPE_16__* %336)
  br i1 false, label %338, label %343

338:                                              ; preds = %335
  br label %339

339:                                              ; preds = %338, %333, %321, %309, %289, %209
  %340 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %341 = load i32, i32* @G_INTERRUPTED, align 4
  %342 = call i32 @F_CLR(%struct.TYPE_16__* %340, i32 %341)
  br label %343

343:                                              ; preds = %339, %335
  %344 = load i32, i32* %20, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %343
  %347 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %348 = load i32, i32* @SC_TINPUT_INFO, align 4
  %349 = call i32 @F_SET(%struct.TYPE_16__* %347, i32 %348)
  br label %350

350:                                              ; preds = %346, %343
  ret i32 0
}

declare dso_local i32 @INT2CHAR(%struct.TYPE_16__*, i8*, i32, i8*, i64) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @MEMCMP(i8*, i8*, i64) #1

declare dso_local i64 @KEY_COL(%struct.TYPE_16__*, i8 signext) #1

declare dso_local i64 @COL_OFF(i64, i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @F_CLR(%struct.TYPE_16__*, i32) #1

declare dso_local i8* @msg_print(%struct.TYPE_16__*, i8*, i32*) #1

declare dso_local i64 @ex_printf(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32 @FREE_SPACE(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @ex_puts(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @ex_fflush(%struct.TYPE_16__*) #1

declare dso_local i32 @F_SET(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
