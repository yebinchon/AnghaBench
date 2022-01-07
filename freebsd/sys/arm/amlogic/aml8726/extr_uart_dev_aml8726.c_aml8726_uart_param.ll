; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_uart_dev_aml8726.c_aml8726_uart_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_uart_dev_aml8726.c_aml8726_uart_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@AML_UART_CONTROL_REG = common dso_local global i32 0, align 4
@AML_UART_CONTROL_DB_MASK = common dso_local global i32 0, align 4
@AML_UART_CONTROL_SB_MASK = common dso_local global i32 0, align 4
@AML_UART_CONTROL_P_MASK = common dso_local global i32 0, align 4
@AML_UART_CONTROL_5_DB = common dso_local global i32 0, align 4
@AML_UART_CONTROL_6_DB = common dso_local global i32 0, align 4
@AML_UART_CONTROL_7_DB = common dso_local global i32 0, align 4
@AML_UART_CONTROL_8_DB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AML_UART_CONTROL_1_SB = common dso_local global i32 0, align 4
@AML_UART_CONTROL_2_SB = common dso_local global i32 0, align 4
@AML_UART_CONTROL_P_EVEN = common dso_local global i32 0, align 4
@AML_UART_CONTROL_P_EN = common dso_local global i32 0, align 4
@AML_UART_CONTROL_P_ODD = common dso_local global i32 0, align 4
@aml8726_soc_hw_rev = common dso_local global i32 0, align 4
@AML_UART_NEW_BAUD_RATE_MASK = common dso_local global i32 0, align 4
@AML_UART_NEW_BAUD_RATE_SHIFT = common dso_local global i32 0, align 4
@AML_UART_NEW_BAUD_REG = common dso_local global i32 0, align 4
@AML_UART_NEW_BAUD_USE_XTAL_CLK = common dso_local global i32 0, align 4
@AML_UART_NEW_BAUD_RATE_EN = common dso_local global i32 0, align 4
@AML_UART_CONTROL_BAUD_MASK = common dso_local global i32 0, align 4
@AML_UART_CONTROL_BAUD_WIDTH = common dso_local global i32 0, align 4
@AML_UART_MISC_REG = common dso_local global i32 0, align 4
@AML_UART_MISC_OLD_RX_BAUD = common dso_local global i32 0, align 4
@AML_UART_MISC_BAUD_EXT_MASK = common dso_local global i32 0, align 4
@AML_UART_MISC_BAUD_EXT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*, i32, i32, i32, i32)* @aml8726_uart_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_uart_param(%struct.uart_bas* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_bas*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %17 = load i32, i32* @AML_UART_CONTROL_REG, align 4
  %18 = call i32 @uart_getreg(%struct.uart_bas* %16, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* @AML_UART_CONTROL_DB_MASK, align 4
  %20 = load i32, i32* @AML_UART_CONTROL_SB_MASK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @AML_UART_CONTROL_P_MASK, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %12, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %44 [
    i32 5, label %28
    i32 6, label %32
    i32 7, label %36
    i32 8, label %40
  ]

28:                                               ; preds = %5
  %29 = load i32, i32* @AML_UART_CONTROL_5_DB, align 4
  %30 = load i32, i32* %12, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %12, align 4
  br label %46

32:                                               ; preds = %5
  %33 = load i32, i32* @AML_UART_CONTROL_6_DB, align 4
  %34 = load i32, i32* %12, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %12, align 4
  br label %46

36:                                               ; preds = %5
  %37 = load i32, i32* @AML_UART_CONTROL_7_DB, align 4
  %38 = load i32, i32* %12, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %12, align 4
  br label %46

40:                                               ; preds = %5
  %41 = load i32, i32* @AML_UART_CONTROL_8_DB, align 4
  %42 = load i32, i32* %12, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %12, align 4
  br label %46

44:                                               ; preds = %5
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %6, align 4
  br label %169

46:                                               ; preds = %40, %36, %32, %28
  %47 = load i32, i32* %10, align 4
  switch i32 %47, label %56 [
    i32 1, label %48
    i32 2, label %52
  ]

48:                                               ; preds = %46
  %49 = load i32, i32* @AML_UART_CONTROL_1_SB, align 4
  %50 = load i32, i32* %12, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %12, align 4
  br label %58

52:                                               ; preds = %46
  %53 = load i32, i32* @AML_UART_CONTROL_2_SB, align 4
  %54 = load i32, i32* %12, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %12, align 4
  br label %58

56:                                               ; preds = %46
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %6, align 4
  br label %169

58:                                               ; preds = %52, %48
  %59 = load i32, i32* %11, align 4
  switch i32 %59, label %75 [
    i32 130, label %60
    i32 128, label %67
    i32 129, label %74
  ]

60:                                               ; preds = %58
  %61 = load i32, i32* @AML_UART_CONTROL_P_EVEN, align 4
  %62 = load i32, i32* %12, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* @AML_UART_CONTROL_P_EN, align 4
  %65 = load i32, i32* %12, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %12, align 4
  br label %77

67:                                               ; preds = %58
  %68 = load i32, i32* @AML_UART_CONTROL_P_ODD, align 4
  %69 = load i32, i32* %12, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* @AML_UART_CONTROL_P_EN, align 4
  %72 = load i32, i32* %12, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %12, align 4
  br label %77

74:                                               ; preds = %58
  br label %77

75:                                               ; preds = %58
  %76 = load i32, i32* @EINVAL, align 4
  store i32 %76, i32* %6, align 4
  br label %169

77:                                               ; preds = %74, %67, %60
  %78 = load i32, i32* %8, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %162

80:                                               ; preds = %77
  %81 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %82 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %162

85:                                               ; preds = %80
  %86 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %87 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sdiv i32 %88, 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @aml8726_uart_divisor(i32 %89, i32 %90)
  %92 = sub nsw i32 %91, 1
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* @aml8726_soc_hw_rev, align 4
  switch i32 %93, label %123 [
    i32 133, label %94
    i32 132, label %94
    i32 131, label %94
  ]

94:                                               ; preds = %85, %85, %85
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* @AML_UART_NEW_BAUD_RATE_MASK, align 4
  %97 = load i32, i32* @AML_UART_NEW_BAUD_RATE_SHIFT, align 4
  %98 = ashr i32 %96, %97
  %99 = icmp sgt i32 %95, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* @EINVAL, align 4
  store i32 %101, i32* %6, align 4
  br label %169

102:                                              ; preds = %94
  %103 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %104 = load i32, i32* @AML_UART_NEW_BAUD_REG, align 4
  %105 = call i32 @uart_getreg(%struct.uart_bas* %103, i32 %104)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* @AML_UART_NEW_BAUD_USE_XTAL_CLK, align 4
  %107 = load i32, i32* @AML_UART_NEW_BAUD_RATE_MASK, align 4
  %108 = or i32 %106, %107
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %14, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* @AML_UART_NEW_BAUD_RATE_EN, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* @AML_UART_NEW_BAUD_RATE_SHIFT, align 4
  %115 = shl i32 %113, %114
  %116 = or i32 %112, %115
  %117 = load i32, i32* %14, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %14, align 4
  %119 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %120 = load i32, i32* @AML_UART_NEW_BAUD_REG, align 4
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @uart_setreg(%struct.uart_bas* %119, i32 %120, i32 %121)
  store i32 0, i32* %15, align 4
  br label %129

123:                                              ; preds = %85
  %124 = load i32, i32* %15, align 4
  %125 = icmp sgt i32 %124, 65535
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i32, i32* @EINVAL, align 4
  store i32 %127, i32* %6, align 4
  br label %169

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128, %102
  %130 = load i32, i32* @AML_UART_CONTROL_BAUD_MASK, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %12, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* @AML_UART_CONTROL_BAUD_MASK, align 4
  %136 = and i32 %134, %135
  %137 = load i32, i32* %12, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* @AML_UART_CONTROL_BAUD_WIDTH, align 4
  %140 = load i32, i32* %15, align 4
  %141 = ashr i32 %140, %139
  store i32 %141, i32* %15, align 4
  %142 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %143 = load i32, i32* @AML_UART_MISC_REG, align 4
  %144 = call i32 @uart_getreg(%struct.uart_bas* %142, i32 %143)
  store i32 %144, i32* %13, align 4
  %145 = load i32, i32* @AML_UART_MISC_OLD_RX_BAUD, align 4
  %146 = load i32, i32* @AML_UART_MISC_BAUD_EXT_MASK, align 4
  %147 = or i32 %145, %146
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %13, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* @AML_UART_MISC_BAUD_EXT_SHIFT, align 4
  %153 = shl i32 %151, %152
  %154 = load i32, i32* @AML_UART_MISC_BAUD_EXT_MASK, align 4
  %155 = and i32 %153, %154
  %156 = load i32, i32* %13, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %13, align 4
  %158 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %159 = load i32, i32* @AML_UART_MISC_REG, align 4
  %160 = load i32, i32* %13, align 4
  %161 = call i32 @uart_setreg(%struct.uart_bas* %158, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %129, %80, %77
  %163 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %164 = load i32, i32* @AML_UART_CONTROL_REG, align 4
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @uart_setreg(%struct.uart_bas* %163, i32 %164, i32 %165)
  %167 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %168 = call i32 @uart_barrier(%struct.uart_bas* %167)
  store i32 0, i32* %6, align 4
  br label %169

169:                                              ; preds = %162, %126, %100, %75, %56, %44
  %170 = load i32, i32* %6, align 4
  ret i32 %170
}

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @aml8726_uart_divisor(i32, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
