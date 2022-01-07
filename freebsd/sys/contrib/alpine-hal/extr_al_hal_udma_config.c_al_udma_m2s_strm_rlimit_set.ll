; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_strm_rlimit_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_strm_rlimit_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.udma_rlimit_common }
%struct.udma_rlimit_common = type { i32 }
%struct.al_udma_m2s_rlimit_cfg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_udma_m2s_strm_rlimit_set(%struct.al_udma* %0, %struct.al_udma_m2s_rlimit_cfg* %1) #0 {
  %3 = alloca %struct.al_udma*, align 8
  %4 = alloca %struct.al_udma_m2s_rlimit_cfg*, align 8
  %5 = alloca %struct.udma_rlimit_common*, align 8
  store %struct.al_udma* %0, %struct.al_udma** %3, align 8
  store %struct.al_udma_m2s_rlimit_cfg* %1, %struct.al_udma_m2s_rlimit_cfg** %4, align 8
  %6 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %7 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.udma_rlimit_common* %11, %struct.udma_rlimit_common** %5, align 8
  %12 = load %struct.udma_rlimit_common*, %struct.udma_rlimit_common** %5, align 8
  %13 = load %struct.al_udma_m2s_rlimit_cfg*, %struct.al_udma_m2s_rlimit_cfg** %4, align 8
  %14 = call i32 @al_udma_common_rlimit_set(%struct.udma_rlimit_common* %12, %struct.al_udma_m2s_rlimit_cfg* %13)
  ret i32 %14
}

declare dso_local i32 @al_udma_common_rlimit_set(%struct.udma_rlimit_common*, %struct.al_udma_m2s_rlimit_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
