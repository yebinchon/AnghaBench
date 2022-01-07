; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_cb_fqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_cb_fqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_fq = type { i64, i32 }
%struct.qm_mr_entry = type { i32 }

@qman_fq_state_retired = common dso_local global i64 0, align 8
@QMAN_FQ_STATE_ORL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qm_mr_entry*, %struct.qm_mr_entry*, %struct.qman_fq*, %struct.qm_mr_entry*)* @cb_fqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb_fqs(%struct.qm_mr_entry* %0, %struct.qm_mr_entry* %1, %struct.qman_fq* %2, %struct.qm_mr_entry* %3) #0 {
  %5 = alloca %struct.qm_mr_entry*, align 8
  %6 = alloca %struct.qm_mr_entry*, align 8
  %7 = alloca %struct.qman_fq*, align 8
  %8 = alloca %struct.qm_mr_entry*, align 8
  store %struct.qm_mr_entry* %0, %struct.qm_mr_entry** %5, align 8
  store %struct.qm_mr_entry* %1, %struct.qm_mr_entry** %6, align 8
  store %struct.qman_fq* %2, %struct.qman_fq** %7, align 8
  store %struct.qm_mr_entry* %3, %struct.qm_mr_entry** %8, align 8
  %9 = load %struct.qm_mr_entry*, %struct.qm_mr_entry** %8, align 8
  %10 = call i32 @UNUSED(%struct.qm_mr_entry* %9)
  %11 = load %struct.qm_mr_entry*, %struct.qm_mr_entry** %5, align 8
  %12 = call i32 @UNUSED(%struct.qm_mr_entry* %11)
  %13 = load %struct.qm_mr_entry*, %struct.qm_mr_entry** %6, align 8
  %14 = call i32 @UNUSED(%struct.qm_mr_entry* %13)
  %15 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %16 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @qman_fq_state_retired, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %22 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @QMAN_FQ_STATE_ORL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %29 = call i32 @drainRetiredFq(%struct.qman_fq* %28)
  br label %30

30:                                               ; preds = %27, %20, %4
  ret void
}

declare dso_local i32 @UNUSED(%struct.qm_mr_entry*) #1

declare dso_local i32 @drainRetiredFq(%struct.qman_fq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
