; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_comp_tx_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_comp_tx_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma_q = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"[%s %d]: tx completion: descs (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_comp_tx_get(%struct.al_udma_q* %0) #0 {
  %2 = alloca %struct.al_udma_q*, align 8
  %3 = alloca i32, align 4
  store %struct.al_udma_q* %0, %struct.al_udma_q** %2, align 8
  %4 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %5 = call i32 @al_udma_cdesc_get_all(%struct.al_udma_q* %4, i32* null)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @al_udma_cdesc_ack(%struct.al_udma_q* %9, i32 %10)
  %12 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %13 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.al_udma_q*, %struct.al_udma_q** %2, align 8
  %18 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @al_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %8, %1
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @al_udma_cdesc_get_all(%struct.al_udma_q*, i32*) #1

declare dso_local i32 @al_udma_cdesc_ack(%struct.al_udma_q*, i32) #1

declare dso_local i32 @al_dbg(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
