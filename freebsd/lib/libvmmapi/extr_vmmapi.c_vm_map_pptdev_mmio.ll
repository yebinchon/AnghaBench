; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_map_pptdev_mmio.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_map_pptdev_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vm_pptdev_mmio = type { i32, i32, i32, i64, i8*, i8* }

@VM_MAP_PPTDEV_MMIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_pptdev_mmio(%struct.vmctx* %0, i32 %1, i32 %2, i32 %3, i8* %4, i64 %5, i8* %6) #0 {
  %8 = alloca %struct.vmctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.vm_pptdev_mmio, align 8
  store %struct.vmctx* %0, %struct.vmctx** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = call i32 @bzero(%struct.vm_pptdev_mmio* %15, i32 40)
  %17 = load i32, i32* %9, align 4
  %18 = getelementptr inbounds %struct.vm_pptdev_mmio, %struct.vm_pptdev_mmio* %15, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %10, align 4
  %20 = getelementptr inbounds %struct.vm_pptdev_mmio, %struct.vm_pptdev_mmio* %15, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %11, align 4
  %22 = getelementptr inbounds %struct.vm_pptdev_mmio, %struct.vm_pptdev_mmio* %15, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = getelementptr inbounds %struct.vm_pptdev_mmio, %struct.vm_pptdev_mmio* %15, i32 0, i32 5
  store i8* %23, i8** %24, align 8
  %25 = load i64, i64* %13, align 8
  %26 = getelementptr inbounds %struct.vm_pptdev_mmio, %struct.vm_pptdev_mmio* %15, i32 0, i32 3
  store i64 %25, i64* %26, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = getelementptr inbounds %struct.vm_pptdev_mmio, %struct.vm_pptdev_mmio* %15, i32 0, i32 4
  store i8* %27, i8** %28, align 8
  %29 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %30 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @VM_MAP_PPTDEV_MMIO, align 4
  %33 = call i32 @ioctl(i32 %31, i32 %32, %struct.vm_pptdev_mmio* %15)
  ret i32 %33
}

declare dso_local i32 @bzero(%struct.vm_pptdev_mmio*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.vm_pptdev_mmio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
