; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c_poll_cq_wrapper_1_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c_poll_cq_wrapper_1_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq_1_0 = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32, i32, %struct.ibv_wc*)* }
%struct.ibv_wc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_cq_1_0*, i32, %struct.ibv_wc*)* @poll_cq_wrapper_1_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poll_cq_wrapper_1_0(%struct.ibv_cq_1_0* %0, i32 %1, %struct.ibv_wc* %2) #0 {
  %4 = alloca %struct.ibv_cq_1_0*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibv_wc*, align 8
  store %struct.ibv_cq_1_0* %0, %struct.ibv_cq_1_0** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ibv_wc* %2, %struct.ibv_wc** %6, align 8
  %7 = load %struct.ibv_cq_1_0*, %struct.ibv_cq_1_0** %4, align 8
  %8 = getelementptr inbounds %struct.ibv_cq_1_0, %struct.ibv_cq_1_0* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32 (i32, i32, %struct.ibv_wc*)*, i32 (i32, i32, %struct.ibv_wc*)** %13, align 8
  %15 = load %struct.ibv_cq_1_0*, %struct.ibv_cq_1_0** %4, align 8
  %16 = getelementptr inbounds %struct.ibv_cq_1_0, %struct.ibv_cq_1_0* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.ibv_wc*, %struct.ibv_wc** %6, align 8
  %20 = call i32 %14(i32 %17, i32 %18, %struct.ibv_wc* %19)
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
