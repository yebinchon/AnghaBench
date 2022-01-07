; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_search.c_f_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_search.c_f_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_20__*)* }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_19__ = type { i64, i64 }

@FORWARD = common dso_local global i32 0, align 4
@SEARCH_FILE = common dso_local global i32 0, align 4
@DBG_FATAL = common dso_local global i32 0, align 4
@SEARCH_INCR = common dso_local global i32 0, align 4
@O_WRAPSCAN = common dso_local global i32 0, align 4
@SEARCH_MSG = common dso_local global i32 0, align 4
@S_EOF = common dso_local global i32 0, align 4
@BUSY_ON = common dso_local global i32 0, align 4
@INTERRUPT_CHECK = common dso_local global i32 0, align 4
@BUSY_UPDATE = common dso_local global i32 0, align 4
@S_NOTFOUND = common dso_local global i32 0, align 4
@REG_NOTBOL = common dso_local global i32 0, align 4
@REG_STARTEND = common dso_local global i32 0, align 4
@REG_NOMATCH = common dso_local global i32 0, align 4
@SEARCH_WMSG = common dso_local global i32 0, align 4
@S_WRAP = common dso_local global i32 0, align 4
@SEARCH_EOL = common dso_local global i32 0, align 4
@BUSY_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_search(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1, %struct.TYPE_21__* %2, i32* %3, i64 %4, i32** %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [1 x %struct.TYPE_19__], align 16
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32** %5, i32*** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %24, align 4
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %27 = load i32, i32* @FORWARD, align 4
  %28 = load i32*, i32** %12, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load i32**, i32*** %14, align 8
  %31 = load i32, i32* %15, align 4
  %32 = call i64 @search_init(%struct.TYPE_20__* %26, i32 %27, i32* %28, i64 %29, i32** %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %7
  store i32 1, i32* %8, align 4
  br label %279

35:                                               ; preds = %7
  %36 = load i32, i32* @SEARCH_FILE, align 4
  %37 = call i64 @LF_ISSET(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %17, align 4
  store i64 0, i64* %19, align 8
  br label %104

40:                                               ; preds = %35
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @DBG_FATAL, align 4
  %46 = call i64 @db_get(%struct.TYPE_20__* %41, i32 %44, i32 %45, i32** %25, i64* %20)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 1, i32* %8, align 4
  br label %279

49:                                               ; preds = %40
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* @SEARCH_INCR, align 4
  %54 = call i64 @LF_ISSET(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %19, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i64, i64* %19, align 8
  %63 = add i64 %62, -1
  store i64 %63, i64* %19, align 8
  br label %64

64:                                               ; preds = %61, %56
  br label %103

65:                                               ; preds = %49
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 1
  %70 = load i64, i64* %20, align 8
  %71 = icmp uge i64 %69, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %65
  store i64 0, i64* %19, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %17, align 4
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %78 = load i32, i32* %17, align 4
  %79 = call i64 @db_get(%struct.TYPE_20__* %77, i32 %78, i32 0, i32** %25, i64* %20)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %72
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %83 = load i32, i32* @O_WRAPSCAN, align 4
  %84 = call i32 @O_ISSET(%struct.TYPE_20__* %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* @SEARCH_MSG, align 4
  %88 = call i64 @LF_ISSET(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %92 = load i32, i32* @S_EOF, align 4
  %93 = call i32 @search_msg(%struct.TYPE_20__* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %86
  store i32 1, i32* %8, align 4
  br label %279

95:                                               ; preds = %81
  store i32 1, i32* %17, align 4
  store i32 1, i32* %24, align 4
  br label %96

96:                                               ; preds = %95, %72
  br label %102

97:                                               ; preds = %65
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %19, align 8
  br label %102

102:                                              ; preds = %97, %96
  br label %103

103:                                              ; preds = %102, %64
  br label %104

104:                                              ; preds = %103, %39
  %105 = load i32, i32* @BUSY_ON, align 4
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* @INTERRUPT_CHECK, align 4
  store i32 %106, i32* %21, align 4
  store i32 1, i32* %23, align 4
  br label %107

107:                                              ; preds = %266, %104
  %108 = load i32, i32* %21, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %21, align 4
  %110 = icmp eq i32 %108, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %107
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %113 = call i64 @INTERRUPTED(%struct.TYPE_20__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %269

116:                                              ; preds = %111
  %117 = load i32, i32* @SEARCH_MSG, align 4
  %118 = call i64 @LF_ISSET(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %122 = load i32, i32* %16, align 4
  %123 = call i32 @search_busy(%struct.TYPE_20__* %121, i32 %122)
  %124 = load i32, i32* @BUSY_UPDATE, align 4
  store i32 %124, i32* %16, align 4
  br label %125

125:                                              ; preds = %120, %116
  %126 = load i32, i32* @INTERRUPT_CHECK, align 4
  store i32 %126, i32* %21, align 4
  br label %127

127:                                              ; preds = %125, %107
  %128 = load i32, i32* %24, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = load i32, i32* %17, align 4
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp sgt i32 %131, %134
  br i1 %135, label %141, label %136

136:                                              ; preds = %130, %127
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %138 = load i32, i32* %17, align 4
  %139 = call i64 @db_get(%struct.TYPE_20__* %137, i32 %138, i32 0, i32** %25, i64* %20)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %168

141:                                              ; preds = %136, %130
  %142 = load i32, i32* %24, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  %145 = load i32, i32* @SEARCH_MSG, align 4
  %146 = call i64 @LF_ISSET(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %150 = load i32, i32* @S_NOTFOUND, align 4
  %151 = call i32 @search_msg(%struct.TYPE_20__* %149, i32 %150)
  br label %152

152:                                              ; preds = %148, %144
  br label %269

153:                                              ; preds = %141
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %155 = load i32, i32* @O_WRAPSCAN, align 4
  %156 = call i32 @O_ISSET(%struct.TYPE_20__* %154, i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %167, label %158

158:                                              ; preds = %153
  %159 = load i32, i32* @SEARCH_MSG, align 4
  %160 = call i64 @LF_ISSET(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %164 = load i32, i32* @S_EOF, align 4
  %165 = call i32 @search_msg(%struct.TYPE_20__* %163, i32 %164)
  br label %166

166:                                              ; preds = %162, %158
  br label %269

167:                                              ; preds = %153
  store i32 0, i32* %17, align 4
  store i32 1, i32* %24, align 4
  br label %266

168:                                              ; preds = %136
  %169 = load i64, i64* %20, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = load i64, i64* %19, align 8
  %173 = load i64, i64* %20, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  br label %266

176:                                              ; preds = %171, %168
  %177 = load i64, i64* %19, align 8
  %178 = getelementptr inbounds [1 x %struct.TYPE_19__], [1 x %struct.TYPE_19__]* %18, i64 0, i64 0
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 16
  %180 = load i64, i64* %20, align 8
  %181 = getelementptr inbounds [1 x %struct.TYPE_19__], [1 x %struct.TYPE_19__]* %18, i64 0, i64 0
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 1
  store i64 %180, i64* %182, align 8
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 1
  %185 = load i32*, i32** %25, align 8
  %186 = getelementptr inbounds [1 x %struct.TYPE_19__], [1 x %struct.TYPE_19__]* %18, i64 0, i64 0
  %187 = getelementptr inbounds [1 x %struct.TYPE_19__], [1 x %struct.TYPE_19__]* %18, i64 0, i64 0
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 16
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %176
  br label %194

192:                                              ; preds = %176
  %193 = load i32, i32* @REG_NOTBOL, align 4
  br label %194

194:                                              ; preds = %192, %191
  %195 = phi i32 [ 0, %191 ], [ %193, %192 ]
  %196 = load i32, i32* @REG_STARTEND, align 4
  %197 = or i32 %195, %196
  %198 = call i32 @regexec(i32* %184, i32* %185, i32 1, %struct.TYPE_19__* %186, i32 %197)
  store i32 %198, i32* %22, align 4
  %199 = load i32, i32* %22, align 4
  %200 = load i32, i32* @REG_NOMATCH, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %194
  br label %266

203:                                              ; preds = %194
  %204 = load i32, i32* %22, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %225

206:                                              ; preds = %203
  %207 = load i32, i32* @SEARCH_MSG, align 4
  %208 = call i64 @LF_ISSET(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %206
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %212 = load i32, i32* %22, align 4
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 1
  %215 = call i32 @re_error(%struct.TYPE_20__* %211, i32 %212, i32* %214)
  br label %224

216:                                              ; preds = %206
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 0
  %221 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %220, align 8
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %223 = call i32 %221(%struct.TYPE_20__* %222)
  br label %224

224:                                              ; preds = %216, %210
  br label %269

225:                                              ; preds = %203
  %226 = load i32, i32* %24, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %225
  %229 = load i32, i32* @SEARCH_WMSG, align 4
  %230 = call i64 @LF_ISSET(i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %228
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %234 = load i32, i32* @S_WRAP, align 4
  %235 = call i32 @search_msg(%struct.TYPE_20__* %233, i32 %234)
  br label %236

236:                                              ; preds = %232, %228, %225
  %237 = load i32, i32* %17, align 4
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 8
  %240 = getelementptr inbounds [1 x %struct.TYPE_19__], [1 x %struct.TYPE_19__]* %18, i64 0, i64 0
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 16
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i32 0, i32 1
  store i64 %242, i64* %244, align 8
  %245 = load i32, i32* @SEARCH_EOL, align 4
  %246 = call i64 @LF_ISSET(i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %265, label %248

248:                                              ; preds = %236
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* %20, align 8
  %253 = icmp uge i64 %251, %252
  br i1 %253, label %254, label %265

254:                                              ; preds = %248
  %255 = load i64, i64* %20, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %254
  %258 = load i64, i64* %20, align 8
  %259 = sub i64 %258, 1
  br label %261

260:                                              ; preds = %254
  br label %261

261:                                              ; preds = %260, %257
  %262 = phi i64 [ %259, %257 ], [ 0, %260 ]
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 1
  store i64 %262, i64* %264, align 8
  br label %265

265:                                              ; preds = %261, %248, %236
  store i32 0, i32* %23, align 4
  br label %269

266:                                              ; preds = %202, %175, %167
  %267 = load i32, i32* %17, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %17, align 4
  store i64 0, i64* %19, align 8
  br label %107

269:                                              ; preds = %265, %224, %166, %152, %115
  %270 = load i32, i32* @SEARCH_MSG, align 4
  %271 = call i64 @LF_ISSET(i32 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %269
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %275 = load i32, i32* @BUSY_OFF, align 4
  %276 = call i32 @search_busy(%struct.TYPE_20__* %274, i32 %275)
  br label %277

277:                                              ; preds = %273, %269
  %278 = load i32, i32* %23, align 4
  store i32 %278, i32* %8, align 4
  br label %279

279:                                              ; preds = %277, %94, %48, %34
  %280 = load i32, i32* %8, align 4
  ret i32 %280
}

declare dso_local i64 @search_init(%struct.TYPE_20__*, i32, i32*, i64, i32**, i32) #1

declare dso_local i64 @LF_ISSET(i32) #1

declare dso_local i64 @db_get(%struct.TYPE_20__*, i32, i32, i32**, i64*) #1

declare dso_local i32 @O_ISSET(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @search_msg(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @INTERRUPTED(%struct.TYPE_20__*) #1

declare dso_local i32 @search_busy(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @regexec(i32*, i32*, i32, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @re_error(%struct.TYPE_20__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
