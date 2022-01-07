; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp.h_ccp_queue_get_active.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp.h_ccp_queue_get_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_queue = type { i32, i32, %struct.ccp_softc* }
%struct.ccp_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccp_queue*)* @ccp_queue_get_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_queue_get_active(%struct.ccp_queue* %0) #0 {
  %2 = alloca %struct.ccp_queue*, align 8
  %3 = alloca %struct.ccp_softc*, align 8
  store %struct.ccp_queue* %0, %struct.ccp_queue** %2, align 8
  %4 = load %struct.ccp_queue*, %struct.ccp_queue** %2, align 8
  %5 = getelementptr inbounds %struct.ccp_queue, %struct.ccp_queue* %4, i32 0, i32 2
  %6 = load %struct.ccp_softc*, %struct.ccp_softc** %5, align 8
  store %struct.ccp_softc* %6, %struct.ccp_softc** %3, align 8
  %7 = load %struct.ccp_queue*, %struct.ccp_queue** %2, align 8
  %8 = getelementptr inbounds %struct.ccp_queue, %struct.ccp_queue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ccp_queue*, %struct.ccp_queue** %2, align 8
  %11 = getelementptr inbounds %struct.ccp_queue, %struct.ccp_queue* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %9, %12
  %14 = load %struct.ccp_softc*, %struct.ccp_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 1, %16
  %18 = sub nsw i32 %17, 1
  %19 = and i32 %13, %18
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
