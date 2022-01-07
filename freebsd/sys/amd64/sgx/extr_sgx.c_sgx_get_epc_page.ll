; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/sgx/extr_sgx.c_sgx_get_epc_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/sgx/extr_sgx.c_sgx_get_epc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgx_softc = type { i32, %struct.epc_page*, i32 }
%struct.epc_page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@M_FIRSTFIT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sgx_softc*, %struct.epc_page**)* @sgx_get_epc_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgx_get_epc_page(%struct.sgx_softc* %0, %struct.epc_page** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sgx_softc*, align 8
  %5 = alloca %struct.epc_page**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sgx_softc* %0, %struct.sgx_softc** %4, align 8
  store %struct.epc_page** %1, %struct.epc_page*** %5, align 8
  %8 = load %struct.sgx_softc*, %struct.sgx_softc** %4, align 8
  %9 = getelementptr inbounds %struct.sgx_softc, %struct.sgx_softc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = load i32, i32* @M_FIRSTFIT, align 4
  %13 = load i32, i32* @M_NOWAIT, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @vmem_alloc(i32 %10, i32 %11, i32 %14, i32* %6)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.sgx_softc*, %struct.sgx_softc** %4, align 8
  %20 = getelementptr inbounds %struct.sgx_softc, %struct.sgx_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %18, %21
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.sgx_softc*, %struct.sgx_softc** %4, align 8
  %26 = getelementptr inbounds %struct.sgx_softc, %struct.sgx_softc* %25, i32 0, i32 1
  %27 = load %struct.epc_page*, %struct.epc_page** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.epc_page, %struct.epc_page* %27, i64 %29
  %31 = load %struct.epc_page**, %struct.epc_page*** %5, align 8
  store %struct.epc_page* %30, %struct.epc_page** %31, align 8
  store i32 0, i32* %3, align 4
  br label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %17
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @vmem_alloc(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
