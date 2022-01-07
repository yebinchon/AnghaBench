; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_LoopDequeueRing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_LoopDequeueRing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_dqrr_entry = type { i32, i32, i32, i32 }
%struct.qman_fq = type { i64, i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 (i32, i32, %struct.TYPE_9__*, i32, i32*)* }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 (i32, i32*, %struct.TYPE_9__*, i32, i32*)* }

@qman_cb_dqrr_consume = common dso_local global i32 0, align 4
@QMAN_PORTAL_FLAG_RSTASH = common dso_local global i32 0, align 4
@qman_cb_dqrr_pause = common dso_local global i32 0, align 4
@QM_DQRR_STAT_UNSCHEDULED = common dso_local global i32 0, align 4
@e_RX_STORE_RESPONSE_PAUSE = common dso_local global i64 0, align 8
@QM_DQRR_STAT_DQCR_EXPIRED = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_VDQCR = common dso_local global i32 0, align 4
@QM_DQRR_STAT_FQ_EMPTY = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_NE = common dso_local global i32 0, align 4
@qman_fq_state_waiting_parked = common dso_local global i64 0, align 8
@qman_cb_dqrr_park = common dso_local global i32 0, align 4
@QM_DQRR_STAT_FQ_HELDACTIVE = common dso_local global i32 0, align 4
@QMAN_PORTAL_FLAG_DCA = common dso_local global i32 0, align 4
@qman_cb_dqrr_defer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @LoopDequeueRing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoopDequeueRing(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.qm_dqrr_entry*, align 8
  %4 = alloca %struct.qman_fq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %9 = load i32, i32* @qman_cb_dqrr_consume, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i64, i64* %2, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @QMAN_PORTAL_FLAG_RSTASH, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %230, %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @qman_cb_dqrr_pause, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %231

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @qmPortalDqrrPvbPrefetch(i32 %30)
  br label %32

32:                                               ; preds = %27, %24
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @qmPortalDqrrPvbUpdate(i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.qm_dqrr_entry* @qm_dqrr_current(i32 %39)
  store %struct.qm_dqrr_entry* %40, %struct.qm_dqrr_entry** %3, align 8
  %41 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %42 = icmp ne %struct.qm_dqrr_entry* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  br label %231

44:                                               ; preds = %32
  %45 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %46 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.qman_fq* @ptr_from_aligned_int(i32 %47)
  store %struct.qman_fq* %48, %struct.qman_fq** %4, align 8
  %49 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %50 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @QM_DQRR_STAT_UNSCHEDULED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %109

55:                                               ; preds = %44
  %56 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %57 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64 (i32, i32, %struct.TYPE_9__*, i32, i32*)*, i64 (i32, i32, %struct.TYPE_9__*, i32, i32*)** %58, align 8
  %60 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %61 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %64 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %67 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %68 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %71 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %70, i32 0, i32 2
  %72 = call i64 %59(i32 %62, i32 %65, %struct.TYPE_9__* %66, i32 %69, i32* %71)
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @e_RX_STORE_RESPONSE_PAUSE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %55
  %77 = load i32, i32* @qman_cb_dqrr_pause, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %55
  %79 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %80 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @QM_DQRR_STAT_DQCR_EXPIRED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load i32, i32* @QMAN_FQ_STATE_VDQCR, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %89 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %85, %78
  %93 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %94 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @QM_DQRR_STAT_FQ_EMPTY, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %92
  %100 = load i32, i32* @QMAN_FQ_STATE_NE, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %103 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %107 = call i32 @freeDrainedFq(%struct.qman_fq* %106)
  br label %108

108:                                              ; preds = %99, %92
  br label %172

109:                                              ; preds = %44
  %110 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %111 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ASSERT_COND(i32 %112)
  %114 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %115 = icmp ne %struct.qman_fq* %114, null
  br i1 %115, label %116, label %149

116:                                              ; preds = %109
  %117 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %118 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i64 (i32, i32, %struct.TYPE_9__*, i32, i32*)*, i64 (i32, i32, %struct.TYPE_9__*, i32, i32*)** %119, align 8
  %121 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %122 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %125 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %128 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %129 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %132 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %131, i32 0, i32 2
  %133 = call i64 %120(i32 %123, i32 %126, %struct.TYPE_9__* %127, i32 %130, i32* %132)
  store i64 %133, i64* %6, align 8
  %134 = load i64, i64* %6, align 8
  %135 = load i64, i64* @e_RX_STORE_RESPONSE_PAUSE, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %116
  %138 = load i32, i32* @qman_cb_dqrr_pause, align 4
  store i32 %138, i32* %5, align 4
  br label %148

139:                                              ; preds = %116
  %140 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %141 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @qman_fq_state_waiting_parked, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = load i32, i32* @qman_cb_dqrr_park, align 4
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %145, %139
  br label %148

148:                                              ; preds = %147, %137
  br label %171

149:                                              ; preds = %109
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 3
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i64 (i32, i32*, %struct.TYPE_9__*, i32, i32*)*, i64 (i32, i32*, %struct.TYPE_9__*, i32, i32*)** %153, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %159 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %160 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %163 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %162, i32 0, i32 2
  %164 = call i64 %154(i32 %157, i32* null, %struct.TYPE_9__* %158, i32 %161, i32* %163)
  store i64 %164, i64* %6, align 8
  %165 = load i64, i64* %6, align 8
  %166 = load i64, i64* @e_RX_STORE_RESPONSE_PAUSE, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %149
  %169 = load i32, i32* @qman_cb_dqrr_pause, align 4
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %168, %149
  br label %171

171:                                              ; preds = %170, %148
  br label %172

172:                                              ; preds = %171, %108
  %173 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %174 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @QM_DQRR_STAT_FQ_HELDACTIVE, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %172
  %180 = load i32, i32* %5, align 4
  %181 = load i32, i32* @qman_cb_dqrr_park, align 4
  %182 = icmp ne i32 %180, %181
  br label %183

183:                                              ; preds = %179, %172
  %184 = phi i1 [ true, %172 ], [ %182, %179 ]
  %185 = zext i1 %184 to i32
  %186 = call i32 @ASSERT_COND(i32 %185)
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @QMAN_PORTAL_FLAG_DCA, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %212

193:                                              ; preds = %183
  %194 = load i32, i32* %5, align 4
  %195 = load i32, i32* @qman_cb_dqrr_defer, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %207

197:                                              ; preds = %193
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* @qman_cb_dqrr_park, align 4
  %204 = icmp eq i32 %202, %203
  %205 = zext i1 %204 to i32
  %206 = call i32 @qmPortalDqrrDcaConsume1ptr(i32 %200, %struct.qm_dqrr_entry* %201, i32 %205)
  br label %207

207:                                              ; preds = %197, %193
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @qm_dqrr_next(i32 %210)
  br label %230

212:                                              ; preds = %183
  %213 = load i32, i32* %5, align 4
  %214 = load i32, i32* @qman_cb_dqrr_park, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %221

216:                                              ; preds = %212
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @qm_dqrr_park_ci(i32 %219)
  br label %221

221:                                              ; preds = %216, %212
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @qm_dqrr_next(i32 %224)
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @qmPortalDqrrCciConsume(i32 %228, i32 1)
  br label %230

230:                                              ; preds = %221, %207
  br label %20

231:                                              ; preds = %43, %20
  ret void
}

declare dso_local i32 @qmPortalDqrrPvbPrefetch(i32) #1

declare dso_local i32 @qmPortalDqrrPvbUpdate(i32) #1

declare dso_local %struct.qm_dqrr_entry* @qm_dqrr_current(i32) #1

declare dso_local %struct.qman_fq* @ptr_from_aligned_int(i32) #1

declare dso_local i32 @freeDrainedFq(%struct.qman_fq*) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @qmPortalDqrrDcaConsume1ptr(i32, %struct.qm_dqrr_entry*, i32) #1

declare dso_local i32 @qm_dqrr_next(i32) #1

declare dso_local i32 @qm_dqrr_park_ci(i32) #1

declare dso_local i32 @qmPortalDqrrCciConsume(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
