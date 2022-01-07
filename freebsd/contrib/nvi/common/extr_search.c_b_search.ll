; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_search.c_b_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_search.c_b_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_22__*)* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, i64 }

@BACKWARD = common dso_local global i32 0, align 4
@SEARCH_INCR = common dso_local global i32 0, align 4
@O_WRAPSCAN = common dso_local global i32 0, align 4
@SEARCH_MSG = common dso_local global i32 0, align 4
@S_SOF = common dso_local global i32 0, align 4
@BUSY_ON = common dso_local global i32 0, align 4
@INTERRUPT_CHECK = common dso_local global i32 0, align 4
@BUSY_UPDATE = common dso_local global i32 0, align 4
@S_NOTFOUND = common dso_local global i32 0, align 4
@S_EMPTY = common dso_local global i32 0, align 4
@REG_NOTEOL = common dso_local global i32 0, align 4
@REG_STARTEND = common dso_local global i32 0, align 4
@REG_NOMATCH = common dso_local global i32 0, align 4
@SEARCH_WMSG = common dso_local global i32 0, align 4
@S_WRAP = common dso_local global i32 0, align 4
@REG_NOTBOL = common dso_local global i32 0, align 4
@SEARCH_EOL = common dso_local global i32 0, align 4
@BUSY_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b_search(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1, %struct.TYPE_23__* %2, i32* %3, i64 %4, i32** %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [1 x %struct.TYPE_21__], align 16
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32** %5, i32*** %14, align 8
  store i32 %6, i32* %15, align 4
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %28 = load i32, i32* @BACKWARD, align 4
  %29 = load i32*, i32** %12, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i32**, i32*** %14, align 8
  %32 = load i32, i32* %15, align 4
  %33 = call i64 @search_init(%struct.TYPE_22__* %27, i32 %28, i32* %29, i64 %30, i32** %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %7
  store i32 1, i32* %8, align 4
  br label %356

36:                                               ; preds = %7
  %37 = load i32, i32* @SEARCH_INCR, align 4
  %38 = call i64 @LF_ISSET(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %17, align 4
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %19, align 8
  br label %87

49:                                               ; preds = %36
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %49
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %61 = load i32, i32* @O_WRAPSCAN, align 4
  %62 = call i32 @O_ISSET(%struct.TYPE_22__* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @SEARCH_MSG, align 4
  %66 = call i64 @LF_ISSET(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %70 = load i32, i32* @S_SOF, align 4
  %71 = call i32 @search_msg(%struct.TYPE_22__* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %64
  store i32 1, i32* %8, align 4
  br label %356

73:                                               ; preds = %59, %54
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %17, align 4
  br label %82

78:                                               ; preds = %49
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %17, align 4
  br label %82

82:                                               ; preds = %78, %73
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %19, align 8
  br label %87

87:                                               ; preds = %82, %40
  %88 = load i32, i32* @BUSY_ON, align 4
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* @INTERRUPT_CHECK, align 4
  store i32 %89, i32* %22, align 4
  store i32 1, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %90

90:                                               ; preds = %342, %87
  %91 = load i32, i32* %22, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %22, align 4
  %93 = icmp eq i32 %91, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %90
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %96 = call i64 @INTERRUPTED(%struct.TYPE_22__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %345

99:                                               ; preds = %94
  %100 = load i32, i32* @SEARCH_MSG, align 4
  %101 = call i64 @LF_ISSET(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @search_busy(%struct.TYPE_22__* %104, i32 %105)
  %107 = load i32, i32* @BUSY_UPDATE, align 4
  store i32 %107, i32* %16, align 4
  br label %108

108:                                              ; preds = %103, %99
  %109 = load i32, i32* @INTERRUPT_CHECK, align 4
  store i32 %109, i32* %22, align 4
  br label %110

110:                                              ; preds = %108, %90
  %111 = load i32, i32* %25, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load i32, i32* %17, align 4
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %113, %110
  %120 = load i32, i32* %17, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %168

122:                                              ; preds = %119, %113
  %123 = load i32, i32* %25, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load i32, i32* @SEARCH_MSG, align 4
  %127 = call i64 @LF_ISSET(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %131 = load i32, i32* @S_NOTFOUND, align 4
  %132 = call i32 @search_msg(%struct.TYPE_22__* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %125
  br label %345

134:                                              ; preds = %122
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %136 = load i32, i32* @O_WRAPSCAN, align 4
  %137 = call i32 @O_ISSET(%struct.TYPE_22__* %135, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %134
  %140 = load i32, i32* @SEARCH_MSG, align 4
  %141 = call i64 @LF_ISSET(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %145 = load i32, i32* @S_SOF, align 4
  %146 = call i32 @search_msg(%struct.TYPE_22__* %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %139
  br label %345

148:                                              ; preds = %134
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %150 = call i64 @db_last(%struct.TYPE_22__* %149, i32* %17)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  br label %345

153:                                              ; preds = %148
  %154 = load i32, i32* %17, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %153
  %157 = load i32, i32* @SEARCH_MSG, align 4
  %158 = call i64 @LF_ISSET(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %162 = load i32, i32* @S_EMPTY, align 4
  %163 = call i32 @search_msg(%struct.TYPE_22__* %161, i32 %162)
  br label %164

164:                                              ; preds = %160, %156
  br label %345

165:                                              ; preds = %153
  %166 = load i32, i32* %17, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %17, align 4
  store i32 1, i32* %25, align 4
  br label %342

168:                                              ; preds = %119
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %170 = load i32, i32* %17, align 4
  %171 = call i64 @db_get(%struct.TYPE_22__* %169, i32 %170, i32 0, i32** %26, i64* %21)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %345

174:                                              ; preds = %168
  %175 = getelementptr inbounds [1 x %struct.TYPE_21__], [1 x %struct.TYPE_21__]* %18, i64 0, i64 0
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 0
  store i64 0, i64* %176, align 16
  %177 = load i64, i64* %21, align 8
  %178 = getelementptr inbounds [1 x %struct.TYPE_21__], [1 x %struct.TYPE_21__]* %18, i64 0, i64 0
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 1
  store i64 %177, i64* %179, align 8
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 1
  %182 = load i32*, i32** %26, align 8
  %183 = getelementptr inbounds [1 x %struct.TYPE_21__], [1 x %struct.TYPE_21__]* %18, i64 0, i64 0
  %184 = getelementptr inbounds [1 x %struct.TYPE_21__], [1 x %struct.TYPE_21__]* %18, i64 0, i64 0
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* %21, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %174
  br label %192

190:                                              ; preds = %174
  %191 = load i32, i32* @REG_NOTEOL, align 4
  br label %192

192:                                              ; preds = %190, %189
  %193 = phi i32 [ 0, %189 ], [ %191, %190 ]
  %194 = load i32, i32* @REG_STARTEND, align 4
  %195 = or i32 %193, %194
  %196 = call i32 @regexec(i32* %181, i32* %182, i32 1, %struct.TYPE_21__* %183, i32 %195)
  store i32 %196, i32* %23, align 4
  %197 = load i32, i32* %23, align 4
  %198 = load i32, i32* @REG_NOMATCH, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %192
  br label %342

201:                                              ; preds = %192
  %202 = load i32, i32* %23, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %223

204:                                              ; preds = %201
  %205 = load i32, i32* @SEARCH_MSG, align 4
  %206 = call i64 @LF_ISSET(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %204
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %210 = load i32, i32* %23, align 4
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 1
  %213 = call i32 @re_error(%struct.TYPE_22__* %209, i32 %210, i32* %212)
  br label %222

214:                                              ; preds = %204
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 0
  %219 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %218, align 8
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %221 = call i32 %219(%struct.TYPE_22__* %220)
  br label %222

222:                                              ; preds = %214, %208
  br label %345

223:                                              ; preds = %201
  %224 = load i64, i64* %19, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %223
  %227 = getelementptr inbounds [1 x %struct.TYPE_21__], [1 x %struct.TYPE_21__]* %18, i64 0, i64 0
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 16
  %230 = load i64, i64* %19, align 8
  %231 = icmp uge i64 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %226
  br label %342

233:                                              ; preds = %226, %223
  %234 = load i32, i32* %25, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %233
  %237 = load i32, i32* @SEARCH_WMSG, align 4
  %238 = call i64 @LF_ISSET(i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %236
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %242 = load i32, i32* @S_WRAP, align 4
  %243 = call i32 @search_msg(%struct.TYPE_22__* %241, i32 %242)
  br label %244

244:                                              ; preds = %240, %236, %233
  br label %245

245:                                              ; preds = %312, %244
  %246 = getelementptr inbounds [1 x %struct.TYPE_21__], [1 x %struct.TYPE_21__]* %18, i64 0, i64 0
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 16
  %249 = add i64 %248, 1
  store i64 %249, i64* %247, align 16
  store i64 %248, i64* %20, align 8
  %250 = getelementptr inbounds [1 x %struct.TYPE_21__], [1 x %struct.TYPE_21__]* %18, i64 0, i64 0
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 16
  %253 = load i64, i64* %21, align 8
  %254 = icmp uge i64 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %245
  br label %313

256:                                              ; preds = %245
  %257 = load i64, i64* %21, align 8
  %258 = getelementptr inbounds [1 x %struct.TYPE_21__], [1 x %struct.TYPE_21__]* %18, i64 0, i64 0
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 1
  store i64 %257, i64* %259, align 8
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 1
  %262 = load i32*, i32** %26, align 8
  %263 = getelementptr inbounds [1 x %struct.TYPE_21__], [1 x %struct.TYPE_21__]* %18, i64 0, i64 0
  %264 = getelementptr inbounds [1 x %struct.TYPE_21__], [1 x %struct.TYPE_21__]* %18, i64 0, i64 0
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 16
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %256
  br label %271

269:                                              ; preds = %256
  %270 = load i32, i32* @REG_NOTBOL, align 4
  br label %271

271:                                              ; preds = %269, %268
  %272 = phi i32 [ 0, %268 ], [ %270, %269 ]
  %273 = load i32, i32* @REG_STARTEND, align 4
  %274 = or i32 %272, %273
  %275 = call i32 @regexec(i32* %261, i32* %262, i32 1, %struct.TYPE_21__* %263, i32 %274)
  store i32 %275, i32* %23, align 4
  %276 = load i32, i32* %23, align 4
  %277 = load i32, i32* @REG_NOMATCH, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %271
  br label %313

280:                                              ; preds = %271
  %281 = load i32, i32* %23, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %302

283:                                              ; preds = %280
  %284 = load i32, i32* @SEARCH_MSG, align 4
  %285 = call i64 @LF_ISSET(i32 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %283
  %288 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %289 = load i32, i32* %23, align 4
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 1
  %292 = call i32 @re_error(%struct.TYPE_22__* %288, i32 %289, i32* %291)
  br label %301

293:                                              ; preds = %283
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 0
  %298 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %297, align 8
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %300 = call i32 %298(%struct.TYPE_22__* %299)
  br label %301

301:                                              ; preds = %293, %287
  br label %346

302:                                              ; preds = %280
  %303 = load i64, i64* %19, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %312

305:                                              ; preds = %302
  %306 = getelementptr inbounds [1 x %struct.TYPE_21__], [1 x %struct.TYPE_21__]* %18, i64 0, i64 0
  %307 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 16
  %309 = load i64, i64* %19, align 8
  %310 = icmp uge i64 %308, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %305
  br label %313

312:                                              ; preds = %305, %302
  br label %245

313:                                              ; preds = %311, %279, %255
  %314 = load i32, i32* %17, align 4
  %315 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %316 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %315, i32 0, i32 0
  store i32 %314, i32* %316, align 4
  %317 = load i32, i32* @SEARCH_EOL, align 4
  %318 = call i64 @LF_ISSET(i32 %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %336, label %320

320:                                              ; preds = %313
  %321 = load i64, i64* %20, align 8
  %322 = load i64, i64* %21, align 8
  %323 = icmp uge i64 %321, %322
  br i1 %323, label %324, label %336

324:                                              ; preds = %320
  %325 = load i64, i64* %21, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %324
  %328 = load i64, i64* %21, align 8
  %329 = sub i64 %328, 1
  br label %331

330:                                              ; preds = %324
  br label %331

331:                                              ; preds = %330, %327
  %332 = phi i64 [ %329, %327 ], [ 0, %330 ]
  %333 = trunc i64 %332 to i32
  %334 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %335 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %334, i32 0, i32 1
  store i32 %333, i32* %335, align 4
  br label %341

336:                                              ; preds = %320, %313
  %337 = load i64, i64* %20, align 8
  %338 = trunc i64 %337 to i32
  %339 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %340 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %339, i32 0, i32 1
  store i32 %338, i32* %340, align 4
  br label %341

341:                                              ; preds = %336, %331
  store i32 0, i32* %24, align 4
  br label %345

342:                                              ; preds = %232, %200, %165
  %343 = load i32, i32* %17, align 4
  %344 = add nsw i32 %343, -1
  store i32 %344, i32* %17, align 4
  store i64 0, i64* %19, align 8
  br label %90

345:                                              ; preds = %341, %222, %173, %164, %152, %147, %133, %98
  br label %346

346:                                              ; preds = %345, %301
  %347 = load i32, i32* @SEARCH_MSG, align 4
  %348 = call i64 @LF_ISSET(i32 %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %346
  %351 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %352 = load i32, i32* @BUSY_OFF, align 4
  %353 = call i32 @search_busy(%struct.TYPE_22__* %351, i32 %352)
  br label %354

354:                                              ; preds = %350, %346
  %355 = load i32, i32* %24, align 4
  store i32 %355, i32* %8, align 4
  br label %356

356:                                              ; preds = %354, %72, %35
  %357 = load i32, i32* %8, align 4
  ret i32 %357
}

declare dso_local i64 @search_init(%struct.TYPE_22__*, i32, i32*, i64, i32**, i32) #1

declare dso_local i64 @LF_ISSET(i32) #1

declare dso_local i32 @O_ISSET(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @search_msg(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @INTERRUPTED(%struct.TYPE_22__*) #1

declare dso_local i32 @search_busy(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @db_last(%struct.TYPE_22__*, i32*) #1

declare dso_local i64 @db_get(%struct.TYPE_22__*, i32, i32, i32**, i64*) #1

declare dso_local i32 @regexec(i32*, i32*, i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @re_error(%struct.TYPE_22__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
