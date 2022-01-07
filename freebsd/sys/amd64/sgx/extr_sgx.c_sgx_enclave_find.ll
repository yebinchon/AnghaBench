; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/sgx/extr_sgx.c_sgx_enclave_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/sgx/extr_sgx.c_sgx_enclave_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgx_softc = type { i32 }
%struct.sgx_enclave = type { i32* }
%struct.sgx_vm_handle = type { %struct.sgx_enclave* }
%struct.TYPE_4__ = type { %struct.sgx_vm_handle* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sgx_softc*, i32, %struct.sgx_enclave**)* @sgx_enclave_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgx_enclave_find(%struct.sgx_softc* %0, i32 %1, %struct.sgx_enclave** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sgx_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sgx_enclave**, align 8
  %8 = alloca %struct.sgx_vm_handle*, align 8
  %9 = alloca %struct.sgx_enclave*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  store %struct.sgx_softc* %0, %struct.sgx_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sgx_enclave** %2, %struct.sgx_enclave*** %7, align 8
  %13 = load %struct.sgx_softc*, %struct.sgx_softc** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @sgx_mem_find(%struct.sgx_softc* %13, i32 %14, i32* %10, %struct.TYPE_4__** %11)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %4, align 4
  br label %48

20:                                               ; preds = %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.sgx_vm_handle*, %struct.sgx_vm_handle** %22, align 8
  store %struct.sgx_vm_handle* %23, %struct.sgx_vm_handle** %8, align 8
  %24 = load %struct.sgx_vm_handle*, %struct.sgx_vm_handle** %8, align 8
  %25 = icmp eq %struct.sgx_vm_handle* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %28 = call i32 @vm_object_deallocate(%struct.TYPE_4__* %27)
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %4, align 4
  br label %48

30:                                               ; preds = %20
  %31 = load %struct.sgx_vm_handle*, %struct.sgx_vm_handle** %8, align 8
  %32 = getelementptr inbounds %struct.sgx_vm_handle, %struct.sgx_vm_handle* %31, i32 0, i32 0
  %33 = load %struct.sgx_enclave*, %struct.sgx_enclave** %32, align 8
  store %struct.sgx_enclave* %33, %struct.sgx_enclave** %9, align 8
  %34 = load %struct.sgx_enclave*, %struct.sgx_enclave** %9, align 8
  %35 = icmp eq %struct.sgx_enclave* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load %struct.sgx_enclave*, %struct.sgx_enclave** %9, align 8
  %38 = getelementptr inbounds %struct.sgx_enclave, %struct.sgx_enclave* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %30
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %43 = call i32 @vm_object_deallocate(%struct.TYPE_4__* %42)
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %4, align 4
  br label %48

45:                                               ; preds = %36
  %46 = load %struct.sgx_enclave*, %struct.sgx_enclave** %9, align 8
  %47 = load %struct.sgx_enclave**, %struct.sgx_enclave*** %7, align 8
  store %struct.sgx_enclave* %46, %struct.sgx_enclave** %47, align 8
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %41, %26, %18
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @sgx_mem_find(%struct.sgx_softc*, i32, i32*, %struct.TYPE_4__**) #1

declare dso_local i32 @vm_object_deallocate(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
