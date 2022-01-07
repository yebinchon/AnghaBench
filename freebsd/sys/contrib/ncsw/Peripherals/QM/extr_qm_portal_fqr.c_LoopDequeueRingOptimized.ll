; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_LoopDequeueRingOptimized.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_LoopDequeueRingOptimized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_dqrr_entry = type { i32, i32, i32, i32 }
%struct.qman_fq = type { i64, i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 (i32, i32, %struct.TYPE_9__*, i32, i32*)* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 (i32, i32*, %struct.TYPE_9__*, i32, i32*)* }

@qman_cb_dqrr_consume = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @LoopDequeueRingOptimized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoopDequeueRingOptimized(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.qm_dqrr_entry*, align 8
  %4 = alloca %struct.qman_fq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i32, i32* @qman_cb_dqrr_consume, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %7, align 8
  br label %11

11:                                               ; preds = %178, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @qman_cb_dqrr_pause, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %187

15:                                               ; preds = %11
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @qmPortalDqrrPvbUpdate(i32 %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.qm_dqrr_entry* @qm_dqrr_current(i32 %22)
  store %struct.qm_dqrr_entry* %23, %struct.qm_dqrr_entry** %3, align 8
  %24 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %25 = icmp ne %struct.qm_dqrr_entry* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  br label %187

27:                                               ; preds = %15
  %28 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %29 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.qman_fq* @ptr_from_aligned_int(i32 %30)
  store %struct.qman_fq* %31, %struct.qman_fq** %4, align 8
  %32 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %33 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @QM_DQRR_STAT_UNSCHEDULED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %92

38:                                               ; preds = %27
  %39 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %40 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64 (i32, i32, %struct.TYPE_9__*, i32, i32*)*, i64 (i32, i32, %struct.TYPE_9__*, i32, i32*)** %41, align 8
  %43 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %44 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %47 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %50 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %51 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %54 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %53, i32 0, i32 2
  %55 = call i64 %42(i32 %45, i32 %48, %struct.TYPE_9__* %49, i32 %52, i32* %54)
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @e_RX_STORE_RESPONSE_PAUSE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %38
  %60 = load i32, i32* @qman_cb_dqrr_pause, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %38
  %62 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %63 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @QM_DQRR_STAT_DQCR_EXPIRED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load i32, i32* @QMAN_FQ_STATE_VDQCR, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %72 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %68, %61
  %76 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %77 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @QM_DQRR_STAT_FQ_EMPTY, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load i32, i32* @QMAN_FQ_STATE_NE, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %86 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %90 = call i32 @freeDrainedFq(%struct.qman_fq* %89)
  br label %91

91:                                               ; preds = %82, %75
  br label %155

92:                                               ; preds = %27
  %93 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %94 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ASSERT_COND(i32 %95)
  %97 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %98 = icmp ne %struct.qman_fq* %97, null
  br i1 %98, label %99, label %132

99:                                               ; preds = %92
  %100 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %101 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64 (i32, i32, %struct.TYPE_9__*, i32, i32*)*, i64 (i32, i32, %struct.TYPE_9__*, i32, i32*)** %102, align 8
  %104 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %105 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %108 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %111 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %112 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %115 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %114, i32 0, i32 2
  %116 = call i64 %103(i32 %106, i32 %109, %struct.TYPE_9__* %110, i32 %113, i32* %115)
  store i64 %116, i64* %6, align 8
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* @e_RX_STORE_RESPONSE_PAUSE, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %99
  %121 = load i32, i32* @qman_cb_dqrr_pause, align 4
  store i32 %121, i32* %5, align 4
  br label %131

122:                                              ; preds = %99
  %123 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %124 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @qman_fq_state_waiting_parked, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* @qman_cb_dqrr_park, align 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %128, %122
  br label %131

131:                                              ; preds = %130, %120
  br label %154

132:                                              ; preds = %92
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i64 (i32, i32*, %struct.TYPE_9__*, i32, i32*)*, i64 (i32, i32*, %struct.TYPE_9__*, i32, i32*)** %136, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %142 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %143 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %146 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %145, i32 0, i32 2
  %147 = call i64 %137(i32 %140, i32* null, %struct.TYPE_9__* %141, i32 %144, i32* %146)
  store i64 %147, i64* %6, align 8
  %148 = load i64, i64* %6, align 8
  %149 = load i64, i64* @e_RX_STORE_RESPONSE_PAUSE, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %132
  %152 = load i32, i32* @qman_cb_dqrr_pause, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %151, %132
  br label %154

154:                                              ; preds = %153, %131
  br label %155

155:                                              ; preds = %154, %91
  %156 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %157 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @QM_DQRR_STAT_FQ_HELDACTIVE, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %155
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* @qman_cb_dqrr_park, align 4
  %165 = icmp ne i32 %163, %164
  br label %166

166:                                              ; preds = %162, %155
  %167 = phi i1 [ true, %155 ], [ %165, %162 ]
  %168 = zext i1 %167 to i32
  %169 = call i32 @ASSERT_COND(i32 %168)
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* @qman_cb_dqrr_park, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %166
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @qm_dqrr_park_ci(i32 %176)
  br label %178

178:                                              ; preds = %173, %166
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @qm_dqrr_next(i32 %181)
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @qmPortalDqrrCciConsume(i32 %185, i32 1)
  br label %11

187:                                              ; preds = %26, %11
  ret void
}

declare dso_local i32 @qmPortalDqrrPvbUpdate(i32) #1

declare dso_local %struct.qm_dqrr_entry* @qm_dqrr_current(i32) #1

declare dso_local %struct.qman_fq* @ptr_from_aligned_int(i32) #1

declare dso_local i32 @freeDrainedFq(%struct.qman_fq*) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @qm_dqrr_park_ci(i32) #1

declare dso_local i32 @qm_dqrr_next(i32) #1

declare dso_local i32 @qmPortalDqrrCciConsume(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
