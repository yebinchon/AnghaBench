; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/sgx/extr_sgx.c_sgx_unload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/sgx/extr_sgx.c_sgx_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgx_softc = type { i32, i32, i32, i32, i32, i32 }

@sgx_sc = common dso_local global %struct.sgx_softc zeroinitializer, align 4
@SGX_STATE_RUNNING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sgx_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgx_unload() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sgx_softc*, align 8
  store %struct.sgx_softc* @sgx_sc, %struct.sgx_softc** %2, align 8
  %3 = load %struct.sgx_softc*, %struct.sgx_softc** %2, align 8
  %4 = getelementptr inbounds %struct.sgx_softc, %struct.sgx_softc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SGX_STATE_RUNNING, align 4
  %7 = and i32 %5, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %49

10:                                               ; preds = %0
  %11 = load %struct.sgx_softc*, %struct.sgx_softc** %2, align 8
  %12 = getelementptr inbounds %struct.sgx_softc, %struct.sgx_softc* %11, i32 0, i32 1
  %13 = call i32 @mtx_lock(i32* %12)
  %14 = load %struct.sgx_softc*, %struct.sgx_softc** %2, align 8
  %15 = getelementptr inbounds %struct.sgx_softc, %struct.sgx_softc* %14, i32 0, i32 5
  %16 = call i32 @TAILQ_EMPTY(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %10
  %19 = load %struct.sgx_softc*, %struct.sgx_softc** %2, align 8
  %20 = getelementptr inbounds %struct.sgx_softc, %struct.sgx_softc* %19, i32 0, i32 1
  %21 = call i32 @mtx_unlock(i32* %20)
  %22 = load i32, i32* @EBUSY, align 4
  store i32 %22, i32* %1, align 4
  br label %49

23:                                               ; preds = %10
  %24 = load i32, i32* @SGX_STATE_RUNNING, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.sgx_softc*, %struct.sgx_softc** %2, align 8
  %27 = getelementptr inbounds %struct.sgx_softc, %struct.sgx_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.sgx_softc*, %struct.sgx_softc** %2, align 8
  %31 = getelementptr inbounds %struct.sgx_softc, %struct.sgx_softc* %30, i32 0, i32 1
  %32 = call i32 @mtx_unlock(i32* %31)
  %33 = load %struct.sgx_softc*, %struct.sgx_softc** %2, align 8
  %34 = getelementptr inbounds %struct.sgx_softc, %struct.sgx_softc* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @destroy_dev(i32 %35)
  %37 = load %struct.sgx_softc*, %struct.sgx_softc** %2, align 8
  %38 = getelementptr inbounds %struct.sgx_softc, %struct.sgx_softc* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @vmem_destroy(i32 %39)
  %41 = load %struct.sgx_softc*, %struct.sgx_softc** %2, align 8
  %42 = call i32 @sgx_put_epc_area(%struct.sgx_softc* %41)
  %43 = load %struct.sgx_softc*, %struct.sgx_softc** %2, align 8
  %44 = getelementptr inbounds %struct.sgx_softc, %struct.sgx_softc* %43, i32 0, i32 2
  %45 = call i32 @mtx_destroy(i32* %44)
  %46 = load %struct.sgx_softc*, %struct.sgx_softc** %2, align 8
  %47 = getelementptr inbounds %struct.sgx_softc, %struct.sgx_softc* %46, i32 0, i32 1
  %48 = call i32 @mtx_destroy(i32* %47)
  store i32 0, i32* %1, align 4
  br label %49

49:                                               ; preds = %23, %18, %9
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @destroy_dev(i32) #1

declare dso_local i32 @vmem_destroy(i32) #1

declare dso_local i32 @sgx_put_epc_area(%struct.sgx_softc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
