; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/sgx/extr_sgx.c_sgx_put_epc_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/sgx/extr_sgx.c_sgx_put_epc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgx_softc = type { i32, i64 }
%struct.epc_page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sgx_softc*, %struct.epc_page*)* @sgx_put_epc_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sgx_put_epc_page(%struct.sgx_softc* %0, %struct.epc_page* %1) #0 {
  %3 = alloca %struct.sgx_softc*, align 8
  %4 = alloca %struct.epc_page*, align 8
  %5 = alloca i64, align 8
  store %struct.sgx_softc* %0, %struct.sgx_softc** %3, align 8
  store %struct.epc_page* %1, %struct.epc_page** %4, align 8
  %6 = load %struct.epc_page*, %struct.epc_page** %4, align 8
  %7 = icmp eq %struct.epc_page* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %26

9:                                                ; preds = %2
  %10 = load %struct.epc_page*, %struct.epc_page** %4, align 8
  %11 = getelementptr inbounds %struct.epc_page, %struct.epc_page* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = load %struct.sgx_softc*, %struct.sgx_softc** %3, align 8
  %17 = getelementptr inbounds %struct.sgx_softc, %struct.sgx_softc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  store i64 %19, i64* %5, align 8
  %20 = load %struct.sgx_softc*, %struct.sgx_softc** %3, align 8
  %21 = getelementptr inbounds %struct.sgx_softc, %struct.sgx_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = call i32 @vmem_free(i32 %22, i64 %23, i32 %24)
  br label %26

26:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @vmem_free(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
