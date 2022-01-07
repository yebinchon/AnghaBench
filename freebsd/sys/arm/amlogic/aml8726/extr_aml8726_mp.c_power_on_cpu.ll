; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_mp.c_power_on_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_mp.c_power_on_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aml8726_soc_hw_rev = common dso_local global i32 0, align 4
@AML_SCU_CPU_PWR_STATUS_REG = common dso_local global i32 0, align 4
@AML_SCU_CPU_PWR_STATUS_CPU1_MASK = common dso_local global i32 0, align 4
@AML_M8_CPU_PWR_CNTL0_REG = common dso_local global i32 0, align 4
@AML_M8B_CPU_PWR_CNTL0_MODE_CPU1_MASK = common dso_local global i32 0, align 4
@AML_SOC_CPU_CLK_CNTL_REG = common dso_local global i32 0, align 4
@AML_M8_CPU_CLK_CNTL_RESET_CPU1 = common dso_local global i32 0, align 4
@AML_M8B_CPU_PWR_MEM_PD0_REG = common dso_local global i32 0, align 4
@AML_M8B_CPU_PWR_MEM_PD0_CPU1 = common dso_local global i32 0, align 4
@AML_M8_CPU_PWR_CNTL1_REG = common dso_local global i32 0, align 4
@AML_M8_CPU_PWR_CNTL1_MODE_CPU1_MASK = common dso_local global i32 0, align 4
@AML_M8B_CPU_PWR_CNTL1_PWR_CPU1 = common dso_local global i32 0, align 4
@AML_M8_CPU_PWR_CNTL0_ISO_CPU1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @power_on_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @power_on_cpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp sle i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %151

8:                                                ; preds = %1
  %9 = load i32, i32* @aml8726_soc_hw_rev, align 4
  switch i32 %9, label %150 [
    i32 129, label %10
    i32 128, label %10
  ]

