; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_init_interrupt_masks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_init_interrupt_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ath_hal_9300 = type { i32, i32, i32, i64, i64 }

@AR9300_INTR_SYNC_DEFAULT = common dso_local global i32 0, align 4
@AR_IMR_TXERR = common dso_local global i32 0, align 4
@AR_IMR_TXURN = common dso_local global i32 0, align 4
@AR_IMR_RXERR = common dso_local global i32 0, align 4
@AR_IMR_RXORN = common dso_local global i32 0, align 4
@AR_IMR_BCNMISC = common dso_local global i32 0, align 4
@AR_IMR_RXINTM = common dso_local global i32 0, align 4
@AR_IMR_RXMINTR = common dso_local global i32 0, align 4
@AR_IMR_RXOK_HP = common dso_local global i32 0, align 4
@AR_INTCFG_MSI_RXINTM = common dso_local global i32 0, align 4
@AR_INTCFG_MSI_RXMINTR = common dso_local global i32 0, align 4
@AR_IMR_RXOK_LP = common dso_local global i32 0, align 4
@AR_INTCFG_MSI_RXOK = common dso_local global i32 0, align 4
@AR_IMR_TXINTM = common dso_local global i32 0, align 4
@AR_IMR_TXMINTR = common dso_local global i32 0, align 4
@AR_INTCFG_MSI_TXINTM = common dso_local global i32 0, align 4
@AR_INTCFG_MSI_TXMINTR = common dso_local global i32 0, align 4
@AR_IMR_TXOK = common dso_local global i32 0, align 4
@AR_INTCFG_MSI_TXOK = common dso_local global i32 0, align 4
@HAL_M_HOSTAP = common dso_local global i64 0, align 8
@AR_IMR_MIB = common dso_local global i32 0, align 4
@AR_IMR = common dso_local global i32 0, align 4
@AR_IMR_S2 = common dso_local global i32 0, align 4
@AR_IMR_S2_GTT = common dso_local global i32 0, align 4
@AR_PCIE_MSI = common dso_local global i32 0, align 4
@AR_PCIE_MSI_HW_DBI_WR_EN = common dso_local global i32 0, align 4
@AR_PCIE_MSI_HW_INT_PENDING_ADDR_MSI_64 = common dso_local global i32 0, align 4
@AR_PCIE_MSI_HW_INT_PENDING_ADDR = common dso_local global i32 0, align 4
@AR_INTCFG = common dso_local global i32 0, align 4
@AR_INTR_SYNC_CAUSE = common dso_local global i32 0, align 4
@AR9300_INTR_SYNC_DEF_NO_HOST1_PERR = common dso_local global i32 0, align 4
@AR9340_INTR_SYNC_DEFAULT = common dso_local global i32 0, align 4
@AR_INTR_SYNC_ENABLE = common dso_local global i32 0, align 4
@AR_INTR_SYNC_MASK = common dso_local global i32 0, align 4
@AR_INTR_PRIO_ASYNC_ENABLE = common dso_local global i32 0, align 4
@AR_INTR_PRIO_ASYNC_MASK = common dso_local global i32 0, align 4
@AR_INTR_PRIO_SYNC_ENABLE = common dso_local global i32 0, align 4
@AR_INTR_PRIO_SYNC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, i64)* @ar9300_init_interrupt_masks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_init_interrupt_masks(%struct.ath_hal* %0, i64 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ath_hal_9300*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %9 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %8)
  store %struct.ath_hal_9300* %9, %struct.ath_hal_9300** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @AR9300_INTR_SYNC_DEFAULT, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @AR_IMR_TXERR, align 4
  %12 = load i32, i32* @AR_IMR_TXURN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @AR_IMR_RXERR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @AR_IMR_RXORN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @AR_IMR_BCNMISC, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %21 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %23 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %2
  %27 = load i32, i32* @AR_IMR_RXINTM, align 4
  %28 = load i32, i32* @AR_IMR_RXMINTR, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @AR_IMR_RXOK_HP, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %33 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* @AR_INTCFG_MSI_RXINTM, align 4
  %37 = load i32, i32* @AR_INTCFG_MSI_RXMINTR, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %52

41:                                               ; preds = %2
  %42 = load i32, i32* @AR_IMR_RXOK_LP, align 4
  %43 = load i32, i32* @AR_IMR_RXOK_HP, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %46 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* @AR_INTCFG_MSI_RXOK, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %41, %26
  %53 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %54 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load i32, i32* @AR_IMR_TXINTM, align 4
  %59 = load i32, i32* @AR_IMR_TXMINTR, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %62 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* @AR_INTCFG_MSI_TXINTM, align 4
  %66 = load i32, i32* @AR_INTCFG_MSI_TXMINTR, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %79

