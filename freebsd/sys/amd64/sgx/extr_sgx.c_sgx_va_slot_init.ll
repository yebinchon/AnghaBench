; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/sgx/extr_sgx.c_sgx_va_slot_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/sgx/extr_sgx.c_sgx_va_slot_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgx_softc = type { i32 }
%struct.sgx_enclave = type { i32 }

@SGX_VA_PAGE_SLOTS = common dso_local global i32 0, align 4
@SGX_VA_PAGES_OFFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sgx_softc*, %struct.sgx_enclave*, i32)* @sgx_va_slot_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgx_va_slot_init(%struct.sgx_softc* %0, %struct.sgx_enclave* %1, i32 %2) #0 {
  %4 = alloca %struct.sgx_softc*, align 8
  %5 = alloca %struct.sgx_enclave*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sgx_softc* %0, %struct.sgx_softc** %4, align 8
  store %struct.sgx_enclave* %1, %struct.sgx_enclave** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.sgx_enclave*, %struct.sgx_enclave** %5, align 8
  %14 = getelementptr inbounds %struct.sgx_enclave, %struct.sgx_enclave* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @VM_OBJECT_ASSERT_WLOCKED(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @OFF_TO_IDX(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SGX_VA_PAGE_SLOTS, align 4
  %22 = srem i32 %20, %21
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @SGX_VA_PAGE_SLOTS, align 4
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @SGX_VA_PAGES_OFFS, align 4
  %27 = sub nsw i32 0, %26
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.sgx_softc*, %struct.sgx_softc** %4, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @sgx_va_slot_init_by_index(%struct.sgx_softc* %30, i32 %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  ret i32 %34
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(i32) #1

declare dso_local i32 @OFF_TO_IDX(i32) #1

declare dso_local i32 @sgx_va_slot_init_by_index(%struct.sgx_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