10:                                               ; preds = %8, %8
  %11 = load i32, i32* @AML_SCU_CPU_PWR_STATUS_REG, align 4
  %12 = call i32 @SCU_READ_4(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @AML_SCU_CPU_PWR_STATUS_CPU1_MASK, align 4
  %14 = load i32, i32* %2, align 4
  %15 = sub nsw i32 %14, 1
  %16 = mul nsw i32 %15, 8
  %17 = shl i32 %13, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @AML_SCU_CPU_PWR_STATUS_REG, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @SCU_WRITE_4(i32 %21, i32 %22)
  %24 = load i32, i32* @AML_SCU_CPU_PWR_STATUS_REG, align 4
  %25 = call i32 @SCU_BARRIER(i32 %24)
  %26 = load i32, i32* @aml8726_soc_hw_rev, align 4
  %27 = icmp eq i32 %26, 128
  br i1 %27, label %28, label %44

28:                                               ; preds = %10
  %29 = load i32, i32* @AML_M8_CPU_PWR_CNTL0_REG, align 4
  %30 = call i32 @AOBUS_READ_4(i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @AML_M8B_CPU_PWR_CNTL0_MODE_CPU1_MASK, align 4
  %32 = load i32, i32* %2, align 4
  %33 = sub nsw i32 %32, 1
  %34 = mul nsw i32 %33, 2
  %35 = shl i32 %31, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @AML_M8_CPU_PWR_CNTL0_REG, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @AOBUS_WRITE_4(i32 %39, i32 %40)
  %42 = load i32, i32* @AML_M8_CPU_PWR_CNTL0_REG, align 4
  %43 = call i32 @AOBUS_BARRIER(i32 %42)
  br label %44

44:                                               ; preds = %28, %10
  %45 = call i32 @DELAY(i32 5)
  %46 = load i32, i32* @AML_SOC_CPU_CLK_CNTL_REG, align 4
  %47 = call i32 @CBUS_READ_4(i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @AML_M8_CPU_CLK_CNTL_RESET_CPU1, align 4
  %49 = load i32, i32* %2, align 4
  %50 = sub nsw i32 %49, 1
  %51 = shl i32 %48, %50
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @AML_SOC_CPU_CLK_CNTL_REG, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @CBUS_WRITE_4(i32 %54, i32 %55)
  %57 = load i32, i32* @AML_SOC_CPU_CLK_CNTL_REG, align 4
  %58 = call i32 @CBUS_BARRIER(i32 %57)
  %59 = load i32, i32* @aml8726_soc_hw_rev, align 4
  %60 = icmp eq i32 %59, 128
  br i1 %60, label %61, label %77

61:                                               ; preds = %44
  %62 = load i32, i32* @AML_M8B_CPU_PWR_MEM_PD0_REG, align 4
  %63 = call i32 @AOBUS_READ_4(i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @AML_M8B_CPU_PWR_MEM_PD0_CPU1, align 4
  %65 = load i32, i32* %2, align 4
  %66 = sub nsw i32 %65, 1
  %67 = mul nsw i32 %66, 4
  %68 = ashr i32 %64, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %4, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* @AML_M8B_CPU_PWR_MEM_PD0_REG, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @AOBUS_WRITE_4(i32 %72, i32 %73)
  %75 = load i32, i32* @AML_M8B_CPU_PWR_MEM_PD0_REG, align 4
  %76 = call i32 @AOBUS_BARRIER(i32 %75)
  br label %77

77:                                               ; preds = %61, %44
  %78 = load i32, i32* @AML_M8_CPU_PWR_CNTL1_REG, align 4
  %79 = call i32 @AOBUS_READ_4(i32 %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* @AML_M8_CPU_PWR_CNTL1_MODE_CPU1_MASK, align 4
  %81 = load i32, i32* %2, align 4
  %82 = sub nsw i32 %81, 1
  %83 = mul nsw i32 %82, 2
  %84 = shl i32 %80, %83
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %4, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* @AML_M8_CPU_PWR_CNTL1_REG, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @AOBUS_WRITE_4(i32 %88, i32 %89)
  %91 = load i32, i32* @AML_M8_CPU_PWR_CNTL1_REG, align 4
  %92 = call i32 @AOBUS_BARRIER(i32 %91)
  %93 = call i32 @DELAY(i32 10)
  %94 = load i32, i32* @aml8726_soc_hw_rev, align 4
  %95 = icmp eq i32 %94, 128
  br i1 %95, label %96, label %112

96:                                               ; preds = %77
  br label %97

97:                                               ; preds = %109, %96
  %98 = load i32, i32* @AML_M8_CPU_PWR_CNTL1_REG, align 4
  %99 = call i32 @AOBUS_READ_4(i32 %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* @AML_M8B_CPU_PWR_CNTL1_PWR_CPU1, align 4
  %101 = load i32, i32* %2, align 4
  %102 = sub nsw i32 %101, 1
  %103 = shl i32 %100, %102
  %104 = load i32, i32* %4, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  br label %111

109:                                              ; preds = %97
  %110 = call i32 @DELAY(i32 10)
  br label %97

111:                                              ; preds = %108
  br label %112

112:                                              ; preds = %111, %77
  %113 = load i32, i32* @AML_M8_CPU_PWR_CNTL0_REG, align 4
  %114 = call i32 @AOBUS_READ_4(i32 %113)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* @AML_M8_CPU_PWR_CNTL0_ISO_CPU1, align 4
  %116 = load i32, i32* %2, align 4
  %117 = sub nsw i32 %116, 1
  %118 = shl i32 %115, %117
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %4, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* @AML_M8_CPU_PWR_CNTL0_REG, align 4
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @AOBUS_WRITE_4(i32 %122, i32 %123)
  %125 = load i32, i32* @AML_M8_CPU_PWR_CNTL0_REG, align 4
  %126 = call i32 @AOBUS_BARRIER(i32 %125)
  %127 = load i32, i32* @AML_SOC_CPU_CLK_CNTL_REG, align 4
  %128 = call i32 @CBUS_READ_4(i32 %127)
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* @AML_M8_CPU_CLK_CNTL_RESET_CPU1, align 4
  %130 = load i32, i32* %2, align 4
  %131 = sub nsw i32 %130, 1
  %132 = shl i32 %129, %131
  %133 = xor i32 %132, -1
  %134 = load i32, i32* %4, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* %4, align 4
  %136 = load i32, i32* @AML_SOC_CPU_CLK_CNTL_REG, align 4
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @CBUS_WRITE_4(i32 %136, i32 %137)
  %139 = load i32, i32* @AML_SOC_CPU_CLK_CNTL_REG, align 4
  %140 = call i32 @CBUS_BARRIER(i32 %139)
  %141 = load i32, i32* @aml8726_soc_hw_rev, align 4
  %142 = icmp eq i32 %141, 128
  br i1 %142, label %143, label %149

143:                                              ; preds = %112
  %144 = load i32, i32* @AML_SCU_CPU_PWR_STATUS_REG, align 4
  %145 = load i32, i32* %3, align 4
  %146 = call i32 @SCU_WRITE_4(i32 %144, i32 %145)
  %147 = load i32, i32* @AML_SCU_CPU_PWR_STATUS_REG, align 4
  %148 = call i32 @SCU_BARRIER(i32 %147)
  br label %149

149:                                              ; preds = %143, %112
  br label %151

150:                                              ; preds = %8
  br label %151

151:                                              ; preds = %7, %150, %149
  ret void
}

declare dso_local i32 @SCU_READ_4(i32) #1

declare dso_local i32 @SCU_WRITE_4(i32, i32) #1

declare dso_local i32 @SCU_BARRIER(i32) #1

declare dso_local i32 @AOBUS_READ_4(i32) #1

declare dso_local i32 @AOBUS_WRITE_4(i32, i32) #1

declare dso_local i32 @AOBUS_BARRIER(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CBUS_READ_4(i32) #1

declare dso_local i32 @CBUS_WRITE_4(i32, i32) #1

declare dso_local i32 @CBUS_BARRIER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
