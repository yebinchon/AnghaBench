; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm.c_QM_ErrorIsr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm.c_QM_ErrorIsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 (i32, i32)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@E_INVALID_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Master Only\00", align 1
@QM_EX_CORENET_INITIATOR_DATA = common dso_local global i32 0, align 4
@e_QM_EX_CORENET_INITIATOR_DATA = common dso_local global i32 0, align 4
@QM_EX_CORENET_TARGET_DATA = common dso_local global i32 0, align 4
@e_QM_EX_CORENET_TARGET_DATA = common dso_local global i32 0, align 4
@QM_EX_CORENET_INVALID_TARGET_TRANSACTION = common dso_local global i32 0, align 4
@e_QM_EX_CORENET_INVALID_TARGET_TRANSACTION = common dso_local global i32 0, align 4
@QM_EX_PFDR_THRESHOLD = common dso_local global i32 0, align 4
@e_QM_EX_PFDR_THRESHOLD = common dso_local global i32 0, align 4
@QM_EX_MULTI_ECC = common dso_local global i32 0, align 4
@e_QM_EX_MULTI_ECC = common dso_local global i32 0, align 4
@QM_EX_SINGLE_ECC = common dso_local global i32 0, align 4
@e_QM_EX_SINGLE_ECC = common dso_local global i32 0, align 4
@QM_EX_PFDR_ENQUEUE_BLOCKED = common dso_local global i32 0, align 4
@e_QM_EX_PFDR_ENQUEUE_BLOCKED = common dso_local global i32 0, align 4
@QM_EX_INVALID_COMMAND = common dso_local global i32 0, align 4
@e_QM_EX_INVALID_COMMAND = common dso_local global i32 0, align 4
@QM_EX_DEQUEUE_DCP = common dso_local global i32 0, align 4
@e_QM_EX_DEQUEUE_DCP = common dso_local global i32 0, align 4
@QM_EX_DEQUEUE_FQ = common dso_local global i32 0, align 4
@e_QM_EX_DEQUEUE_FQ = common dso_local global i32 0, align 4
@QM_EX_DEQUEUE_SOURCE = common dso_local global i32 0, align 4
@e_QM_EX_DEQUEUE_SOURCE = common dso_local global i32 0, align 4
@QM_EX_DEQUEUE_QUEUE = common dso_local global i32 0, align 4
@e_QM_EX_DEQUEUE_QUEUE = common dso_local global i32 0, align 4
@QM_EX_ENQUEUE_OVERFLOW = common dso_local global i32 0, align 4
@e_QM_EX_ENQUEUE_OVERFLOW = common dso_local global i32 0, align 4
@QM_EX_ENQUEUE_STATE = common dso_local global i32 0, align 4
@e_QM_EX_ENQUEUE_STATE = common dso_local global i32 0, align 4
@QM_EX_ENQUEUE_CHANNEL = common dso_local global i32 0, align 4
@e_QM_EX_ENQUEUE_CHANNEL = common dso_local global i32 0, align 4
@QM_EX_ENQUEUE_QUEUE = common dso_local global i32 0, align 4
@e_QM_EX_ENQUEUE_QUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @QM_ErrorIsr(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = load i32, i32* @E_INVALID_HANDLE, align 4
  %9 = call i32 @SANITY_CHECK_RETURN(%struct.TYPE_5__* %7, i32 %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NCSW_MASTER_ID, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @WARNING, align 4
  %17 = load i32, i32* @E_INVALID_OPERATION, align 4
  %18 = call i32 @REPORT_ERROR(i32 %16, i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %264

19:                                               ; preds = %1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @GET_UINT32(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @GET_UINT32(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @WRITE_UINT32(i32 %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @QM_EX_CORENET_INITIATOR_DATA, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %19
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32 (i32, i32)*, i32 (i32, i32)** %47, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @e_QM_EX_CORENET_INITIATOR_DATA, align 4
  %53 = call i32 %48(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %45, %19
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @QM_EX_CORENET_TARGET_DATA, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32 (i32, i32)*, i32 (i32, i32)** %61, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @e_QM_EX_CORENET_TARGET_DATA, align 4
  %67 = call i32 %62(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %59, %54
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @QM_EX_CORENET_INVALID_TARGET_TRANSACTION, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32 (i32, i32)*, i32 (i32, i32)** %75, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @e_QM_EX_CORENET_INVALID_TARGET_TRANSACTION, align 4
  %81 = call i32 %76(i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %73, %68
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @QM_EX_PFDR_THRESHOLD, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i32 (i32, i32)*, i32 (i32, i32)** %89, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @e_QM_EX_PFDR_THRESHOLD, align 4
  %95 = call i32 %90(i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %87, %82
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @QM_EX_MULTI_ECC, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %96
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = load i32 (i32, i32)*, i32 (i32, i32)** %103, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @e_QM_EX_MULTI_ECC, align 4
  %109 = call i32 %104(i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %101, %96
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @QM_EX_SINGLE_ECC, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = load i32 (i32, i32)*, i32 (i32, i32)** %117, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @e_QM_EX_SINGLE_ECC, align 4
  %123 = call i32 %118(i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %115, %110
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @QM_EX_PFDR_ENQUEUE_BLOCKED, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %124
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = load i32 (i32, i32)*, i32 (i32, i32)** %131, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @e_QM_EX_PFDR_ENQUEUE_BLOCKED, align 4
  %137 = call i32 %132(i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %129, %124
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @QM_EX_INVALID_COMMAND, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %138
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 2
  %146 = load i32 (i32, i32)*, i32 (i32, i32)** %145, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @e_QM_EX_INVALID_COMMAND, align 4
  %151 = call i32 %146(i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %143, %138
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* @QM_EX_DEQUEUE_DCP, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %152
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 2
  %160 = load i32 (i32, i32)*, i32 (i32, i32)** %159, align 8
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @e_QM_EX_DEQUEUE_DCP, align 4
  %165 = call i32 %160(i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %157, %152
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* @QM_EX_DEQUEUE_FQ, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %166
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 2
  %174 = load i32 (i32, i32)*, i32 (i32, i32)** %173, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @e_QM_EX_DEQUEUE_FQ, align 4
  %179 = call i32 %174(i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %171, %166
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* @QM_EX_DEQUEUE_SOURCE, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %180
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  %188 = load i32 (i32, i32)*, i32 (i32, i32)** %187, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @e_QM_EX_DEQUEUE_SOURCE, align 4
  %193 = call i32 %188(i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %185, %180
  %195 = load i32, i32* %4, align 4
  %196 = load i32, i32* @QM_EX_DEQUEUE_QUEUE, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %194
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 2
  %202 = load i32 (i32, i32)*, i32 (i32, i32)** %201, align 8
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @e_QM_EX_DEQUEUE_QUEUE, align 4
  %207 = call i32 %202(i32 %205, i32 %206)
  br label %208

208:                                              ; preds = %199, %194
  %209 = load i32, i32* %4, align 4
  %210 = load i32, i32* @QM_EX_ENQUEUE_OVERFLOW, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %222

213:                                              ; preds = %208
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 2
  %216 = load i32 (i32, i32)*, i32 (i32, i32)** %215, align 8
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @e_QM_EX_ENQUEUE_OVERFLOW, align 4
  %221 = call i32 %216(i32 %219, i32 %220)
  br label %222

222:                                              ; preds = %213, %208
  %223 = load i32, i32* %4, align 4
  %224 = load i32, i32* @QM_EX_ENQUEUE_STATE, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %222
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 2
  %230 = load i32 (i32, i32)*, i32 (i32, i32)** %229, align 8
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @e_QM_EX_ENQUEUE_STATE, align 4
  %235 = call i32 %230(i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %227, %222
  %237 = load i32, i32* %4, align 4
  %238 = load i32, i32* @QM_EX_ENQUEUE_CHANNEL, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %250

241:                                              ; preds = %236
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 2
  %244 = load i32 (i32, i32)*, i32 (i32, i32)** %243, align 8
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @e_QM_EX_ENQUEUE_CHANNEL, align 4
  %249 = call i32 %244(i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %241, %236
  %251 = load i32, i32* %4, align 4
  %252 = load i32, i32* @QM_EX_ENQUEUE_QUEUE, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %264

255:                                              ; preds = %250
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 2
  %258 = load i32 (i32, i32)*, i32 (i32, i32)** %257, align 8
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @e_QM_EX_ENQUEUE_QUEUE, align 4
  %263 = call i32 %258(i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %15, %255, %250
  ret void
}

declare dso_local i32 @SANITY_CHECK_RETURN(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @GET_UINT32(i32) #1

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
