; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_join.c_ex_join.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_join.c_ex_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, i32* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_19__, %struct.TYPE_18__, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 }

@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"131|No following lines to join\00", align 1
@E_ADDR_DEF = common dso_local global i32 0, align 4
@E_C_FORCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c".?!\00", align 1
@L_JOINED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_join(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store i32 0, i32* %12, align 4
  store i8* null, i8** %16, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %20 = call i32 @NEEDFILE(%struct.TYPE_20__* %18, %struct.TYPE_21__* %19)
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add nsw i64 %30, 1
  %32 = call i32 @db_exist(%struct.TYPE_20__* %29, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %2
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %36 = load i32, i32* @M_ERR, align 4
  %37 = call i32 @msgq(%struct.TYPE_20__* %35, i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %301

38:                                               ; preds = %2
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @GET_SPACE_RETW(%struct.TYPE_20__* %39, i8* %40, i64 %41, i32 256)
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %44 = load i32, i32* @E_ADDR_DEF, align 4
  %45 = call i64 @F_ISSET(%struct.TYPE_21__* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %38
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %58

52:                                               ; preds = %47, %38
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  br label %58

58:                                               ; preds = %52, %47
  store i64 0, i64* %11, align 8
  store i64 0, i64* %9, align 8
  store i32 1, i32* %14, align 4
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %6, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %7, align 8
  br label %67

67:                                               ; preds = %224, %58
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp sle i64 %68, %69
  br i1 %70, label %71, label %227

71:                                               ; preds = %67
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i64 @db_get(%struct.TYPE_20__* %72, i64 %73, i32 0, i8** %17, i64* %10)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i64, i64* %6, align 8
  %78 = sub nsw i64 %77, 1
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  br label %227

82:                                               ; preds = %71
  %83 = load i64, i64* %10, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %224

86:                                               ; preds = %82
  %87 = load i64, i64* %10, align 8
  %88 = add i64 %87, 2
  %89 = load i64, i64* %11, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %11, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %92 = load i8*, i8** %15, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @ADD_SPACE_RETW(%struct.TYPE_20__* %91, i8* %92, i64 %93, i64 %94)
  %96 = load i8*, i8** %15, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8* %98, i8** %16, align 8
  store i32 0, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %171, label %101

101:                                              ; preds = %86
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @E_C_FORCE, align 4
  %106 = call i32 @FL_ISSET(i32 %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %171, label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %12, align 4
  %110 = trunc i32 %109 to i8
  %111 = call i64 @isblank(i8 signext %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %131

113:                                              ; preds = %108
  br label %114

114:                                              ; preds = %125, %113
  %115 = load i64, i64* %10, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load i8*, i8** %17, align 8
  %119 = load i8, i8* %118, align 1
  %120 = call i64 @isblank(i8 signext %119)
  %121 = icmp ne i64 %120, 0
  br label %122

122:                                              ; preds = %117, %114
  %123 = phi i1 [ false, %114 ], [ %121, %117 ]
  br i1 %123, label %124, label %130

124:                                              ; preds = %122
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %10, align 8
  %127 = add i64 %126, -1
  store i64 %127, i64* %10, align 8
  %128 = load i8*, i8** %17, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %17, align 8
  br label %114

130:                                              ; preds = %122
  br label %170

131:                                              ; preds = %108
  %132 = load i8*, i8** %17, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 41
  br i1 %136, label %137, label %169

137:                                              ; preds = %131
  %138 = call i32 @L(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %139 = load i32, i32* %12, align 4
  %140 = call i64 @STRCHR(i32 %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load i8*, i8** %16, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %16, align 8
  store i8 32, i8* %143, align 1
  %145 = load i64, i64* %9, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %9, align 8
  store i32 1, i32* %13, align 4
  br label %147

147:                                              ; preds = %142, %137
  %148 = load i8*, i8** %16, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %16, align 8
  store i8 32, i8* %148, align 1
  %150 = load i64, i64* %9, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %9, align 8
  br label %152

152:                                              ; preds = %163, %147
  %153 = load i64, i64* %10, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load i8*, i8** %17, align 8
  %157 = load i8, i8* %156, align 1
  %158 = call i64 @isblank(i8 signext %157)
  %159 = icmp ne i64 %158, 0
  br label %160

160:                                              ; preds = %155, %152
  %161 = phi i1 [ false, %152 ], [ %159, %155 ]
  br i1 %161, label %162, label %168

162:                                              ; preds = %160
  br label %163

163:                                              ; preds = %162
  %164 = load i64, i64* %10, align 8
  %165 = add i64 %164, -1
  store i64 %165, i64* %10, align 8
  %166 = load i8*, i8** %17, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %17, align 8
  br label %152

168:                                              ; preds = %160
  br label %169

169:                                              ; preds = %168, %131
  br label %170

170:                                              ; preds = %169, %130
  br label %171

171:                                              ; preds = %170, %101, %86
  %172 = load i64, i64* %10, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %191

174:                                              ; preds = %171
  %175 = load i8*, i8** %16, align 8
  %176 = load i8*, i8** %17, align 8
  %177 = load i64, i64* %10, align 8
  %178 = call i32 @MEMCPY(i8* %175, i8* %176, i64 %177)
  %179 = load i64, i64* %10, align 8
  %180 = load i8*, i8** %16, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 %179
  store i8* %181, i8** %16, align 8
  %182 = load i64, i64* %10, align 8
  %183 = load i64, i64* %9, align 8
  %184 = add i64 %183, %182
  store i64 %184, i64* %9, align 8
  %185 = load i8*, i8** %17, align 8
  %186 = load i64, i64* %10, align 8
  %187 = sub i64 %186, 1
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  store i32 %190, i32* %12, align 4
  br label %192

191:                                              ; preds = %171
  store i32 32, i32* %12, align 4
  br label %192

192:                                              ; preds = %191, %174
  %193 = load i32, i32* %14, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %208

195:                                              ; preds = %192
  %196 = load i8*, i8** %16, align 8
  %197 = load i8*, i8** %15, align 8
  %198 = ptrtoint i8* %196 to i64
  %199 = ptrtoint i8* %197 to i64
  %200 = sub i64 %198, %199
  %201 = load i32, i32* %13, align 4
  %202 = add nsw i32 1, %201
  %203 = sext i32 %202 to i64
  %204 = sub nsw i64 %200, %203
  %205 = trunc i64 %204 to i32
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  store i32 0, i32* %14, align 4
  br label %223

208:                                              ; preds = %192
  %209 = load i8*, i8** %16, align 8
  %210 = load i8*, i8** %15, align 8
  %211 = ptrtoint i8* %209 to i64
  %212 = ptrtoint i8* %210 to i64
  %213 = sub i64 %211, %212
  %214 = load i64, i64* %10, align 8
  %215 = sub i64 %213, %214
  %216 = load i32, i32* %13, align 4
  %217 = add nsw i32 1, %216
  %218 = sext i32 %217 to i64
  %219 = sub i64 %215, %218
  %220 = trunc i64 %219 to i32
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %208, %195
  br label %224

224:                                              ; preds = %223, %85
  %225 = load i64, i64* %6, align 8
  %226 = add nsw i64 %225, 1
  store i64 %226, i64* %6, align 8
  br label %67

227:                                              ; preds = %76, %67
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 1
  store i64 %231, i64* %233, align 8
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  store i64 %237, i64* %6, align 8
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  store i64 %241, i64* %7, align 8
  br label %242

242:                                              ; preds = %253, %227
  %243 = load i64, i64* %7, align 8
  %244 = load i64, i64* %6, align 8
  %245 = icmp sgt i64 %243, %244
  br i1 %245, label %246, label %256

246:                                              ; preds = %242
  %247 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %248 = load i64, i64* %7, align 8
  %249 = call i64 @db_delete(%struct.TYPE_20__* %247, i64 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %246
  br label %272

252:                                              ; preds = %246
  br label %253

253:                                              ; preds = %252
  %254 = load i64, i64* %7, align 8
  %255 = add nsw i64 %254, -1
  store i64 %255, i64* %7, align 8
  br label %242

256:                                              ; preds = %242
  %257 = load i32, i32* %14, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %277, label %259

259:                                              ; preds = %256
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %261 = load i64, i64* %6, align 8
  %262 = load i8*, i8** %15, align 8
  %263 = load i8*, i8** %16, align 8
  %264 = load i8*, i8** %15, align 8
  %265 = ptrtoint i8* %263 to i64
  %266 = ptrtoint i8* %264 to i64
  %267 = sub i64 %265, %266
  %268 = trunc i64 %267 to i32
  %269 = call i64 @db_set(%struct.TYPE_20__* %260, i64 %261, i8* %262, i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %259
  br label %272

272:                                              ; preds = %271, %251
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %274 = load i8*, i8** %15, align 8
  %275 = load i64, i64* %8, align 8
  %276 = call i32 @FREE_SPACEW(%struct.TYPE_20__* %273, i8* %274, i64 %275)
  store i32 1, i32* %3, align 4
  br label %301

277:                                              ; preds = %259, %256
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %279 = load i8*, i8** %15, align 8
  %280 = load i64, i64* %8, align 8
  %281 = call i32 @FREE_SPACEW(%struct.TYPE_20__* %278, i8* %279, i64 %280)
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = sub nsw i64 %285, %289
  %291 = add nsw i64 %290, 1
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 2
  %294 = load i32*, i32** %293, align 8
  %295 = load i64, i64* @L_JOINED, align 8
  %296 = getelementptr inbounds i32, i32* %294, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = sext i32 %297 to i64
  %299 = add nsw i64 %298, %291
  %300 = trunc i64 %299 to i32
  store i32 %300, i32* %296, align 4
  store i32 0, i32* %3, align 4
  br label %301

301:                                              ; preds = %277, %272, %34
  %302 = load i32, i32* %3, align 4
  ret i32 %302
}

declare dso_local i32 @NEEDFILE(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @db_exist(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @msgq(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @GET_SPACE_RETW(%struct.TYPE_20__*, i8*, i64, i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @db_get(%struct.TYPE_20__*, i64, i32, i8**, i64*) #1

declare dso_local i32 @ADD_SPACE_RETW(%struct.TYPE_20__*, i8*, i64, i64) #1

declare dso_local i32 @FL_ISSET(i32, i32) #1

declare dso_local i64 @isblank(i8 signext) #1

declare dso_local i64 @STRCHR(i32, i32) #1

declare dso_local i32 @L(i8*) #1

declare dso_local i32 @MEMCPY(i8*, i8*, i64) #1

declare dso_local i64 @db_delete(%struct.TYPE_20__*, i64) #1

declare dso_local i64 @db_set(%struct.TYPE_20__*, i64, i8*, i32) #1

declare dso_local i32 @FREE_SPACEW(%struct.TYPE_20__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
