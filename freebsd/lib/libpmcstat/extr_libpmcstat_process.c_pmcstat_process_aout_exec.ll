; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_process.c_pmcstat_process_aout_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_process.c_pmcstat_process_aout_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcstat_process = type { i32 }
%struct.pmcstat_image = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmcstat_process_aout_exec(%struct.pmcstat_process* %0, %struct.pmcstat_image* %1, i32 %2) #0 {
  %4 = alloca %struct.pmcstat_process*, align 8
  %5 = alloca %struct.pmcstat_image*, align 8
  %6 = alloca i32, align 4
  store %struct.pmcstat_process* %0, %struct.pmcstat_process** %4, align 8
  store %struct.pmcstat_image* %1, %struct.pmcstat_image** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.pmcstat_process*, %struct.pmcstat_process** %4, align 8
  %8 = load %struct.pmcstat_image*, %struct.pmcstat_image** %5, align 8
  %9 = load i32, i32* %6, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
