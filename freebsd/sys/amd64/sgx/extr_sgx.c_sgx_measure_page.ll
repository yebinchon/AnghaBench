; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/sgx/extr_sgx.c_sgx_measure_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/sgx/extr_sgx.c_sgx_measure_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgx_softc = type { i32 }
%struct.epc_page = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@SGX_EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sgx_softc*, %struct.epc_page*, %struct.epc_page*, i32)* @sgx_measure_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgx_measure_page(%struct.sgx_softc* %0, %struct.epc_page* %1, %struct.epc_page* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sgx_softc*, align 8
  %7 = alloca %struct.epc_page*, align 8
  %8 = alloca %struct.epc_page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sgx_softc* %0, %struct.sgx_softc** %6, align 8
  store %struct.epc_page* %1, %struct.epc_page** %7, align 8
  store %struct.epc_page* %2, %struct.epc_page** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.sgx_softc*, %struct.sgx_softc** %6, align 8
  %14 = getelementptr inbounds %struct.sgx_softc, %struct.sgx_softc* %13, i32 0, i32 0
  %15 = call i32 @mtx_lock(i32* %14)
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %16

16:                                               ; preds = %48, %4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %48

26:                                               ; preds = %20
  %27 = load %struct.epc_page*, %struct.epc_page** %7, align 8
  %28 = getelementptr inbounds %struct.epc_page, %struct.epc_page* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.epc_page*, %struct.epc_page** %8, align 8
  %32 = getelementptr inbounds %struct.epc_page, %struct.epc_page* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @sgx_eextend(i8* %30, i8* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @SGX_EFAULT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %26
  %43 = load %struct.sgx_softc*, %struct.sgx_softc** %6, align 8
  %44 = getelementptr inbounds %struct.sgx_softc, %struct.sgx_softc* %43, i32 0, i32 0
  %45 = call i32 @mtx_unlock(i32* %44)
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %57

47:                                               ; preds = %26
  br label %48

48:                                               ; preds = %47, %25
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 256
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = shl i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %16

53:                                               ; preds = %16
  %54 = load %struct.sgx_softc*, %struct.sgx_softc** %6, align 8
  %55 = getelementptr inbounds %struct.sgx_softc, %struct.sgx_softc* %54, i32 0, i32 0
  %56 = call i32 @mtx_unlock(i32* %55)
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %42
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @sgx_eextend(i8*, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
