; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/win32con/extr_win_driver.c_drv_doupdate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/win32con/extr_win_driver.c_drv_doupdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_15__*, i32, i32, i32, i32)* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, %struct.TYPE_13__*, i8* }
%struct.TYPE_13__ = type { i8*, i32, i32 }

@ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"win32con::drv_doupdate(%p)\00", align 1
@FALSE = common dso_local global i8* null, align 8
@_NOCHANGE = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @drv_doupdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv_doupdate(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %16 = load i32, i32* @ERR, align 4
  store i32 %16, i32* %4, align 4
  %17 = call i32 (...) @AssertTCB()
  %18 = call i32 (...) @SetSP()
  %19 = call i32 @T_CALLED(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = ptrtoint %struct.TYPE_15__* %20 to i32
  %22 = call i32 @T(i32 %21)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %24 = call i64 @okConsoleHandle(%struct.TYPE_15__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %287

26:                                               ; preds = %1
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @screen_columns(i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @screen_lines(i32* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32*, i32** %12, align 8
  %33 = call %struct.TYPE_16__* @NewScreen(i32* %32)
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  %37 = call i32 @min(i32 %31, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = call %struct.TYPE_16__* @CurScreen(i32* %38)
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 5
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %26
  %44 = load i32*, i32** %12, align 8
  %45 = call %struct.TYPE_16__* @NewScreen(i32* %44)
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 5
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %104

49:                                               ; preds = %43, %26
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = call i8* @llvm.stacksave()
  store i8* %52, i8** %14, align 8
  %53 = alloca i8, i64 %51, align 16
  store i64 %51, i64* %15, align 8
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %62, %49
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %53, i64 %60
  store i8 32, i8* %61, align 1
  br label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %54

65:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %88, %65
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %66
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @con_write(%struct.TYPE_15__* %71, i32 %72, i32 0, i8* %53, i32 %73)
  %75 = load i32*, i32** %12, align 8
  %76 = call %struct.TYPE_16__* @CurScreen(i32* %75)
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 1
  %87 = call i32 @memcpy(i8* %53, i8* %83, i64 %86)
  br label %88

88:                                               ; preds = %70
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %66

91:                                               ; preds = %66
  %92 = load i8*, i8** @FALSE, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = call %struct.TYPE_16__* @CurScreen(i32* %93)
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 5
  store i8* %92, i8** %95, align 8
  %96 = load i8*, i8** @FALSE, align 8
  %97 = load i32*, i32** %12, align 8
  %98 = call %struct.TYPE_16__* @NewScreen(i32* %97)
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 5
  store i8* %96, i8** %99, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = call %struct.TYPE_16__* @NewScreen(i32* %100)
  %102 = call i32 @touchwin(%struct.TYPE_16__* %101)
  %103 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %103)
  br label %104

104:                                              ; preds = %91, %43
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %210, %104
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %213

109:                                              ; preds = %105
  %110 = load i32*, i32** %12, align 8
  %111 = call %struct.TYPE_16__* @NewScreen(i32* %110)
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 4
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @_NOCHANGE, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %209

122:                                              ; preds = %109
  %123 = load i32*, i32** %12, align 8
  %124 = call %struct.TYPE_16__* @NewScreen(i32* %123)
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %8, align 4
  %134 = sub nsw i32 %132, %133
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %208

138:                                              ; preds = %122
  %139 = load i32*, i32** %12, align 8
  %140 = call %struct.TYPE_16__* @CurScreen(i32* %139)
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i32*, i32** %12, align 8
  %152 = call %struct.TYPE_16__* @NewScreen(i32* %151)
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 4
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = mul i64 %164, 1
  %166 = call i32 @memcpy(i8* %150, i8* %162, i64 %165)
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load i32*, i32** %12, align 8
  %171 = call %struct.TYPE_16__* @CurScreen(i32* %170)
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 4
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @con_write(%struct.TYPE_15__* %167, i32 %168, i32 %169, i8* %181, i32 %182)
  %184 = load i32, i32* %5, align 4
  %185 = load i32*, i32** %12, align 8
  %186 = call %struct.TYPE_16__* @NewScreen(i32* %185)
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp sle i32 %184, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %138
  %191 = load i32*, i32** %12, align 8
  %192 = call %struct.TYPE_16__* @NewScreen(i32* %191)
  %193 = load i32, i32* %5, align 4
  %194 = call i32 @MARK_NOCHANGE(%struct.TYPE_16__* %192, i32 %193)
  br label %195

195:                                              ; preds = %190, %138
  %196 = load i32, i32* %5, align 4
  %197 = load i32*, i32** %12, align 8
  %198 = call %struct.TYPE_16__* @CurScreen(i32* %197)
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp sle i32 %196, %200
  br i1 %201, label %202, label %207

202:                                              ; preds = %195
  %203 = load i32*, i32** %12, align 8
  %204 = call %struct.TYPE_16__* @CurScreen(i32* %203)
  %205 = load i32, i32* %5, align 4
  %206 = call i32 @MARK_NOCHANGE(%struct.TYPE_16__* %204, i32 %205)
  br label %207

207:                                              ; preds = %202, %195
  br label %208

208:                                              ; preds = %207, %122
  br label %209

209:                                              ; preds = %208, %109
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %5, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %5, align 4
  br label %105

213:                                              ; preds = %105
  %214 = load i32, i32* %6, align 4
  store i32 %214, i32* %5, align 4
  br label %215

215:                                              ; preds = %227, %213
  %216 = load i32, i32* %5, align 4
  %217 = load i32*, i32** %12, align 8
  %218 = call %struct.TYPE_16__* @NewScreen(i32* %217)
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp sle i32 %216, %220
  br i1 %221, label %222, label %230

222:                                              ; preds = %215
  %223 = load i32*, i32** %12, align 8
  %224 = call %struct.TYPE_16__* @NewScreen(i32* %223)
  %225 = load i32, i32* %5, align 4
  %226 = call i32 @MARK_NOCHANGE(%struct.TYPE_16__* %224, i32 %225)
  br label %227

227:                                              ; preds = %222
  %228 = load i32, i32* %5, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %5, align 4
  br label %215

230:                                              ; preds = %215
  %231 = load i32, i32* %6, align 4
  store i32 %231, i32* %5, align 4
  br label %232

232:                                              ; preds = %244, %230
  %233 = load i32, i32* %5, align 4
  %234 = load i32*, i32** %12, align 8
  %235 = call %struct.TYPE_16__* @CurScreen(i32* %234)
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp sle i32 %233, %237
  br i1 %238, label %239, label %247

239:                                              ; preds = %232
  %240 = load i32*, i32** %12, align 8
  %241 = call %struct.TYPE_16__* @CurScreen(i32* %240)
  %242 = load i32, i32* %5, align 4
  %243 = call i32 @MARK_NOCHANGE(%struct.TYPE_16__* %241, i32 %242)
  br label %244

244:                                              ; preds = %239
  %245 = load i32, i32* %5, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %5, align 4
  br label %232

247:                                              ; preds = %232
  %248 = load i32*, i32** %12, align 8
  %249 = call %struct.TYPE_16__* @NewScreen(i32* %248)
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %283, label %253

253:                                              ; preds = %247
  %254 = load i32*, i32** %12, align 8
  %255 = call %struct.TYPE_16__* @NewScreen(i32* %254)
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32*, i32** %12, align 8
  %259 = call %struct.TYPE_16__* @CurScreen(i32* %258)
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 1
  store i32 %257, i32* %260, align 4
  %261 = load i32*, i32** %12, align 8
  %262 = call %struct.TYPE_16__* @NewScreen(i32* %261)
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = load i32*, i32** %12, align 8
  %266 = call %struct.TYPE_16__* @CurScreen(i32* %265)
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 2
  store i32 %264, i32* %267, align 8
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 0
  %272 = load i32 (%struct.TYPE_15__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32, i32, i32)** %271, align 8
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %274 = load i32*, i32** %12, align 8
  %275 = call %struct.TYPE_16__* @CurScreen(i32* %274)
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load i32*, i32** %12, align 8
  %279 = call %struct.TYPE_16__* @CurScreen(i32* %278)
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = call i32 %272(%struct.TYPE_15__* %273, i32 0, i32 0, i32 %277, i32 %281)
  br label %283

283:                                              ; preds = %253, %247
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %285 = call i32 @selectActiveHandle(%struct.TYPE_15__* %284)
  %286 = load i32, i32* @OK, align 4
  store i32 %286, i32* %4, align 4
  br label %287

287:                                              ; preds = %283, %1
  %288 = load i32, i32* %4, align 4
  %289 = call i32 @returnCode(i32 %288)
  %290 = load i32, i32* %2, align 4
  ret i32 %290
}

declare dso_local i32 @AssertTCB(...) #1

declare dso_local i32 @SetSP(...) #1

declare dso_local i32 @T(i32) #1

declare dso_local i32 @T_CALLED(i8*) #1

declare dso_local i64 @okConsoleHandle(%struct.TYPE_15__*) #1

declare dso_local i32 @screen_columns(i32*) #1

declare dso_local i32 @screen_lines(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.TYPE_16__* @NewScreen(i32*) #1

declare dso_local %struct.TYPE_16__* @CurScreen(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @con_write(%struct.TYPE_15__*, i32, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @touchwin(%struct.TYPE_16__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @MARK_NOCHANGE(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @selectActiveHandle(%struct.TYPE_15__*) #1

declare dso_local i32 @returnCode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
