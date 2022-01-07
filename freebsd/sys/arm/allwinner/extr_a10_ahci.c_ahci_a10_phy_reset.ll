; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_ahci.c_ahci_a10_phy_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_ahci.c_ahci_a10_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_controller = type { i32 }

@AHCI_RWCR = common dso_local global i32 0, align 4
@AHCI_PHYCS1R = common dso_local global i32 0, align 4
@PHYCS1R_HIGHZ = common dso_local global i64 0, align 8
@AHCI_PHYCS0R = common dso_local global i32 0, align 4
@PHYCS0R_UF2_MASK = common dso_local global i32 0, align 4
@PHYCS0R_UF2_INIT = common dso_local global i32 0, align 4
@PHYCS0R_BIT23 = common dso_local global i32 0, align 4
@PHYCS0R_BIT18 = common dso_local global i32 0, align 4
@PHYCS1R_UF1_MASK = common dso_local global i32 0, align 4
@PHYCS1R_UF2_MASK = common dso_local global i32 0, align 4
@PHYCS1R_UF3_MASK = common dso_local global i32 0, align 4
@PHYCS1R_UF1_INIT = common dso_local global i32 0, align 4
@PHYCS1R_UF2_INIT = common dso_local global i32 0, align 4
@PHYCS1R_UF3_INIT = common dso_local global i32 0, align 4
@PHYCS1R_BIT15 = common dso_local global i64 0, align 8
@PHYCS1R_BIT28 = common dso_local global i64 0, align 8
@PHYCS0R_UF1_MASK = common dso_local global i32 0, align 4
@PHYCS0R_UF1_INIT = common dso_local global i32 0, align 4
@AHCI_PHYCS2R = common dso_local global i32 0, align 4
@PHYCS2R_UF1_MASK = common dso_local global i32 0, align 4
@PHYCS2R_UF1_INIT = common dso_local global i32 0, align 4
@PHYCS0R_POWER_ENABLE = common dso_local global i64 0, align 8
@PHY_RESET_TIMEOUT = common dso_local global i64 0, align 8
@PHYCS0R_POWER_STATUS_MASK = common dso_local global i64 0, align 8
@PHYCS0R_PS_GOOD = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"PHY Power Failed PHYCS0R = %#x\0A\00", align 1
@PHYCS2R_CALIBRATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"PHY Cal Failed PHYCS2R %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ahci_a10_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_a10_phy_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ahci_controller*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.ahci_controller* @device_get_softc(i32 %6)
  store %struct.ahci_controller* %7, %struct.ahci_controller** %5, align 8
  %8 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %9 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AHCI_RWCR, align 4
  %12 = call i32 @ATA_OUTL(i32 %10, i32 %11, i32 0)
  %13 = call i32 @DELAY(i32 100)
  %14 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %15 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AHCI_PHYCS1R, align 4
  %18 = load i64, i64* @PHYCS1R_HIGHZ, align 8
  %19 = call i32 @ahci_set(i32 %16, i32 %17, i64 %18)
  %20 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %21 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AHCI_PHYCS0R, align 4
  %24 = load i32, i32* @PHYCS0R_UF2_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* @PHYCS0R_UF2_INIT, align 4
  %27 = load i32, i32* @PHYCS0R_BIT23, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PHYCS0R_BIT18, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @ahci_mask_set(i32 %22, i32 %23, i32 %25, i32 %30)
  %32 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %33 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AHCI_PHYCS1R, align 4
  %36 = load i32, i32* @PHYCS1R_UF1_MASK, align 4
  %37 = load i32, i32* @PHYCS1R_UF2_MASK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @PHYCS1R_UF3_MASK, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* @PHYCS1R_UF1_INIT, align 4
  %43 = load i32, i32* @PHYCS1R_UF2_INIT, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @PHYCS1R_UF3_INIT, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @ahci_mask_set(i32 %34, i32 %35, i32 %41, i32 %46)
  %48 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %49 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AHCI_PHYCS1R, align 4
  %52 = load i64, i64* @PHYCS1R_BIT15, align 8
  %53 = load i64, i64* @PHYCS1R_BIT28, align 8
  %54 = or i64 %52, %53
  %55 = call i32 @ahci_set(i32 %50, i32 %51, i64 %54)
  %56 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %57 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @AHCI_PHYCS1R, align 4
  %60 = load i64, i64* @PHYCS1R_HIGHZ, align 8
  %61 = call i32 @ahci_clr(i32 %58, i32 %59, i64 %60)
  %62 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %63 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @AHCI_PHYCS0R, align 4
  %66 = load i32, i32* @PHYCS0R_UF1_MASK, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* @PHYCS0R_UF1_INIT, align 4
  %69 = call i32 @ahci_mask_set(i32 %64, i32 %65, i32 %67, i32 %68)
  %70 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %71 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @AHCI_PHYCS2R, align 4
  %74 = load i32, i32* @PHYCS2R_UF1_MASK, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* @PHYCS2R_UF1_INIT, align 4
  %77 = call i32 @ahci_mask_set(i32 %72, i32 %73, i32 %75, i32 %76)
  %78 = call i32 @DELAY(i32 100)
  %79 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %80 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @AHCI_PHYCS0R, align 4
  %83 = load i64, i64* @PHYCS0R_POWER_ENABLE, align 8
  %84 = call i32 @ahci_set(i32 %81, i32 %82, i64 %83)
  %85 = load i64, i64* @PHY_RESET_TIMEOUT, align 8
  store i64 %85, i64* %3, align 8
  br label %86

