; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_setup_pptdev_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_setup_pptdev_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vm_pptdev_msi = type { i32, i32, i32, i32, i32, i8*, i8* }

@VM_PPTDEV_MSI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_setup_pptdev_msi(%struct.vmctx* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.vmctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.vm_pptdev_msi, align 8
  store %struct.vmctx* %0, %struct.vmctx** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %18 = call i32 @bzero(%struct.vm_pptdev_msi* %17, i32 40)
  %19 = load i32, i32* %10, align 4
  %20 = getelementptr inbounds %struct.vm_pptdev_msi, %struct.vm_pptdev_msi* %17, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* %11, align 4
  %22 = getelementptr inbounds %struct.vm_pptdev_msi, %struct.vm_pptdev_msi* %17, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %12, align 4
  %24 = getelementptr inbounds %struct.vm_pptdev_msi, %struct.vm_pptdev_msi* %17, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* %13, align 4
  %26 = getelementptr inbounds %struct.vm_pptdev_msi, %struct.vm_pptdev_msi* %17, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = load i8*, i8** %15, align 8
  %28 = getelementptr inbounds %struct.vm_pptdev_msi, %struct.vm_pptdev_msi* %17, i32 0, i32 6
  store i8* %27, i8** %28, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = getelementptr inbounds %struct.vm_pptdev_msi, %struct.vm_pptdev_msi* %17, i32 0, i32 5
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* %16, align 4
  %32 = getelementptr inbounds %struct.vm_pptdev_msi, %struct.vm_pptdev_msi* %17, i32 0, i32 4
  store i32 %31, i32* %32, align 8
  %33 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %34 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @VM_PPTDEV_MSI, align 4
  %37 = call i32 @ioctl(i32 %35, i32 %36, %struct.vm_pptdev_msi* %17)
  ret i32 %37
}

declare dso_local i32 @bzero(%struct.vm_pptdev_msi*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.vm_pptdev_msi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
