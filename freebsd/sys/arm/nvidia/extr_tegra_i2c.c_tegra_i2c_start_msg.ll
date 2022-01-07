; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_i2c.c_tegra_i2c_start_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_i2c.c_tegra_i2c_start_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_i2c_softc = type { i32 }
%struct.iic_msg = type { i32, i32, i32 }

@PACKET_HEADER0_HEADER_SIZE_SHIFT = common dso_local global i32 0, align 4
@PACKET_HEADER0_PROTOCOL_I2C = common dso_local global i32 0, align 4
@PACKET_HEADER0_CONT_ID_SHIFT = common dso_local global i32 0, align 4
@PACKET_HEADER0_PACKET_ID_SHIFT = common dso_local global i32 0, align 4
@I2C_TX_PACKET_FIFO = common dso_local global i32 0, align 4
@I2C_HEADER_IE_ENABLE = common dso_local global i32 0, align 4
@XFER_CONTINUE = common dso_local global i32 0, align 4
@I2C_HEADER_CONTINUE_XFER = common dso_local global i32 0, align 4
@XFER_REPEAT_START = common dso_local global i32 0, align 4
@I2C_HEADER_REPEAT_START = common dso_local global i32 0, align 4
@I2C_HEADER_SLAVE_ADDR_SHIFT = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@I2C_HEADER_READ = common dso_local global i32 0, align 4
@I2C_INT_NOACK = common dso_local global i32 0, align 4
@I2C_INT_ARB_LOST = common dso_local global i32 0, align 4
@I2C_INT_PACKET_XFER_COMPLETE = common dso_local global i32 0, align 4
@I2C_INT_RFIFO_DATA_REQ = common dso_local global i32 0, align 4
@I2C_INT_TFIFO_DATA_REQ = common dso_local global i32 0, align 4
@I2C_INTERRUPT_MASK_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_i2c_softc*, %struct.iic_msg*, i32)* @tegra_i2c_start_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_i2c_start_msg(%struct.tegra_i2c_softc* %0, %struct.iic_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.tegra_i2c_softc*, align 8
  %5 = alloca %struct.iic_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tegra_i2c_softc* %0, %struct.tegra_i2c_softc** %4, align 8
  store %struct.iic_msg* %1, %struct.iic_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @PACKET_HEADER0_HEADER_SIZE_SHIFT, align 4
  %10 = shl i32 0, %9
  %11 = load i32, i32* @PACKET_HEADER0_PROTOCOL_I2C, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @PACKET_HEADER0_CONT_ID_SHIFT, align 4
  %14 = shl i32 1, %13
  %15 = or i32 %12, %14
  %16 = load i32, i32* @PACKET_HEADER0_PACKET_ID_SHIFT, align 4
  %17 = shl i32 1, %16
  %18 = or i32 %15, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %4, align 8
  %20 = load i32, i32* @I2C_TX_PACKET_FIFO, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @WR4(%struct.tegra_i2c_softc* %19, i32 %20, i32 %21)
  %23 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %4, align 8
  %24 = load i32, i32* @I2C_TX_PACKET_FIFO, align 4
  %25 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %26 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  %29 = call i32 @WR4(%struct.tegra_i2c_softc* %23, i32 %24, i32 %28)
  %30 = load i32, i32* @I2C_HEADER_IE_ENABLE, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @XFER_CONTINUE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load i32, i32* @I2C_HEADER_CONTINUE_XFER, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %47

38:                                               ; preds = %3
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @XFER_REPEAT_START, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* @I2C_HEADER_REPEAT_START, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46, %34
  %48 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %49 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @I2C_HEADER_SLAVE_ADDR_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %56 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IIC_M_RD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %47
  %62 = load i32, i32* @I2C_HEADER_READ, align 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* @I2C_HEADER_SLAVE_ADDR_SHIFT, align 4
  %66 = shl i32 1, %65
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %75

69:                                               ; preds = %47
  %70 = load i32, i32* @I2C_HEADER_SLAVE_ADDR_SHIFT, align 4
  %71 = shl i32 1, %70
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %69, %61
  %76 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %4, align 8
  %77 = load i32, i32* @I2C_TX_PACKET_FIFO, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @WR4(%struct.tegra_i2c_softc* %76, i32 %77, i32 %78)
  %80 = load i32, i32* @I2C_INT_NOACK, align 4
  %81 = load i32, i32* @I2C_INT_ARB_LOST, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @I2C_INT_PACKET_XFER_COMPLETE, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %8, align 4
  %85 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %86 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IIC_M_RD, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %75
  %92 = load i32, i32* @I2C_INT_RFIFO_DATA_REQ, align 4
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %8, align 4
  br label %99

95:                                               ; preds = %75
  %96 = load i32, i32* @I2C_INT_TFIFO_DATA_REQ, align 4
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %95, %91
  %100 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %4, align 8
  %101 = load i32, i32* @I2C_INTERRUPT_MASK_REGISTER, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @WR4(%struct.tegra_i2c_softc* %100, i32 %101, i32 %102)
  ret void
}

declare dso_local i32 @WR4(%struct.tegra_i2c_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
