; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_common.c_wps_pbc_overlap_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_common.c_wps_pbc_overlap_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_context = type { i32, i32 (i32, i32, i32*)* }

@WPS_EV_PBC_OVERLAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wps_pbc_overlap_event(%struct.wps_context* %0) #0 {
  %2 = alloca %struct.wps_context*, align 8
  store %struct.wps_context* %0, %struct.wps_context** %2, align 8
  %3 = load %struct.wps_context*, %struct.wps_context** %2, align 8
  %4 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %3, i32 0, i32 1
  %5 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %4, align 8
  %6 = icmp eq i32 (i32, i32, i32*)* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %17

8:                                                ; preds = %1
  %9 = load %struct.wps_context*, %struct.wps_context** %2, align 8
  %10 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %9, i32 0, i32 1
  %11 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %10, align 8
  %12 = load %struct.wps_context*, %struct.wps_context** %2, align 8
  %13 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @WPS_EV_PBC_OVERLAP, align 4
  %16 = call i32 %11(i32 %14, i32 %15, i32* null)
  br label %17

17:                                               ; preds = %8, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
