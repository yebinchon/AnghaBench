; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-app-hotplug.c_cvmx_app_hotplug_core_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-app-hotplug.c_cvmx_app_hotplug_core_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }

@cvmx_app_hotplug_info_ptr = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_app_hotplug_core_shutdown() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cvmx_app_hotplug_info_ptr, align 8
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %0
  %8 = call %struct.TYPE_5__* (...) @cvmx_sysinfo_get()
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %2, align 8
  %9 = call i32 (...) @__cvmx_app_hotplug_sync()
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @cvmx_coremask_first_core(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cvmx_app_hotplug_info_ptr, align 8
  %17 = call i32 @bzero(%struct.TYPE_6__* %16, i32 16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cvmx_app_hotplug_info_ptr, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  br label %20

20:                                               ; preds = %15, %7
  %21 = call i32 (...) @cvmx_debug_finish()
  %22 = call i32 (...) @cvmx_interrupt_disable_save()
  store i32 %22, i32* %1, align 4
  %23 = call i32 (...) @__cvmx_app_hotplug_sync()
  %24 = call i32 (...) @__cvmx_app_hotplug_reset()
  br label %30

25:                                               ; preds = %0
  %26 = call i32 (...) @cvmx_sysinfo_remove_self_from_core_mask()
  %27 = call i32 (...) @cvmx_app_hotplug_remove_self_from_core_mask()
  %28 = call i32 (...) @cvmx_interrupt_disable_save()
  store i32 %28, i32* %1, align 4
  %29 = call i32 (...) @__cvmx_app_hotplug_reset()
  br label %30

30:                                               ; preds = %25, %20
  ret void
}

declare dso_local %struct.TYPE_5__* @cvmx_sysinfo_get(...) #1

declare dso_local i32 @__cvmx_app_hotplug_sync(...) #1

declare dso_local i64 @cvmx_coremask_first_core(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @cvmx_debug_finish(...) #1

declare dso_local i32 @cvmx_interrupt_disable_save(...) #1

declare dso_local i32 @__cvmx_app_hotplug_reset(...) #1

declare dso_local i32 @cvmx_sysinfo_remove_self_from_core_mask(...) #1

declare dso_local i32 @cvmx_app_hotplug_remove_self_from_core_mask(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
