; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_pci.c_al_pcib_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_pci.c_al_pcib_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCI_SLOTMAX = common dso_local global i32 0, align 4
@PCIR_HDRTYPE = common dso_local global i32 0, align 4
@PCIM_HDRTYPE = common dso_local global i32 0, align 4
@PCI_MAXHDRTYPE = common dso_local global i32 0, align 4
@PCIM_MFDEV = common dso_local global i32 0, align 4
@PCI_FUNCMAX = common dso_local global i32 0, align 4
@PCIR_VENDOR = common dso_local global i32 0, align 4
@ANNAPURNA_VENDOR_ID = common dso_local global i64 0, align 8
@AL_PCI_AXI_CFG_AND_CTR_0 = common dso_local global i32 0, align 4
@PCIE_AXI_PF_AXI_ATTR_OVRD_FUNC_CTRL_2_PF_VEC_PH_VEC_OVRD_FROM_AXUSER_MASK = common dso_local global i32 0, align 4
@AL_PCI_APP_CONTROL = common dso_local global i32 0, align 4
@PCIE_AXI_PF_AXI_ATTR_OVRD_FUNC_CTRL_4_PF_VEC_MEM_ADDR54_63_SEL_TGTID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @al_pcib_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_pcib_fixup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %96, %1
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @PCI_SLOTMAX, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %99

14:                                               ; preds = %10
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %92, %14
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %95

19:                                               ; preds = %15
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @PCIR_HDRTYPE, align 4
  %25 = call i8* @PCIB_READ_CONFIG(i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 1)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @PCIM_HDRTYPE, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @PCI_MAXHDRTYPE, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %92

33:                                               ; preds = %19
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @PCIM_MFDEV, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @PCI_FUNCMAX, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %41, %36, %33
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @PCIR_VENDOR, align 4
  %49 = call i8* @PCIB_READ_CONFIG(i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 2)
  %50 = ptrtoint i8* %49 to i64
  store i64 %50, i64* %4, align 8
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @ANNAPURNA_VENDOR_ID, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %91

54:                                               ; preds = %43
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @AL_PCI_AXI_CFG_AND_CTR_0, align 4
  %60 = call i8* @PCIB_READ_CONFIG(i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 4)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* @PCIE_AXI_PF_AXI_ATTR_OVRD_FUNC_CTRL_2_PF_VEC_PH_VEC_OVRD_FROM_AXUSER_MASK, align 4
  %63 = load i32, i32* %3, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @AL_PCI_AXI_CFG_AND_CTR_0, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @PCIB_WRITE_CONFIG(i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 4)
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @AL_PCI_APP_CONTROL, align 4
  %77 = call i8* @PCIB_READ_CONFIG(i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 4)
  %78 = ptrtoint i8* %77 to i32
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = and i32 %79, -65536
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* @PCIE_AXI_PF_AXI_ATTR_OVRD_FUNC_CTRL_4_PF_VEC_MEM_ADDR54_63_SEL_TGTID_MASK, align 4
  %82 = load i32, i32* %3, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @AL_PCI_APP_CONTROL, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @PCIB_WRITE_CONFIG(i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 4)
  br label %91

91:                                               ; preds = %54, %43
  br label %92

92:                                               ; preds = %91, %32
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %15

95:                                               ; preds = %15
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %10

99:                                               ; preds = %10
  ret void
}

declare dso_local i8* @PCIB_READ_CONFIG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCIB_WRITE_CONFIG(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
