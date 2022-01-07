; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_find_pci_capability.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_find_pci_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32 }

@PCIR_STATUS = common dso_local global i64 0, align 8
@PCIM_STATUS_CAPPRESENT = common dso_local global i32 0, align 4
@PCIR_HDRTYPE = common dso_local global i64 0, align 8
@PCIM_HDRTYPE = common dso_local global i32 0, align 4
@PCIR_CAP_PTR = common dso_local global i64 0, align 8
@PCIR_CAP_PTR_2 = common dso_local global i64 0, align 8
@PCICAP_NEXTPTR = common dso_local global i64 0, align 8
@PCICAP_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*, i32)* @aac_find_pci_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_find_pci_capability(%struct.aac_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aac_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %12 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i64, i64* @PCIR_STATUS, align 8
  %16 = call i8* @pci_read_config(i32 %14, i64 %15, i32 2)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @PCIM_STATUS_CAPPRESENT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %67

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = load i64, i64* @PCIR_HDRTYPE, align 8
  %26 = call i8* @pci_read_config(i32 %24, i64 %25, i32 1)
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @PCIM_HDRTYPE, align 4
  %30 = and i32 %28, %29
  switch i32 %30, label %35 [
    i32 0, label %31
    i32 1, label %31
    i32 2, label %33
  ]

31:                                               ; preds = %23, %23
  %32 = load i64, i64* @PCIR_CAP_PTR, align 8
  store i64 %32, i64* %8, align 8
  br label %36

33:                                               ; preds = %23
  %34 = load i64, i64* @PCIR_CAP_PTR_2, align 8
  store i64 %34, i64* %8, align 8
  br label %36

35:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %67

36:                                               ; preds = %33, %31
  %37 = load i32, i32* %6, align 4
  %38 = load i64, i64* %8, align 8
  %39 = call i8* @pci_read_config(i32 %37, i64 %38, i32 1)
  %40 = ptrtoint i8* %39 to i64
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %63, %36
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @PCICAP_NEXTPTR, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i8* @pci_read_config(i32 %45, i64 %48, i32 1)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @PCICAP_ID, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i8* @pci_read_config(i32 %51, i64 %54, i32 1)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %44
  %61 = load i64, i64* %8, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %67

63:                                               ; preds = %44
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %8, align 8
  br label %41

66:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %60, %35, %22
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i8* @pci_read_config(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
