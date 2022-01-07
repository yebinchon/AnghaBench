; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_freebsd.c_ar9300_proc_rx_desc_freebsd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_freebsd.c_ar9300_proc_rx_desc_freebsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ath_rx_status = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_proc_rx_desc_freebsd(%struct.ath_hal* %0, %struct.ath_desc* %1, i32 %2, %struct.ath_desc* %3, i32 %4, %struct.ath_rx_status* %5) #0 {
  %7 = alloca %struct.ath_hal*, align 8
  %8 = alloca %struct.ath_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ath_rx_status*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %7, align 8
  store %struct.ath_desc* %1, %struct.ath_desc** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.ath_desc* %3, %struct.ath_desc** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.ath_rx_status* %5, %struct.ath_rx_status** %12, align 8
  %13 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %14 = load %struct.ath_desc*, %struct.ath_desc** %8, align 8
  %15 = load %struct.ath_desc*, %struct.ath_desc** %10, align 8
  %16 = load %struct.ath_rx_status*, %struct.ath_rx_status** %12, align 8
  %17 = load %struct.ath_desc*, %struct.ath_desc** %8, align 8
  %18 = bitcast %struct.ath_desc* %17 to i8*
  %19 = call i32 @ar9300_proc_rx_desc_fast(%struct.ath_hal* %13, %struct.ath_desc* %14, i32 0, %struct.ath_desc* %15, %struct.ath_rx_status* %16, i8* %18)
  ret i32 %19
}

declare dso_local i32 @ar9300_proc_rx_desc_fast(%struct.ath_hal*, %struct.ath_desc*, i32, %struct.ath_desc*, %struct.ath_rx_status*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