70:                                               ; preds = %52
  %71 = load i32, i32* @AR_IMR_TXOK, align 4
  %72 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %73 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* @AR_INTCFG_MSI_TXOK, align 4
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %70, %57
  %80 = load i64, i64* %4, align 8
  %81 = load i64, i64* @HAL_M_HOSTAP, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32, i32* @AR_IMR_MIB, align 4
  %85 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %86 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %79
  %90 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %91 = load i32, i32* @AR_IMR, align 4
  %92 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %93 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @OS_REG_WRITE(%struct.ath_hal* %90, i32 %91, i32 %94)
  %96 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %97 = load i32, i32* @AR_IMR_S2, align 4
  %98 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %99 = load i32, i32* @AR_IMR_S2, align 4
  %100 = call i32 @OS_REG_READ(%struct.ath_hal* %98, i32 %99)
  %101 = load i32, i32* @AR_IMR_S2_GTT, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @OS_REG_WRITE(%struct.ath_hal* %96, i32 %97, i32 %102)
  %104 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %105 = load i32, i32* @AR_IMR_S2, align 4
  %106 = call i32 @OS_REG_READ(%struct.ath_hal* %104, i32 %105)
  %107 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %108 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %110 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %147

114:                                              ; preds = %89
  %115 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %116 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %117 = load i32, i32* @AR_PCIE_MSI, align 4
  %118 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %116, i32 %117)
  %119 = call i32 @OS_REG_READ(%struct.ath_hal* %115, i32 %118)
  %120 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %121 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* @AR_PCIE_MSI_HW_DBI_WR_EN, align 4
  %123 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %124 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %128 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %114
  %131 = load i32, i32* @AR_PCIE_MSI_HW_INT_PENDING_ADDR_MSI_64, align 4
  %132 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %133 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %142

136:                                              ; preds = %114
  %137 = load i32, i32* @AR_PCIE_MSI_HW_INT_PENDING_ADDR, align 4
  %138 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %139 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %136, %130
  %143 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %144 = load i32, i32* @AR_INTCFG, align 4
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @OS_REG_WRITE(%struct.ath_hal* %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %142, %89
  %148 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %149 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %150 = load i32, i32* @AR_INTR_SYNC_CAUSE, align 4
  %151 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %149, i32 %150)
  %152 = call i32 @OS_REG_WRITE(%struct.ath_hal* %148, i32 %151, i32 -1)
  %153 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %154 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %147
  %157 = load i32, i32* @AR9300_INTR_SYNC_DEF_NO_HOST1_PERR, align 4
  store i32 %157, i32* %7, align 4
  br label %165

158:                                              ; preds = %147
  %159 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %160 = call i64 @AR_SREV_WASP(%struct.ath_hal* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = load i32, i32* @AR9340_INTR_SYNC_DEFAULT, align 4
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %162, %158
  br label %165

165:                                              ; preds = %164, %156
  %166 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %167 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %168 = load i32, i32* @AR_INTR_SYNC_ENABLE, align 4
  %169 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %167, i32 %168)
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @OS_REG_WRITE(%struct.ath_hal* %166, i32 %169, i32 %170)
  %172 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %173 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %174 = load i32, i32* @AR_INTR_SYNC_MASK, align 4
  %175 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %173, i32 %174)
  %176 = call i32 @OS_REG_WRITE(%struct.ath_hal* %172, i32 %175, i32 0)
  %177 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %178 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %179 = load i32, i32* @AR_INTR_PRIO_ASYNC_ENABLE, align 4
  %180 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %178, i32 %179)
  %181 = call i32 @OS_REG_WRITE(%struct.ath_hal* %177, i32 %180, i32 0)
  %182 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %183 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %184 = load i32, i32* @AR_INTR_PRIO_ASYNC_MASK, align 4
  %185 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %183, i32 %184)
  %186 = call i32 @OS_REG_WRITE(%struct.ath_hal* %182, i32 %185, i32 0)
  %187 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %188 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %189 = load i32, i32* @AR_INTR_PRIO_SYNC_ENABLE, align 4
  %190 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %188, i32 %189)
  %191 = call i32 @OS_REG_WRITE(%struct.ath_hal* %187, i32 %190, i32 0)
  %192 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %193 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %194 = load i32, i32* @AR_INTR_PRIO_SYNC_MASK, align 4
  %195 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %193, i32 %194)
  %196 = call i32 @OS_REG_WRITE(%struct.ath_hal* %192, i32 %195, i32 0)
  ret void
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @AR_HOSTIF_REG(%struct.ath_hal*, i32) #1

declare dso_local i64 @AR_SREV_POSEIDON(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_WASP(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
