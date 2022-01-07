; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_cm_event_sidr_rep_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_cm_event_sidr_rep_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_sidr_rep_event_param = type { i32, i32, i32 }
%struct.ib_ucm_sidr_rep_event_resp = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_cm_sidr_rep_event_param*, %struct.ib_ucm_sidr_rep_event_resp*)* @cm_event_sidr_rep_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_event_sidr_rep_get(%struct.ib_cm_sidr_rep_event_param* %0, %struct.ib_ucm_sidr_rep_event_resp* %1) #0 {
  %3 = alloca %struct.ib_cm_sidr_rep_event_param*, align 8
  %4 = alloca %struct.ib_ucm_sidr_rep_event_resp*, align 8
  store %struct.ib_cm_sidr_rep_event_param* %0, %struct.ib_cm_sidr_rep_event_param** %3, align 8
  store %struct.ib_ucm_sidr_rep_event_resp* %1, %struct.ib_ucm_sidr_rep_event_resp** %4, align 8
  %5 = load %struct.ib_ucm_sidr_rep_event_resp*, %struct.ib_ucm_sidr_rep_event_resp** %4, align 8
  %6 = getelementptr inbounds %struct.ib_ucm_sidr_rep_event_resp, %struct.ib_ucm_sidr_rep_event_resp* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ib_cm_sidr_rep_event_param*, %struct.ib_cm_sidr_rep_event_param** %3, align 8
  %9 = getelementptr inbounds %struct.ib_cm_sidr_rep_event_param, %struct.ib_cm_sidr_rep_event_param* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ib_ucm_sidr_rep_event_resp*, %struct.ib_ucm_sidr_rep_event_resp** %4, align 8
  %11 = getelementptr inbounds %struct.ib_ucm_sidr_rep_event_resp, %struct.ib_ucm_sidr_rep_event_resp* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ib_cm_sidr_rep_event_param*, %struct.ib_cm_sidr_rep_event_param** %3, align 8
  %14 = getelementptr inbounds %struct.ib_cm_sidr_rep_event_param, %struct.ib_cm_sidr_rep_event_param* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ib_ucm_sidr_rep_event_resp*, %struct.ib_ucm_sidr_rep_event_resp** %4, align 8
  %16 = getelementptr inbounds %struct.ib_ucm_sidr_rep_event_resp, %struct.ib_ucm_sidr_rep_event_resp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ib_cm_sidr_rep_event_param*, %struct.ib_cm_sidr_rep_event_param** %3, align 8
  %19 = getelementptr inbounds %struct.ib_cm_sidr_rep_event_param, %struct.ib_cm_sidr_rep_event_param* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
