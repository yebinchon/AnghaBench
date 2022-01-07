; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FmSetNumOfOpenDmas.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FmSetNumOfOpenDmas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_10__*, i64, i64*, %struct.fman_bmi_regs* }
%struct.TYPE_10__ = type { i64, i64, i64, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.fman_bmi_regs = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@FM_SET_NUM_OF_OPEN_DMAS = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@MINOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"IPC reply length mismatch\00", align 1
@E_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"running in guest-mode without neither IPC nor mapped register!\00", align 1
@DMA_THRESH_MAX_COMMQ = common dso_local global i64 0, align 8
@E_NOT_AVAILABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"Requested numOfOpenDmas for fm%d exceeds DMA Command queue (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FmSetNumOfOpenDmas(i64 %0, i64 %1, i64* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fman_bmi_regs*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_12__, align 8
  %21 = alloca %struct.TYPE_11__, align 4
  %22 = alloca %struct.TYPE_11__, align 4
  %23 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %24 = load i64, i64* %7, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %12, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 4
  %28 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %27, align 8
  store %struct.fman_bmi_regs* %28, %struct.fman_bmi_regs** %14, align 8
  %29 = load i64*, i64** %9, align 8
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %15, align 8
  %31 = load i64*, i64** %10, align 8
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @IN_RANGE(i32 1, i64 %33, i32 63)
  %35 = call i32 @ASSERT_COND(i32 %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NCSW_MASTER_ID, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %96

41:                                               ; preds = %5
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %96, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 3
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %96

53:                                               ; preds = %46
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 3
  store i64 %54, i64* %55, align 8
  %56 = load i64, i64* %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  store i64 %56, i64* %57, align 8
  %58 = load i64, i64* %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  store i64 %58, i64* %59, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = call i32 @memset(%struct.TYPE_11__* %21, i32 0, i32 12)
  %64 = call i32 @memset(%struct.TYPE_11__* %22, i32 0, i32 12)
  %65 = load i32, i32* @FM_SET_NUM_OF_OPEN_DMAS, align 4
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @memcpy(i32 %68, %struct.TYPE_12__* %20, i32 32)
  store i32 4, i32* %23, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 3
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  %74 = load i64, i64* %73, align 8
  %75 = bitcast %struct.TYPE_11__* %21 to i64*
  %76 = bitcast %struct.TYPE_11__* %22 to i64*
  %77 = call i32 @XX_IpcSendMessage(i64 %74, i64* %75, i32 36, i64* %76, i32* %23, i32* null, i32* null)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* @E_OK, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %53
  %81 = load i32, i32* @MINOR, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i8*, i8** @NO_MSG, align 8
  %84 = call i32 @RETURN_ERROR(i32 %81, i32 %82, i8* %83)
  br label %85

85:                                               ; preds = %80, %53
  %86 = load i32, i32* %23, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp ne i64 %87, 4
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* @MAJOR, align 4
  %91 = load i32, i32* @E_INVALID_VALUE, align 4
  %92 = call i32 @RETURN_ERROR(i32 %90, i32 %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %89, %85
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %6, align 4
  br label %248

96:                                               ; preds = %46, %41, %5
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @NCSW_MASTER_ID, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %145

102:                                              ; preds = %96
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %145

107:                                              ; preds = %102
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sge i32 %113, 6
  br i1 %114, label %115, label %145

115:                                              ; preds = %107
  %116 = load i64, i64* %15, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %127, label %118

118:                                              ; preds = %115
  %119 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %14, align 8
  %120 = load i64, i64* %8, align 8
  %121 = call i64 @fman_get_num_of_dmas(%struct.fman_bmi_regs* %119, i64 %120)
  %122 = load i64*, i64** %9, align 8
  store i64 %121, i64* %122, align 8
  %123 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %14, align 8
  %124 = load i64, i64* %8, align 8
  %125 = call i64 @fman_get_num_extra_dmas(%struct.fman_bmi_regs* %123, i64 %124)
  %126 = load i64*, i64** %10, align 8
  store i64 %125, i64* %126, align 8
  br label %144

127:                                              ; preds = %115
  %128 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %14, align 8
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* %15, align 8
  %131 = load i64, i64* %16, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %136, %141
  %143 = call i32 @fman_set_num_of_open_dmas(%struct.fman_bmi_regs* %128, i64 %129, i64 %130, i64 %131, i64 %142)
  br label %144

144:                                              ; preds = %127, %118
  br label %156

145:                                              ; preds = %107, %102, %96
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @NCSW_MASTER_ID, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = load i32, i32* @MAJOR, align 4
  %153 = load i32, i32* @E_NOT_SUPPORTED, align 4
  %154 = call i32 @RETURN_ERROR(i32 %152, i32 %153, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %155

155:                                              ; preds = %151, %145
  br label %156

156:                                              ; preds = %155, %144
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %167, label %160

160:                                              ; preds = %157
  %161 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %14, align 8
  %162 = load i64, i64* %8, align 8
  %163 = call i64 @fman_get_num_extra_dmas(%struct.fman_bmi_regs* %161, i64 %162)
  store i64 %163, i64* %19, align 8
  %164 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %14, align 8
  %165 = load i64, i64* %8, align 8
  %166 = call i64 @fman_get_num_of_dmas(%struct.fman_bmi_regs* %164, i64 %165)
  store i64 %166, i64* %18, align 8
  br label %167

167:                                              ; preds = %160, %157
  %168 = load i64, i64* %16, align 8
  %169 = load i64, i64* %19, align 8
  %170 = icmp sgt i64 %168, %169
  br i1 %170, label %171, label %183

171:                                              ; preds = %167
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %16, align 8
  %178 = call i64 @MAX(i64 %176, i64 %177)
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  store i64 %178, i64* %182, align 8
  br label %183

183:                                              ; preds = %171, %167
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp sge i32 %189, 6
  br i1 %190, label %191, label %216

191:                                              ; preds = %183
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* %18, align 8
  %198 = sub nsw i64 %196, %197
  %199 = load i64, i64* %15, align 8
  %200 = add nsw i64 %198, %199
  %201 = load i64, i64* @DMA_THRESH_MAX_COMMQ, align 8
  %202 = add nsw i64 %201, 1
  %203 = icmp sgt i64 %200, %202
  br i1 %203, label %204, label %216

204:                                              ; preds = %191
  %205 = load i32, i32* @MAJOR, align 4
  %206 = load i32, i32* @E_NOT_AVAILABLE, align 4
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = load i64, i64* @DMA_THRESH_MAX_COMMQ, align 8
  %213 = add nsw i64 %212, 1
  %214 = inttoptr i64 %213 to i8*
  %215 = call i32 @RETURN_ERROR(i32 %205, i32 %206, i8* %214)
  br label %246

216:                                              ; preds = %191, %183
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* %18, align 8
  %223 = icmp sge i64 %221, %222
  %224 = zext i1 %223 to i32
  %225 = call i32 @ASSERT_COND(i32 %224)
  %226 = load i64, i64* %18, align 8
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = sub nsw i64 %231, %226
  store i64 %232, i64* %230, align 8
  %233 = load i64, i64* %15, align 8
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = add nsw i64 %238, %233
  store i64 %239, i64* %237, align 8
  %240 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %14, align 8
  %241 = load i64, i64* %8, align 8
  %242 = load i64, i64* %15, align 8
  %243 = load i64, i64* %16, align 8
  %244 = load i64, i64* %17, align 8
  %245 = call i32 @fman_set_num_of_open_dmas(%struct.fman_bmi_regs* %240, i64 %241, i64 %242, i64 %243, i64 %244)
  br label %246

246:                                              ; preds = %216, %204
  %247 = load i32, i32* @E_OK, align 4
  store i32 %247, i32* %6, align 4
  br label %248

248:                                              ; preds = %246, %93
  %249 = load i32, i32* %6, align 4
  ret i32 %249
}

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @IN_RANGE(i32, i64, i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @XX_IpcSendMessage(i64, i64*, i32, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i64 @fman_get_num_of_dmas(%struct.fman_bmi_regs*, i64) #1

declare dso_local i64 @fman_get_num_extra_dmas(%struct.fman_bmi_regs*, i64) #1

declare dso_local i32 @fman_set_num_of_open_dmas(%struct.fman_bmi_regs*, i64, i64, i64, i64) #1

declare dso_local i64 @MAX(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
