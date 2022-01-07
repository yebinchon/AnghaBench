; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/sgx/extr_sgx.c_sgx_insert_epc_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/sgx/extr_sgx.c_sgx_insert_epc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgx_enclave = type { i32 }
%struct.epc_page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sgx_enclave*, %struct.epc_page*, i32)* @sgx_insert_epc_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sgx_insert_epc_page(%struct.sgx_enclave* %0, %struct.epc_page* %1, i32 %2) #0 {
  %4 = alloca %struct.sgx_enclave*, align 8
  %5 = alloca %struct.epc_page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sgx_enclave* %0, %struct.sgx_enclave** %4, align 8
  store %struct.epc_page* %1, %struct.epc_page** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sgx_enclave*, %struct.sgx_enclave** %4, align 8
  %10 = getelementptr inbounds %struct.sgx_enclave, %struct.sgx_enclave* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @VM_OBJECT_ASSERT_WLOCKED(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @OFF_TO_IDX(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.epc_page*, %struct.epc_page** %5, align 8
  %16 = getelementptr inbounds %struct.epc_page, %struct.epc_page* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @PHYS_TO_VM_PAGE(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.sgx_enclave*, %struct.sgx_enclave** %4, align 8
  %21 = getelementptr inbounds %struct.sgx_enclave, %struct.sgx_enclave* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @sgx_insert_epc_page_by_index(i32 %19, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(i32) #1

declare dso_local i32 @OFF_TO_IDX(i32) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @sgx_insert_epc_page_by_index(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
