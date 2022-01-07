; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_QM_PORTAL_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_QM_PORTAL_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__*, %struct.TYPE_11__*, i32, i32, %struct.qman_fq_cb*, i64, i64, i32, i32, i32, i64, i64*, i64, i32, i32, i32, i64, i32, i64, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.qman_fq_cb = type { i32, i32, i64, i64, i32, i32, i32, i32, i64 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@NO_IRQ = common dso_local global i64 0, align 8
@QMAN_PORTAL_FLAG_IRQ = common dso_local global i32 0, align 4
@QMAN_PORTAL_FLAG_IRQ_FAST = common dso_local global i32 0, align 4
@QMAN_PORTAL_FLAG_IRQ_SLOW = common dso_local global i32 0, align 4
@QMAN_PORTAL_FLAG_DCA = common dso_local global i64 0, align 8
@QMAN_PORTAL_FLAG_RSTASH = common dso_local global i64 0, align 8
@QMAN_PORTAL_FLAG_DSTASH = common dso_local global i64 0, align 8
@QM_SDQCR_COUNT_UPTO3 = common dso_local global i64 0, align 8
@QM_SDQCR_COUNT_EXACT1 = common dso_local global i64 0, align 8
@QM_SDQCR_DEDICATED_PRECEDENCE = common dso_local global i64 0, align 8
@QM_SDQCR_CHANNELS_DEDICATED = common dso_local global i64 0, align 8
@QM_MAX_NUM_OF_POOL_CHANNELS = common dso_local global i64 0, align 8
@QM_SDQCR_SOURCE_SPECIFICWQ = common dso_local global i64 0, align 8
@QM_SDQCR_SPECIFICWQ_DEDICATED = common dso_local global i64 0, align 8
@LoopDequeueRingDcaOptimized = common dso_local global i32 0, align 4
@LoopDequeueRingOptimized = common dso_local global i32 0, align 4
@LoopDequeueRing = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"f_RejectedFrame or f_DfltFrame callback not provided\00", align 1
@E_NO_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"FQ Null CB obj!!!\00", align 1
@null_cb_mr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"create portal failed\00", align 1
@TRACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Qman-Portal %d @ %p:%p\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Qman-Portal %d phys @ 0x%016llx:0x%016llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @QM_PORTAL_Init(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qman_fq_cb, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = load i32, i32* @E_INVALID_HANDLE, align 4
  %13 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_11__* %11, i32 %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = load i32, i32* @E_INVALID_HANDLE, align 4
  %18 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_11__* %16, i32 %17)
  %19 = call i32 @memset(%struct.qman_fq_cb* %8, i32 0, i32 48)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.qman_fq_cb, %struct.qman_fq_cb* %8, i32 0, i32 8
  store i64 %25, i64* %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 24
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.qman_fq_cb, %struct.qman_fq_cb* %8, i32 0, i32 7
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 23
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.qman_fq_cb, %struct.qman_fq_cb* %8, i32 0, i32 6
  store i32 %37, i32* %38, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 22
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.qman_fq_cb, %struct.qman_fq_cb* %8, i32 0, i32 5
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 21
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.qman_fq_cb, %struct.qman_fq_cb* %8, i32 0, i32 4
  store i32 %49, i32* %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @QmGetSetPortalParams(i32 %53, %struct.qman_fq_cb* %8)
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* @E_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %1
  %58 = load i32, i32* @MAJOR, align 4
  %59 = load i64, i64* %7, align 8
  %60 = load i8*, i8** @NO_MSG, align 8
  %61 = call i32 @RETURN_ERROR(i32 %58, i64 %59, i8* %60)
  br label %62

62:                                               ; preds = %57, %1
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NO_IRQ, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %78

72:                                               ; preds = %62
  %73 = load i32, i32* @QMAN_PORTAL_FLAG_IRQ, align 4
  %74 = load i32, i32* @QMAN_PORTAL_FLAG_IRQ_FAST, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @QMAN_PORTAL_FLAG_IRQ_SLOW, align 4
  %77 = or i32 %75, %76
  br label %78

78:                                               ; preds = %72, %71
  %79 = phi i32 [ 0, %71 ], [ %77, %72 ]
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %5, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 20
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = load i64, i64* @QMAN_PORTAL_FLAG_DCA, align 8
  br label %90

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i64 [ %88, %87 ], [ 0, %89 ]
  %92 = load i64, i64* %5, align 8
  %93 = or i64 %92, %91
  store i64 %93, i64* %5, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 19
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %90
  %101 = load i64, i64* @QMAN_PORTAL_FLAG_RSTASH, align 8
  br label %103

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i64 [ %101, %100 ], [ 0, %102 ]
  %105 = load i64, i64* %5, align 8
  %106 = or i64 %105, %104
  store i64 %106, i64* %5, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 18
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %103
  %114 = load i64, i64* @QMAN_PORTAL_FLAG_DSTASH, align 8
  br label %116

115:                                              ; preds = %103
  br label %116

116:                                              ; preds = %115, %113
  %117 = phi i64 [ %114, %113 ], [ 0, %115 ]
  %118 = load i64, i64* %5, align 8
  %119 = or i64 %118, %117
  store i64 %119, i64* %5, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 17
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 17
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 17
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %254, label %131

131:                                              ; preds = %116
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 16
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %131
  %139 = load i64, i64* @QM_SDQCR_COUNT_UPTO3, align 8
  br label %142

140:                                              ; preds = %131
  %141 = load i64, i64* @QM_SDQCR_COUNT_EXACT1, align 8
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi i64 [ %139, %138 ], [ %141, %140 ]
  %144 = load i64, i64* %6, align 8
  %145 = or i64 %144, %143
  store i64 %145, i64* %6, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 15
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @QM_SDQCR_TOKEN_SET(i32 %150)
  %152 = load i64, i64* %6, align 8
  %153 = or i64 %152, %151
  store i64 %153, i64* %6, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 14
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @QM_SDQCR_TYPE_SET(i32 %158)
  %160 = load i64, i64* %6, align 8
  %161 = or i64 %160, %159
  store i64 %161, i64* %6, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 13
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %222, label %168

168:                                              ; preds = %142
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 12
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %168
  %176 = load i64, i64* @QM_SDQCR_DEDICATED_PRECEDENCE, align 8
  br label %178

177:                                              ; preds = %168
  br label %178

178:                                              ; preds = %177, %175
  %179 = phi i64 [ %176, %175 ], [ 0, %177 ]
  %180 = load i64, i64* %6, align 8
  %181 = or i64 %180, %179
  store i64 %181, i64* %6, align 8
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 10
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %178
  %189 = load i64, i64* @QM_SDQCR_CHANNELS_DEDICATED, align 8
  br label %191

190:                                              ; preds = %178
  br label %191

191:                                              ; preds = %190, %188
  %192 = phi i64 [ %189, %188 ], [ 0, %190 ]
  %193 = load i64, i64* %6, align 8
  %194 = or i64 %193, %192
  store i64 %194, i64* %6, align 8
  store i64 0, i64* %4, align 8
  br label %195

195:                                              ; preds = %218, %191
  %196 = load i64, i64* %4, align 8
  %197 = load i64, i64* @QM_MAX_NUM_OF_POOL_CHANNELS, align 8
  %198 = icmp ult i64 %196, %197
  br i1 %198, label %199, label %221

199:                                              ; preds = %195
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 11
  %204 = load i64*, i64** %203, align 8
  %205 = load i64, i64* %4, align 8
  %206 = getelementptr inbounds i64, i64* %204, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %199
  %210 = load i64, i64* %4, align 8
  %211 = add i64 %210, 1
  %212 = call i64 @QM_SDQCR_CHANNELS_POOL(i64 %211)
  br label %214

213:                                              ; preds = %199
  br label %214

214:                                              ; preds = %213, %209
  %215 = phi i64 [ %212, %209 ], [ 0, %213 ]
  %216 = load i64, i64* %6, align 8
  %217 = or i64 %216, %215
  store i64 %217, i64* %6, align 8
  br label %218

218:                                              ; preds = %214
  %219 = load i64, i64* %4, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %4, align 8
  br label %195

221:                                              ; preds = %195
  br label %253

222:                                              ; preds = %142
  %223 = load i64, i64* @QM_SDQCR_SOURCE_SPECIFICWQ, align 8
  %224 = load i64, i64* %6, align 8
  %225 = or i64 %224, %223
  store i64 %225, i64* %6, align 8
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 10
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %222
  %233 = load i64, i64* @QM_SDQCR_SPECIFICWQ_DEDICATED, align 8
  br label %241

234:                                              ; preds = %222
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 9
  %239 = load i32, i32* %238, align 8
  %240 = call i64 @QM_SDQCR_SPECIFICWQ_POOL(i32 %239)
  br label %241

241:                                              ; preds = %234, %232
  %242 = phi i64 [ %233, %232 ], [ %240, %234 ]
  %243 = load i64, i64* %6, align 8
  %244 = or i64 %243, %242
  store i64 %244, i64* %6, align 8
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 8
  %249 = load i32, i32* %248, align 4
  %250 = call i64 @QM_SDQCR_SPECIFICWQ_WQ(i32 %249)
  %251 = load i64, i64* %6, align 8
  %252 = or i64 %251, %250
  store i64 %252, i64* %6, align 8
  br label %253

253:                                              ; preds = %241, %221
  br label %254

254:                                              ; preds = %253, %116
  %255 = load i64, i64* %5, align 8
  %256 = load i64, i64* @QMAN_PORTAL_FLAG_RSTASH, align 8
  %257 = and i64 %255, %256
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %254
  %260 = load i64, i64* %5, align 8
  %261 = load i64, i64* @QMAN_PORTAL_FLAG_DCA, align 8
  %262 = and i64 %260, %261
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %259
  %265 = load i32, i32* @LoopDequeueRingDcaOptimized, align 4
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 7
  store i32 %265, i32* %267, align 8
  br label %287

268:                                              ; preds = %259, %254
  %269 = load i64, i64* %5, align 8
  %270 = load i64, i64* @QMAN_PORTAL_FLAG_RSTASH, align 8
  %271 = and i64 %269, %270
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %282

273:                                              ; preds = %268
  %274 = load i64, i64* %5, align 8
  %275 = load i64, i64* @QMAN_PORTAL_FLAG_DCA, align 8
  %276 = and i64 %274, %275
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %282, label %278

278:                                              ; preds = %273
  %279 = load i32, i32* @LoopDequeueRingOptimized, align 4
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 7
  store i32 %279, i32* %281, align 8
  br label %286

282:                                              ; preds = %273, %268
  %283 = load i32, i32* @LoopDequeueRing, align 4
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 7
  store i32 %283, i32* %285, align 8
  br label %286

286:                                              ; preds = %282, %278
  br label %287

287:                                              ; preds = %286, %264
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 5
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %287
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 6
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %301, label %297

297:                                              ; preds = %292, %287
  %298 = load i32, i32* @MAJOR, align 4
  %299 = load i64, i64* @E_INVALID_VALUE, align 8
  %300 = call i32 @RETURN_ERROR(i32 %298, i64 %299, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %301

301:                                              ; preds = %297, %292
  %302 = call i64 @XX_Malloc(i32 48)
  %303 = inttoptr i64 %302 to %struct.qman_fq_cb*
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 4
  store %struct.qman_fq_cb* %303, %struct.qman_fq_cb** %305, align 8
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 4
  %308 = load %struct.qman_fq_cb*, %struct.qman_fq_cb** %307, align 8
  %309 = icmp ne %struct.qman_fq_cb* %308, null
  br i1 %309, label %314, label %310

310:                                              ; preds = %301
  %311 = load i32, i32* @MAJOR, align 4
  %312 = load i64, i64* @E_NO_MEMORY, align 8
  %313 = call i32 @RETURN_ERROR(i32 %311, i64 %312, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %314

314:                                              ; preds = %310, %301
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 4
  %317 = load %struct.qman_fq_cb*, %struct.qman_fq_cb** %316, align 8
  %318 = call i32 @memset(%struct.qman_fq_cb* %317, i32 0, i32 48)
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 6
  %321 = load i64, i64* %320, align 8
  %322 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 4
  %324 = load %struct.qman_fq_cb*, %struct.qman_fq_cb** %323, align 8
  %325 = getelementptr inbounds %struct.qman_fq_cb, %struct.qman_fq_cb* %324, i32 0, i32 3
  store i64 %321, i64* %325, align 8
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 5
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i32 0, i32 4
  %331 = load %struct.qman_fq_cb*, %struct.qman_fq_cb** %330, align 8
  %332 = getelementptr inbounds %struct.qman_fq_cb, %struct.qman_fq_cb* %331, i32 0, i32 2
  store i64 %328, i64* %332, align 8
  %333 = load i32, i32* @null_cb_mr, align 4
  %334 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i32 0, i32 4
  %336 = load %struct.qman_fq_cb*, %struct.qman_fq_cb** %335, align 8
  %337 = getelementptr inbounds %struct.qman_fq_cb, %struct.qman_fq_cb* %336, i32 0, i32 0
  store i32 %333, i32* %337, align 8
  %338 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 4
  %340 = load %struct.qman_fq_cb*, %struct.qman_fq_cb** %339, align 8
  %341 = getelementptr inbounds %struct.qman_fq_cb, %struct.qman_fq_cb* %340, i32 0, i32 1
  store i32 %333, i32* %341, align 4
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %343 = load i64, i64* %5, align 8
  %344 = load i64, i64* %6, align 8
  %345 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i32 0, i32 1
  %347 = load %struct.TYPE_11__*, %struct.TYPE_11__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 4
  %350 = call i64 @qman_create_portal(%struct.TYPE_11__* %342, i64 %343, i64 %344, i32 %349)
  %351 = load i64, i64* @E_OK, align 8
  %352 = icmp ne i64 %350, %351
  br i1 %352, label %353, label %357

353:                                              ; preds = %314
  %354 = load i32, i32* @MAJOR, align 4
  %355 = load i64, i64* @E_NO_MEMORY, align 8
  %356 = call i32 @RETURN_ERROR(i32 %354, i64 %355, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %357

357:                                              ; preds = %353, %314
  %358 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %362 = ptrtoint %struct.TYPE_11__* %361 to i64
  %363 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_9__*, %struct.TYPE_9__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = trunc i64 %368 to i32
  %370 = call i32 @QmSetPortalHandle(i32 %360, i64 %362, i32 %369)
  %371 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %371, i32 0, i32 1
  %373 = load %struct.TYPE_11__*, %struct.TYPE_11__** %372, align 8
  %374 = call i32 @XX_Free(%struct.TYPE_11__* %373)
  %375 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %376, align 8
  %377 = load i32, i32* @TRACE, align 4
  %378 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %378, i32 0, i32 0
  %380 = load %struct.TYPE_9__*, %struct.TYPE_9__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 1
  %383 = load i64, i64* %382, align 8
  %384 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i32 0, i32 0
  %386 = load %struct.TYPE_9__*, %struct.TYPE_9__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %391 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %390, i32 0, i32 0
  %392 = load %struct.TYPE_9__*, %struct.TYPE_9__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = sext i32 %395 to i64
  %397 = inttoptr i64 %396 to i8*
  %398 = call i32 @DBG(i32 %377, i8* %397)
  %399 = load i32, i32* @TRACE, align 4
  %400 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %401 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %400, i32 0, i32 0
  %402 = load %struct.TYPE_9__*, %struct.TYPE_9__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %403, i32 0, i32 1
  %405 = load i64, i64* %404, align 8
  %406 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %406, i32 0, i32 0
  %408 = load %struct.TYPE_9__*, %struct.TYPE_9__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = call i64 @XX_VirtToPhys(i32 %411)
  %413 = trunc i64 %412 to i32
  %414 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %415 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %414, i32 0, i32 0
  %416 = load %struct.TYPE_9__*, %struct.TYPE_9__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = call i64 @XX_VirtToPhys(i32 %419)
  %421 = trunc i64 %420 to i32
  %422 = sext i32 %421 to i64
  %423 = inttoptr i64 %422 to i8*
  %424 = call i32 @DBG(i32 %399, i8* %423)
  %425 = load i64, i64* @E_OK, align 8
  ret i64 %425
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @memset(%struct.qman_fq_cb*, i32, i32) #1

declare dso_local i64 @QmGetSetPortalParams(i32, %struct.qman_fq_cb*) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i64 @QM_SDQCR_TOKEN_SET(i32) #1

declare dso_local i64 @QM_SDQCR_TYPE_SET(i32) #1

declare dso_local i64 @QM_SDQCR_CHANNELS_POOL(i64) #1

declare dso_local i64 @QM_SDQCR_SPECIFICWQ_POOL(i32) #1

declare dso_local i64 @QM_SDQCR_SPECIFICWQ_WQ(i32) #1

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i64 @qman_create_portal(%struct.TYPE_11__*, i64, i64, i32) #1

declare dso_local i32 @QmSetPortalHandle(i32, i64, i32) #1

declare dso_local i32 @XX_Free(%struct.TYPE_11__*) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i64 @XX_VirtToPhys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
