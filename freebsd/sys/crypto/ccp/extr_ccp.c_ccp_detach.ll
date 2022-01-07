; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp.c_ccp_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp.c_ccp_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_softc = type { i32, i32, i32, i32 }

@g_ccp_softc = common dso_local global %struct.ccp_softc* null, align 8
@VERSION_CAP_TRNG = common dso_local global i32 0, align 4
@random_ccp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ccp_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccp_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ccp_softc* @device_get_softc(i32 %4)
  store %struct.ccp_softc* %5, %struct.ccp_softc** %3, align 8
  %6 = load %struct.ccp_softc*, %struct.ccp_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %6, i32 0, i32 2
  %8 = call i32 @mtx_lock(i32* %7)
  %9 = load %struct.ccp_softc*, %struct.ccp_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.ccp_softc*, %struct.ccp_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %11, i32 0, i32 2
  %13 = call i32 @mtx_unlock(i32* %12)
  %14 = load %struct.ccp_softc*, %struct.ccp_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @crypto_unregister_all(i32 %16)
  %18 = load %struct.ccp_softc*, %struct.ccp_softc** @g_ccp_softc, align 8
  %19 = load %struct.ccp_softc*, %struct.ccp_softc** %3, align 8
  %20 = icmp eq %struct.ccp_softc* %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.ccp_softc*, %struct.ccp_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VERSION_CAP_TRNG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 @random_source_deregister(i32* @random_ccp)
  br label %30

30:                                               ; preds = %28, %21, %1
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @ccp_hw_detach(i32 %31)
  %33 = load %struct.ccp_softc*, %struct.ccp_softc** %3, align 8
  %34 = call i32 @ccp_free_queues(%struct.ccp_softc* %33)
  %35 = load %struct.ccp_softc*, %struct.ccp_softc** @g_ccp_softc, align 8
  %36 = load %struct.ccp_softc*, %struct.ccp_softc** %3, align 8
  %37 = icmp eq %struct.ccp_softc* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store %struct.ccp_softc* null, %struct.ccp_softc** @g_ccp_softc, align 8
  br label %39

39:                                               ; preds = %38, %30
  %40 = load %struct.ccp_softc*, %struct.ccp_softc** %3, align 8
  %41 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %40, i32 0, i32 2
  %42 = call i32 @mtx_destroy(i32* %41)
  ret i32 0
}

declare dso_local %struct.ccp_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @crypto_unregister_all(i32) #1

declare dso_local i32 @random_source_deregister(i32*) #1

declare dso_local i32 @ccp_hw_detach(i32) #1

declare dso_local i32 @ccp_free_queues(%struct.ccp_softc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
