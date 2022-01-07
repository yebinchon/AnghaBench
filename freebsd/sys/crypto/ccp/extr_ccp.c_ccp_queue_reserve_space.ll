; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp.c_ccp_queue_reserve_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp.c_ccp_queue_reserve_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_queue = type { i32, i32, i32, %struct.ccp_softc* }
%struct.ccp_softc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ccpqfull\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccp_queue*, i32, i32)* @ccp_queue_reserve_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_queue_reserve_space(%struct.ccp_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccp_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ccp_softc*, align 8
  store %struct.ccp_queue* %0, %struct.ccp_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ccp_queue*, %struct.ccp_queue** %5, align 8
  %10 = getelementptr inbounds %struct.ccp_queue, %struct.ccp_queue* %9, i32 0, i32 1
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @mtx_assert(i32* %10, i32 %11)
  %13 = load %struct.ccp_queue*, %struct.ccp_queue** %5, align 8
  %14 = getelementptr inbounds %struct.ccp_queue, %struct.ccp_queue* %13, i32 0, i32 3
  %15 = load %struct.ccp_softc*, %struct.ccp_softc** %14, align 8
  store %struct.ccp_softc* %15, %struct.ccp_softc** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ult i32 %16, 1
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.ccp_softc*, %struct.ccp_softc** %8, align 8
  %21 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 1, %22
  %24 = icmp uge i32 %19, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18, %3
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %49

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %41
  %29 = load %struct.ccp_queue*, %struct.ccp_queue** %5, align 8
  %30 = call i32 @ccp_queue_get_ring_space(%struct.ccp_queue* %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp uge i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %49

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @M_WAITOK, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @EAGAIN, align 4
  store i32 %40, i32* %4, align 4
  br label %49

41:                                               ; preds = %34
  %42 = load %struct.ccp_queue*, %struct.ccp_queue** %5, align 8
  %43 = getelementptr inbounds %struct.ccp_queue, %struct.ccp_queue* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.ccp_queue*, %struct.ccp_queue** %5, align 8
  %45 = getelementptr inbounds %struct.ccp_queue, %struct.ccp_queue* %44, i32 0, i32 2
  %46 = load %struct.ccp_queue*, %struct.ccp_queue** %5, align 8
  %47 = getelementptr inbounds %struct.ccp_queue, %struct.ccp_queue* %46, i32 0, i32 1
  %48 = call i32 @msleep(i32* %45, i32* %47, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %28

49:                                               ; preds = %39, %33, %25
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @ccp_queue_get_ring_space(%struct.ccp_queue*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