86:                                               ; preds = %103, %1
  %87 = load i64, i64* %3, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %86
  %90 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %91 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @AHCI_PHYCS0R, align 4
  %94 = call i64 @ATA_INL(i32 %92, i32 %93)
  store i64 %94, i64* %4, align 8
  %95 = load i64, i64* %4, align 8
  %96 = load i64, i64* @PHYCS0R_POWER_STATUS_MASK, align 8
  %97 = and i64 %95, %96
  %98 = load i64, i64* @PHYCS0R_PS_GOOD, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  br label %106

101:                                              ; preds = %89
  %102 = call i32 @DELAY(i32 10)
  br label %103

103:                                              ; preds = %101
  %104 = load i64, i64* %3, align 8
  %105 = add nsw i64 %104, -1
  store i64 %105, i64* %3, align 8
  br label %86

106:                                              ; preds = %100, %86
  %107 = load i64, i64* %3, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load i64, i64* @bootverbose, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i32, i32* %2, align 4
  %114 = load i64, i64* %4, align 8
  %115 = call i32 @device_printf(i32 %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %114)
  br label %116

116:                                              ; preds = %112, %109, %106
  %117 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %118 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @AHCI_PHYCS2R, align 4
  %121 = load i64, i64* @PHYCS2R_CALIBRATE, align 8
  %122 = call i32 @ahci_set(i32 %119, i32 %120, i64 %121)
  %123 = load i64, i64* @PHY_RESET_TIMEOUT, align 8
  store i64 %123, i64* %3, align 8
  br label %124

124:                                              ; preds = %140, %116
  %125 = load i64, i64* %3, align 8
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %127, label %143

127:                                              ; preds = %124
  %128 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %129 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @AHCI_PHYCS2R, align 4
  %132 = call i64 @ATA_INL(i32 %130, i32 %131)
  store i64 %132, i64* %4, align 8
  %133 = load i64, i64* %4, align 8
  %134 = load i64, i64* @PHYCS2R_CALIBRATE, align 8
  %135 = and i64 %133, %134
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %127
  br label %143

138:                                              ; preds = %127
  %139 = call i32 @DELAY(i32 10)
  br label %140

140:                                              ; preds = %138
  %141 = load i64, i64* %3, align 8
  %142 = add nsw i64 %141, -1
  store i64 %142, i64* %3, align 8
  br label %124

143:                                              ; preds = %137, %124
  %144 = load i64, i64* %3, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %143
  %147 = load i64, i64* @bootverbose, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i32, i32* %2, align 4
  %151 = load i64, i64* %4, align 8
  %152 = call i32 @device_printf(i32 %150, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %151)
  br label %153

153:                                              ; preds = %149, %146, %143
  %154 = call i32 @DELAY(i32 1000)
  %155 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %156 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @AHCI_RWCR, align 4
  %159 = call i32 @ATA_OUTL(i32 %157, i32 %158, i32 7)
  ret void
}

declare dso_local %struct.ahci_controller* @device_get_softc(i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ahci_set(i32, i32, i64) #1

declare dso_local i32 @ahci_mask_set(i32, i32, i32, i32) #1

declare dso_local i32 @ahci_clr(i32, i32, i64) #1

declare dso_local i64 @ATA_INL(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
