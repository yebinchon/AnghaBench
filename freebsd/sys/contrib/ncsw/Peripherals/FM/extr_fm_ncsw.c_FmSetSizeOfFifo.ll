; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FmSetSizeOfFifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FmSetSizeOfFifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_8__*, i64, i64*, %struct.fman_bmi_regs* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.fman_bmi_regs = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32, i32 }

@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@FM_SET_SIZE_OF_FIFO = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@MINOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"IPC reply length mismatch\00", align 1
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"No IPC - can't validate FM total-fifo size.\00", align 1
@E_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"running in guest-mode without neither IPC nor mapped register!\00", align 1
@FM_MAX_NUM_OF_RX_PORTS = common dso_local global i32 0, align 4
@BMI_FIFO_UNITS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"Port request fifo size + accumulated size > total FIFO size:\00", align 1
@.str.4 = private unnamed_addr constant [85 x i8] c"port 0x%x requested %d bytes, extra size = %d, accumulated size = %d total size = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FmSetSizeOfFifo(i64 %0, i8* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.fman_bmi_regs*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_9__, align 4
  %21 = alloca %struct.TYPE_9__, align 4
  %22 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %23 = load i64, i64* %7, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %12, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 4
  %27 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %26, align 8
  store %struct.fman_bmi_regs* %27, %struct.fman_bmi_regs** %15, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %16, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NCSW_MASTER_ID, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %93

37:                                               ; preds = %5
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %93, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %93

49:                                               ; preds = %42
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  store i8* %50, i8** %51, align 8
  %52 = load i32, i32* %16, align 4
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = load i32, i32* %17, align 4
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  store i8* %58, i8** %59, align 8
  %60 = call i32 @memset(%struct.TYPE_9__* %20, i32 0, i32 12)
  %61 = call i32 @memset(%struct.TYPE_9__* %21, i32 0, i32 12)
  %62 = load i32, i32* @FM_SET_SIZE_OF_FIFO, align 4
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memcpy(i32 %65, %struct.TYPE_10__* %13, i32 24)
  store i32 4, i32* %22, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 3
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  %71 = load i64, i64* %70, align 8
  %72 = bitcast %struct.TYPE_9__* %20 to i8**
  %73 = bitcast %struct.TYPE_9__* %21 to i8**
  %74 = call i32 @XX_IpcSendMessage(i64 %71, i8** %72, i32 28, i8** %73, i32* %22, i32* null, i32* null)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* @E_OK, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %49
  %78 = load i32, i32* @MINOR, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i8*, i8** @NO_MSG, align 8
  %81 = call i32 @RETURN_ERROR(i32 %78, i32 %79, i8* %80)
  br label %82

82:                                               ; preds = %77, %49
  %83 = load i32, i32* %22, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp ne i64 %84, 4
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* @MAJOR, align 4
  %88 = load i32, i32* @E_INVALID_VALUE, align 4
  %89 = call i32 @RETURN_ERROR(i32 %87, i32 %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %86, %82
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %6, align 4
  br label %247

93:                                               ; preds = %42, %37, %5
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @NCSW_MASTER_ID, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %93
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load i32, i32* @WARNING, align 4
  %106 = call i32 @DBG(i32 %105, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %107 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %15, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %17, align 4
  %111 = call i32 @fman_set_size_of_fifo(%struct.fman_bmi_regs* %107, i8* %108, i32 %109, i32 %110)
  br label %123

112:                                              ; preds = %99, %93
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @NCSW_MASTER_ID, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i32, i32* @MAJOR, align 4
  %120 = load i32, i32* @E_NOT_SUPPORTED, align 4
  %121 = call i32 @RETURN_ERROR(i32 %119, i32 %120, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  br label %122

122:                                              ; preds = %118, %112
  br label %123

123:                                              ; preds = %122, %104
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %124
  %128 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %15, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = call i32 @fman_get_size_of_extra_fifo(%struct.fman_bmi_regs* %128, i8* %129)
  store i32 %130, i32* %19, align 4
  %131 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %15, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = call i32 @fman_get_size_of_fifo(%struct.fman_bmi_regs* %131, i8* %132)
  store i32 %133, i32* %18, align 4
  br label %134

134:                                              ; preds = %127, %124
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %19, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %168

138:                                              ; preds = %134
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %138
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %156, label %148

148:                                              ; preds = %141
  %149 = load i32, i32* @FM_MAX_NUM_OF_RX_PORTS, align 4
  %150 = load i32, i32* @BMI_FIFO_UNITS, align 4
  %151 = mul nsw i32 %149, %150
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  store i32 %151, i32* %155, align 4
  br label %156

156:                                              ; preds = %148, %141, %138
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %17, align 4
  %163 = call i32 @MAX(i32 %161, i32 %162)
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  store i32 %163, i32* %167, align 4
  br label %168

168:                                              ; preds = %156, %134
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %18, align 4
  %175 = sub nsw i32 %173, %174
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %175, %176
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 %182, %187
  %189 = icmp sgt i32 %177, %188
  br i1 %189, label %190, label %216

190:                                              ; preds = %168
  %191 = load i32, i32* @MAJOR, align 4
  %192 = load i32, i32* @E_INVALID_VALUE, align 4
  %193 = call i32 @REPORT_ERROR(i32 %191, i32 %192, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  %194 = load i32, i32* @MAJOR, align 4
  %195 = load i32, i32* @E_INVALID_VALUE, align 4
  %196 = load i8*, i8** %8, align 8
  %197 = load i32, i32* %16, align 4
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = inttoptr i64 %213 to i8*
  %215 = call i32 @RETURN_ERROR(i32 %194, i32 %195, i8* %214)
  br label %245

216:                                              ; preds = %168
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %18, align 4
  %223 = icmp sge i32 %221, %222
  %224 = zext i1 %223 to i32
  %225 = call i32 @ASSERT_COND(i32 %224)
  %226 = load i32, i32* %18, align 4
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = sub nsw i32 %231, %226
  store i32 %232, i32* %230, align 4
  %233 = load i32, i32* %16, align 4
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, %233
  store i32 %239, i32* %237, align 4
  %240 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %15, align 8
  %241 = load i8*, i8** %8, align 8
  %242 = load i32, i32* %16, align 4
  %243 = load i32, i32* %17, align 4
  %244 = call i32 @fman_set_size_of_fifo(%struct.fman_bmi_regs* %240, i8* %241, i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %216, %190
  %246 = load i32, i32* @E_OK, align 4
  store i32 %246, i32* %6, align 4
  br label %247

247:                                              ; preds = %245, %90
  %248 = load i32, i32* %6, align 4
  ret i32 %248
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @XX_IpcSendMessage(i64, i8**, i32, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i32 @fman_set_size_of_fifo(%struct.fman_bmi_regs*, i8*, i32, i32) #1

declare dso_local i32 @fman_get_size_of_extra_fifo(%struct.fman_bmi_regs*, i8*) #1

declare dso_local i32 @fman_get_size_of_fifo(%struct.fman_bmi_regs*, i8*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @ASSERT_COND(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
