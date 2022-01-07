; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_i2c.c_tegra_i2c_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_i2c.c_tegra_i2c_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i64, i32, i32* }
%struct.tegra_i2c_softc = type { i32, i32, i64, i64, %struct.iic_msg*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIC_M_NOSTOP = common dso_local global i32 0, align 4
@XFER_CONTINUE = common dso_local global i32 0, align 4
@XFER_STOP = common dso_local global i32 0, align 4
@IIC_M_NOSTART = common dso_local global i32 0, align 4
@XFER_REPEAT_START = common dso_local global i32 0, align 4
@cold = common dso_local global i64 0, align 8
@PZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"iic\00", align 1
@I2C_REQUEST_TIMEOUT = common dso_local global i32 0, align 4
@I2C_INTERRUPT_MASK_REGISTER = common dso_local global i32 0, align 4
@I2C_INTERRUPT_STATUS_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.iic_msg*, i32)* @tegra_i2c_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_i2c_transfer(i32 %0, %struct.iic_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iic_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tegra_i2c_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.iic_msg* %1, %struct.iic_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.tegra_i2c_softc* @device_get_softc(i32 %11)
  store %struct.tegra_i2c_softc* %12, %struct.tegra_i2c_softc** %9, align 8
  %13 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %14 = call i32 @LOCK(%struct.tegra_i2c_softc* %13)
  br label %15

15:                                               ; preds = %20, %3
  %16 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %17 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %22 = call i32 @SLEEP(%struct.tegra_i2c_softc* %21, i32 0)
  br label %15

23:                                               ; preds = %15
  %24 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %25 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %137, %23
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %140

30:                                               ; preds = %26
  %31 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %31, i64 %33
  %35 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %36 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %35, i32 0, i32 4
  store %struct.iic_msg* %34, %struct.iic_msg** %36, align 8
  %37 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %38 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %40 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %42 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %44 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %43, i32 0, i32 4
  %45 = load %struct.iic_msg*, %struct.iic_msg** %44, align 8
  %46 = icmp eq %struct.iic_msg* %45, null
  br i1 %46, label %61, label %47

47:                                               ; preds = %30
  %48 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %49 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %48, i32 0, i32 4
  %50 = load %struct.iic_msg*, %struct.iic_msg** %49, align 8
  %51 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %56 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %55, i32 0, i32 4
  %57 = load %struct.iic_msg*, %struct.iic_msg** %56, align 8
  %58 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54, %47, %30
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %7, align 4
  br label %140

63:                                               ; preds = %54
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 %65, 1
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %69, i64 %71
  %73 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @IIC_M_NOSTOP, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* @XFER_CONTINUE, align 4
  store i32 %79, i32* %10, align 4
  br label %82

80:                                               ; preds = %68
  %81 = load i32, i32* @XFER_STOP, align 4
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %80, %78
  br label %99

83:                                               ; preds = %63
  %84 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %84, i64 %87
  %89 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @IIC_M_NOSTART, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %83
  %95 = load i32, i32* @XFER_CONTINUE, align 4
  store i32 %95, i32* %10, align 4
  br label %98

96:                                               ; preds = %83
  %97 = load i32, i32* @XFER_REPEAT_START, align 4
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %96, %94
  br label %99

99:                                               ; preds = %98, %82
  %100 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %101 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %102 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %101, i32 0, i32 4
  %103 = load %struct.iic_msg*, %struct.iic_msg** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @tegra_i2c_start_msg(%struct.tegra_i2c_softc* %100, %struct.iic_msg* %103, i32 %104)
  %106 = load i64, i64* @cold, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %99
  %109 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %110 = call i32 @tegra_i2c_poll(%struct.tegra_i2c_softc* %109)
  store i32 %110, i32* %7, align 4
  br label %119

111:                                              ; preds = %99
  %112 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %113 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %112, i32 0, i32 2
  %114 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %115 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %114, i32 0, i32 5
  %116 = load i32, i32* @PZERO, align 4
  %117 = load i32, i32* @I2C_REQUEST_TIMEOUT, align 4
  %118 = call i32 @msleep(i64* %113, i32* %115, i32 %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %117)
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %111, %108
  %120 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %121 = load i32, i32* @I2C_INTERRUPT_MASK_REGISTER, align 4
  %122 = call i32 @WR4(%struct.tegra_i2c_softc* %120, i32 %121, i32 0)
  %123 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %124 = load i32, i32* @I2C_INTERRUPT_STATUS_REGISTER, align 4
  %125 = call i32 @WR4(%struct.tegra_i2c_softc* %123, i32 %124, i32 -1)
  %126 = load i32, i32* %7, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %119
  %129 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %130 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %128, %119
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %140

136:                                              ; preds = %132
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %26

140:                                              ; preds = %135, %61, %26
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %145 = call i32 @tegra_i2c_hw_init(%struct.tegra_i2c_softc* %144)
  %146 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %147 = call i32 @tegra_i2c_flush_fifo(%struct.tegra_i2c_softc* %146)
  br label %148

148:                                              ; preds = %143, %140
  %149 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %150 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %149, i32 0, i32 4
  store %struct.iic_msg* null, %struct.iic_msg** %150, align 8
  %151 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %152 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %151, i32 0, i32 3
  store i64 0, i64* %152, align 8
  %153 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %154 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %153, i32 0, i32 1
  store i32 0, i32* %154, align 4
  %155 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %156 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %155, i32 0, i32 2
  store i64 0, i64* %156, align 8
  %157 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %158 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %157, i32 0, i32 0
  store i32 0, i32* %158, align 8
  %159 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %160 = call i32 @wakeup(%struct.tegra_i2c_softc* %159)
  %161 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %9, align 8
  %162 = call i32 @UNLOCK(%struct.tegra_i2c_softc* %161)
  %163 = load i32, i32* %7, align 4
  ret i32 %163
}

declare dso_local %struct.tegra_i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @LOCK(%struct.tegra_i2c_softc*) #1

declare dso_local i32 @SLEEP(%struct.tegra_i2c_softc*, i32) #1

declare dso_local i32 @tegra_i2c_start_msg(%struct.tegra_i2c_softc*, %struct.iic_msg*, i32) #1

declare dso_local i32 @tegra_i2c_poll(%struct.tegra_i2c_softc*) #1

declare dso_local i32 @msleep(i64*, i32*, i32, i8*, i32) #1

declare dso_local i32 @WR4(%struct.tegra_i2c_softc*, i32, i32) #1

declare dso_local i32 @tegra_i2c_hw_init(%struct.tegra_i2c_softc*) #1

declare dso_local i32 @tegra_i2c_flush_fifo(%struct.tegra_i2c_softc*) #1

declare dso_local i32 @wakeup(%struct.tegra_i2c_softc*) #1

declare dso_local i32 @UNLOCK(%struct.tegra_i2c_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
