; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_ppt_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_ppt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PCIM_HDRTYPE = common dso_local global i32 0, align 4
@PCIM_HDRTYPE_NORMAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@BUS_PROBE_NOWILDCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ppt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppt_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_devinfo*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @device_get_ivars(i32 %8)
  %10 = inttoptr i64 %9 to %struct.pci_devinfo*
  store %struct.pci_devinfo* %10, %struct.pci_devinfo** %7, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @pci_get_bus(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @pci_get_slot(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @pci_get_function(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.pci_devinfo*, %struct.pci_devinfo** %7, align 8
  %18 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PCIM_HDRTYPE, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @PCIM_HDRTYPE_NORMAL, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %36

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @vmm_is_pptdev(i32 %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @BUS_PROBE_NOWILDCARD, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %33, %25
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @device_get_ivars(i32) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local i64 @vmm_is_pptdev(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
