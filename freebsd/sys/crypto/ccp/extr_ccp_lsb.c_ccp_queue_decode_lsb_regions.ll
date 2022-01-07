; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp_lsb.c_ccp_queue_decode_lsb_regions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp_lsb.c_ccp_queue_decode_lsb_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_softc = type { %struct.ccp_queue* }
%struct.ccp_queue = type { i32 }

@MAX_LSB_REGIONS = common dso_local global i32 0, align 4
@MAX_HW_QUEUES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccp_queue_decode_lsb_regions(%struct.ccp_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ccp_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccp_queue*, align 8
  %8 = alloca i32, align 4
  store %struct.ccp_softc* %0, %struct.ccp_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %9, i32 0, i32 0
  %11 = load %struct.ccp_queue*, %struct.ccp_queue** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ccp_queue, %struct.ccp_queue* %11, i64 %13
  store %struct.ccp_queue* %14, %struct.ccp_queue** %7, align 8
  %15 = load %struct.ccp_queue*, %struct.ccp_queue** %7, align 8
  %16 = getelementptr inbounds %struct.ccp_queue, %struct.ccp_queue* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %38, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @MAX_LSB_REGIONS, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 1, %28
  %30 = load %struct.ccp_queue*, %struct.ccp_queue** %7, align 8
  %31 = getelementptr inbounds %struct.ccp_queue, %struct.ccp_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %27, %21
  %35 = load i32, i32* @MAX_HW_QUEUES, align 4
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %17

41:                                               ; preds = %17
  %42 = load %struct.ccp_queue*, %struct.ccp_queue** %7, align 8
  %43 = getelementptr inbounds %struct.ccp_queue, %struct.ccp_queue* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, -2
  store i32 %45, i32* %43, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
