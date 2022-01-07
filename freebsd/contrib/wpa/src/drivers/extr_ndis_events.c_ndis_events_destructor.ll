; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_ndis_events.c_ndis_events_destructor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_ndis_events.c_ndis_events_destructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndis_events_data = type { i32, i32, i32, i32, i32 }

@wmi_refcnt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ndis_events_data*)* @ndis_events_destructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndis_events_destructor(%struct.ndis_events_data* %0) #0 {
  %2 = alloca %struct.ndis_events_data*, align 8
  store %struct.ndis_events_data* %0, %struct.ndis_events_data** %2, align 8
  %3 = load %struct.ndis_events_data*, %struct.ndis_events_data** %2, align 8
  %4 = getelementptr inbounds %struct.ndis_events_data, %struct.ndis_events_data* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @CloseHandle(i32 %5)
  %7 = load %struct.ndis_events_data*, %struct.ndis_events_data** %2, align 8
  %8 = getelementptr inbounds %struct.ndis_events_data, %struct.ndis_events_data* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @CloseHandle(i32 %9)
  %11 = load %struct.ndis_events_data*, %struct.ndis_events_data** %2, align 8
  %12 = getelementptr inbounds %struct.ndis_events_data, %struct.ndis_events_data* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @CloseHandle(i32 %13)
  %15 = load %struct.ndis_events_data*, %struct.ndis_events_data** %2, align 8
  %16 = getelementptr inbounds %struct.ndis_events_data, %struct.ndis_events_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @IWbemServices_Release(i32 %17)
  %19 = load %struct.ndis_events_data*, %struct.ndis_events_data** %2, align 8
  %20 = getelementptr inbounds %struct.ndis_events_data, %struct.ndis_events_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @IWbemLocator_Release(i32 %21)
  %23 = load i64, i64* @wmi_refcnt, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* @wmi_refcnt, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = call i32 (...) @CoUninitialize()
  br label %28

28:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @IWbemServices_Release(i32) #1

declare dso_local i32 @IWbemLocator_Release(i32) #1

declare dso_local i32 @CoUninitialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
