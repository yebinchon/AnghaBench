; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port_im.c_FmPortImRx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port_im.c_FmPortImRx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i32, i64 (i32, i64*, i64, i64, i64, i32)*, %struct.TYPE_11__, %struct.TYPE_10__*, i32* }
%struct.TYPE_11__ = type { i32, i64 (i32, i64*, i32)*, i32, i32, i64* (i32, i32*)* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@E_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@BD_R_E = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_NOT_AVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Data buffer\00", align 1
@IM_ILEGAL_BD_ID = common dso_local global i64 0, align 8
@BD_L = common dso_local global i32 0, align 4
@BD_LENGTH_MASK = common dso_local global i32 0, align 4
@SINGLE_BUF = common dso_local global i64 0, align 8
@FIRST_BUF = common dso_local global i64 0, align 8
@LAST_BUF = common dso_local global i64 0, align 8
@MIDDLE_BUF = common dso_local global i64 0, align 8
@BD_RX_ERRORS = common dso_local global i32 0, align 4
@e_RX_STORE_RESPONSE_PAUSE = common dso_local global i64 0, align 8
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed freeing data buffer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FmPortImRx(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = call i32 @ASSERT_COND(%struct.TYPE_13__* %13)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @XX_LockIntrSpinlock(i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @XX_UnlockIntrSpinlock(i32 %26, i32 %27)
  %29 = load i32, i32* @E_OK, align 4
  store i32 %29, i32* %2, align 4
  br label %297

30:                                               ; preds = %1
  %31 = load i8*, i8** @TRUE, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @XX_UnlockIntrSpinlock(i32 %36, i32 %37)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @BD_GET(i64 %42)
  %44 = call i32 @BD_STATUS_AND_LENGTH(i32 %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %285, %30
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @BD_R_E, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br i1 %50, label %51, label %292

51:                                               ; preds = %45
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 4
  %56 = load i64* (i32, i32*)*, i64* (i32, i32*)** %55, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64* %56(i32 %61, i32* %5)
  store i64* %62, i64** %11, align 8
  %63 = icmp eq i64* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %51
  %65 = load i8*, i8** @FALSE, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* @MAJOR, align 4
  %69 = load i32, i32* @E_NOT_AVAILABLE, align 4
  %70 = call i32 @RETURN_ERROR(i32 %68, i32 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %64, %51
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @IM_ILEGAL_BD_ID, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %71
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  store i64 %82, i64* %85, align 8
  br label %86

86:                                               ; preds = %78, %71
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @BD_GET(i64 %95)
  %97 = call i64* @BdBufferGet(i32 %91, i32 %96)
  store i64* %97, i64** %10, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 6
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @BD_L, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %86
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @BD_LENGTH_MASK, align 4
  %115 = and i32 %113, %114
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %115, %119
  br label %125

121:                                              ; preds = %86
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @BD_LENGTH_MASK, align 4
  %124 = and i32 %122, %123
  br label %125

125:                                              ; preds = %121, %112
  %126 = phi i32 [ %120, %112 ], [ %124, %121 ]
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %8, align 8
  %128 = load i64, i64* %8, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %128
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %131, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %139, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %125
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @BD_L, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = load volatile i64, i64* @SINGLE_BUF, align 8
  br label %154

152:                                              ; preds = %145
  %153 = load volatile i64, i64* @FIRST_BUF, align 8
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i64 [ %151, %150 ], [ %153, %152 ]
  br label %167

156:                                              ; preds = %125
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* @BD_L, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load volatile i64, i64* @LAST_BUF, align 8
  br label %165

163:                                              ; preds = %156
  %164 = load volatile i64, i64* @MIDDLE_BUF, align 8
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i64 [ %162, %161 ], [ %164, %163 ]
  br label %167

167:                                              ; preds = %165, %154
  %168 = phi i64 [ %155, %154 ], [ %166, %165 ]
  store volatile i64 %168, i64* %7, align 8
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @BD_L, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %167
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 2
  store i32 0, i32* %176, align 8
  %177 = load i64, i64* @IM_ILEGAL_BD_ID, align 8
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 1
  store i64 %177, i64* %180, align 8
  br label %181

181:                                              ; preds = %173, %167
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @BD_GET(i64 %190)
  %192 = load i64*, i64** %11, align 8
  %193 = call i32 @BdBufferSet(i32 %186, i32 %191, i64* %192)
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @BD_GET(i64 %197)
  %199 = load i32, i32* @BD_R_E, align 4
  %200 = call i32 @BD_STATUS_AND_LENGTH_SET(i32 %198, i32 %199)
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* @BD_RX_ERRORS, align 4
  %203 = and i32 %201, %202
  %204 = ashr i32 %203, 16
  %205 = sext i32 %204 to i64
  store i64 %205, i64* %9, align 8
  %206 = load i32, i32* %5, align 4
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 6
  %210 = load i32*, i32** %209, align 8
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds i32, i32* %210, i64 %214
  store i32 %206, i32* %215, align 4
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = call i64 @GetNextBdId(%struct.TYPE_13__* %216, i64 %220)
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 0
  store i64 %221, i64* %224, align 8
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 5
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = shl i64 %235, 4
  %237 = call i32 @WRITE_UINT16(i32 %231, i64 %236)
  %238 = load volatile i64, i64* %7, align 8
  %239 = load volatile i64, i64* @SINGLE_BUF, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %244, label %241

241:                                              ; preds = %181
  %242 = load i64, i64* %9, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %262, label %244

244:                                              ; preds = %241, %181
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 3
  %248 = load i64 (i32, i64*, i64, i64, i64, i32)*, i64 (i32, i64*, i64, i64, i64, i32)** %247, align 8
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load i64*, i64** %10, align 8
  %253 = load i64, i64* %8, align 8
  %254 = load i64, i64* %9, align 8
  %255 = load volatile i64, i64* %7, align 8
  %256 = load i32, i32* %4, align 4
  %257 = call i64 %248(i32 %251, i64* %252, i64 %253, i64 %254, i64 %255, i32 %256)
  %258 = load i64, i64* @e_RX_STORE_RESPONSE_PAUSE, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %244
  br label %292

261:                                              ; preds = %244
  br label %285

262:                                              ; preds = %241
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 4
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 1
  %267 = load i64 (i32, i64*, i32)*, i64 (i32, i64*, i32)** %266, align 8
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 4
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i64*, i64** %10, align 8
  %274 = load i32, i32* %4, align 4
  %275 = call i64 %267(i32 %272, i64* %273, i32 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %284

277:                                              ; preds = %262
  %278 = load i8*, i8** @FALSE, align 8
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 0
  store i8* %278, i8** %280, align 8
  %281 = load i32, i32* @MAJOR, align 4
  %282 = load i32, i32* @E_INVALID_STATE, align 4
  %283 = call i32 @RETURN_ERROR(i32 %281, i32 %282, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %284

284:                                              ; preds = %277, %262
  br label %285

285:                                              ; preds = %284, %261
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = call i32 @BD_GET(i64 %289)
  %291 = call i32 @BD_STATUS_AND_LENGTH(i32 %290)
  store i32 %291, i32* %6, align 4
  br label %45

292:                                              ; preds = %260, %45
  %293 = load i8*, i8** @FALSE, align 8
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 0
  store i8* %293, i8** %295, align 8
  %296 = load i32, i32* @E_OK, align 4
  store i32 %296, i32* %2, align 4
  br label %297

297:                                              ; preds = %292, %23
  %298 = load i32, i32* %2, align 4
  ret i32 %298
}

declare dso_local i32 @ASSERT_COND(%struct.TYPE_13__*) #1

declare dso_local i32 @XX_LockIntrSpinlock(i32) #1

declare dso_local i32 @XX_UnlockIntrSpinlock(i32, i32) #1

declare dso_local i32 @BD_STATUS_AND_LENGTH(i32) #1

declare dso_local i32 @BD_GET(i64) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i64* @BdBufferGet(i32, i32) #1

declare dso_local i32 @BdBufferSet(i32, i32, i64*) #1

declare dso_local i32 @BD_STATUS_AND_LENGTH_SET(i32, i32) #1

declare dso_local i64 @GetNextBdId(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @WRITE_UINT16(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
