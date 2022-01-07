; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-sysinfo.c_cvmx_sysinfo_remove_self_from_core_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-sysinfo.c_cvmx_sysinfo_remove_self_from_core_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_sysinfo_remove_self_from_core_mask() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @cvmx_get_core_num()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = shl i32 1, %4
  store i32 %5, i32* %2, align 4
  %6 = call i32 @cvmx_spinlock_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 0))
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 1, i32 0), align 4
  %8 = load i32, i32* %2, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %7, %9
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 1, i32 0), align 4
  %11 = call i32 @cvmx_spinlock_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 0))
  ret void
}

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i32 @cvmx_spinlock_lock(i32*) #1

declare dso_local i32 @cvmx_spinlock_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
