; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_lapic_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_lapic_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vm_lapic_msi = type { i8*, i8* }

@VM_LAPIC_MSI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_lapic_msi(%struct.vmctx* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.vmctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vm_lapic_msi, align 8
  store %struct.vmctx* %0, %struct.vmctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call i32 @bzero(%struct.vm_lapic_msi* %7, i32 16)
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds %struct.vm_lapic_msi, %struct.vm_lapic_msi* %7, i32 0, i32 1
  store i8* %9, i8** %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds %struct.vm_lapic_msi, %struct.vm_lapic_msi* %7, i32 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = load %struct.vmctx*, %struct.vmctx** %4, align 8
  %14 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @VM_LAPIC_MSI, align 4
  %17 = call i32 @ioctl(i32 %15, i32 %16, %struct.vm_lapic_msi* %7)
  ret i32 %17
}

declare dso_local i32 @bzero(%struct.vm_lapic_msi*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.vm_lapic_msi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
