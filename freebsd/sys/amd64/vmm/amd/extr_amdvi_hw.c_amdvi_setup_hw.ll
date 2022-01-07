; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_setup_hw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_setup_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdvi_softc = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"PCI capability.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Couldn't configure command buffer.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Couldn't configure event buffer.\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Couldn't configure device table.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdvi_setup_hw(%struct.amdvi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdvi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdvi_softc* %0, %struct.amdvi_softc** %3, align 8
  %6 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %7 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %10 = call i32 @amdvi_hw_enable_iotlb(%struct.amdvi_softc* %9)
  %11 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %12 = call i32 @amdvi_print_dev_cap(%struct.amdvi_softc* %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @amdvi_print_pci_cap(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %53

20:                                               ; preds = %1
  %21 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %22 = call i32 @amdvi_init_cmd(%struct.amdvi_softc* %21)
  store i32 %22, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %53

28:                                               ; preds = %20
  %29 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %30 = call i32 @amdvi_init_event(%struct.amdvi_softc* %29)
  store i32 %30, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %53

36:                                               ; preds = %28
  %37 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %38 = call i32 @amdvi_init_dte(%struct.amdvi_softc* %37)
  store i32 %38, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %53

44:                                               ; preds = %36
  %45 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %46 = call i32 @amdvi_alloc_intr_resources(%struct.amdvi_softc* %45)
  store i32 %46, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %53

50:                                               ; preds = %44
  %51 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %52 = call i32 @amdvi_add_sysctl(%struct.amdvi_softc* %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %48, %40, %32, %24, %16
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @amdvi_hw_enable_iotlb(%struct.amdvi_softc*) #1

declare dso_local i32 @amdvi_print_dev_cap(%struct.amdvi_softc*) #1

declare dso_local i32 @amdvi_print_pci_cap(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @amdvi_init_cmd(%struct.amdvi_softc*) #1

declare dso_local i32 @amdvi_init_event(%struct.amdvi_softc*) #1

declare dso_local i32 @amdvi_init_dte(%struct.amdvi_softc*) #1

declare dso_local i32 @amdvi_alloc_intr_resources(%struct.amdvi_softc*) #1

declare dso_local i32 @amdvi_add_sysctl(%struct.amdvi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
