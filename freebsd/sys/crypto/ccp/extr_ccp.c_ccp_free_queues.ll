; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp.c_ccp_free_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp.c_ccp_free_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_softc = type { %struct.ccp_queue* }
%struct.ccp_queue = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccp_softc*)* @ccp_free_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp_free_queues(%struct.ccp_softc* %0) #0 {
  %2 = alloca %struct.ccp_softc*, align 8
  %3 = alloca %struct.ccp_queue*, align 8
  %4 = alloca i64, align 8
  store %struct.ccp_softc* %0, %struct.ccp_softc** %2, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %33, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.ccp_softc*, %struct.ccp_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %7, i32 0, i32 0
  %9 = load %struct.ccp_queue*, %struct.ccp_queue** %8, align 8
  %10 = call i64 @nitems(%struct.ccp_queue* %9)
  %11 = icmp ult i64 %6, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %5
  %13 = load %struct.ccp_softc*, %struct.ccp_softc** %2, align 8
  %14 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %13, i32 0, i32 0
  %15 = load %struct.ccp_queue*, %struct.ccp_queue** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.ccp_queue, %struct.ccp_queue* %15, i64 %16
  store %struct.ccp_queue* %17, %struct.ccp_queue** %3, align 8
  %18 = load %struct.ccp_queue*, %struct.ccp_queue** %3, align 8
  %19 = getelementptr inbounds %struct.ccp_queue, %struct.ccp_queue* %18, i32 0, i32 3
  %20 = call i32 @mtx_destroy(i32* %19)
  %21 = load %struct.ccp_queue*, %struct.ccp_queue** %3, align 8
  %22 = getelementptr inbounds %struct.ccp_queue, %struct.ccp_queue* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sglist_free(i32 %23)
  %25 = load %struct.ccp_queue*, %struct.ccp_queue** %3, align 8
  %26 = getelementptr inbounds %struct.ccp_queue, %struct.ccp_queue* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sglist_free(i32 %27)
  %29 = load %struct.ccp_queue*, %struct.ccp_queue** %3, align 8
  %30 = getelementptr inbounds %struct.ccp_queue, %struct.ccp_queue* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sglist_free(i32 %31)
  br label %33

33:                                               ; preds = %12
  %34 = load i64, i64* %4, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %4, align 8
  br label %5

36:                                               ; preds = %5
  ret void
}

declare dso_local i64 @nitems(%struct.ccp_queue*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @sglist_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
