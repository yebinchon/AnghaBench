; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_mmc.c_aml8726_mmc_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_mmc.c_aml8726_mmc_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_mmc_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@AML_MMC_IRQ_STATUS_REG = common dso_local global i32 0, align 4
@AML_MMC_CMD_SEND_REG = common dso_local global i32 0, align 4
@MMC_ERR_NONE = common dso_local global i32 0, align 4
@AML_MMC_IRQ_STATUS_CMD_DONE_IRQ = common dso_local global i32 0, align 4
@AML_MMC_CMD_RESP_NO_CRC7 = common dso_local global i32 0, align 4
@AML_MMC_IRQ_STATUS_RESP_CRC7_OK = common dso_local global i32 0, align 4
@MMC_ERR_BADCRC = common dso_local global i32 0, align 4
@AML_MMC_CMD_RESP_HAS_DATA = common dso_local global i32 0, align 4
@AML_MMC_IRQ_STATUS_RD_CRC16_OK = common dso_local global i32 0, align 4
@AML_MMC_CMD_CMD_HAS_DATA = common dso_local global i32 0, align 4
@AML_MMC_IRQ_STATUS_WR_CRC16_OK = common dso_local global i32 0, align 4
@AML_MMC_IRQ_STATUS_CLEAR_IRQ = common dso_local global i32 0, align 4
@AML_MMC_CMD_RESP_BITS_MASK = common dso_local global i32 0, align 4
@AML_MMC_MULT_CONFIG_RESP_READOUT_EN = common dso_local global i32 0, align 4
@AML_MMC_MULT_CONFIG_REG = common dso_local global i32 0, align 4
@AML_MMC_CMD_RESP_CRC7_FROM_8 = common dso_local global i32 0, align 4
@AML_MMC_CMD_ARGUMENT_REG = common dso_local global i32 0, align 4
@AML_MMC_IRQ_STATUS_CMD_BUSY = common dso_local global i32 0, align 4
@MMC_ERR_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @aml8726_mmc_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aml8726_mmc_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.aml8726_mmc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.aml8726_mmc_softc*
  store %struct.aml8726_mmc_softc* %12, %struct.aml8726_mmc_softc** %3, align 8
  %13 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %3, align 8
  %14 = call i32 @AML_MMC_LOCK(%struct.aml8726_mmc_softc* %13)
  %15 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %3, align 8
  %16 = load i32, i32* @AML_MMC_IRQ_STATUS_REG, align 4
  %17 = call i32 @CSR_READ_4(%struct.aml8726_mmc_softc* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %3, align 8
  %19 = load i32, i32* @AML_MMC_CMD_SEND_REG, align 4
  %20 = call i32 @CSR_READ_4(%struct.aml8726_mmc_softc* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %3, align 8
  %22 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp eq %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %70

26:                                               ; preds = %1
  %27 = load i32, i32* @MMC_ERR_NONE, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @AML_MMC_IRQ_STATUS_CMD_DONE_IRQ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %69

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @AML_MMC_CMD_RESP_NO_CRC7, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @AML_MMC_IRQ_STATUS_RESP_CRC7_OK, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @MMC_ERR_BADCRC, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %42, %37, %32
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @AML_MMC_CMD_RESP_HAS_DATA, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @AML_MMC_IRQ_STATUS_RD_CRC16_OK, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @MMC_ERR_BADCRC, align 4
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %54, %49, %44
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @AML_MMC_CMD_CMD_HAS_DATA, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @AML_MMC_IRQ_STATUS_WR_CRC16_OK, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @MMC_ERR_BADCRC, align 4
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %66, %61, %56
  br label %82

69:                                               ; preds = %26
  br label %70

70:                                               ; preds = %69, %25
  %71 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %3, align 8
  %72 = load i32, i32* @AML_MMC_IRQ_STATUS_REG, align 4
  %73 = load i32, i32* @AML_MMC_IRQ_STATUS_CLEAR_IRQ, align 4
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %73, %74
  %76 = call i32 @CSR_WRITE_4(%struct.aml8726_mmc_softc* %71, i32 %72, i32 %75)
  %77 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %3, align 8
  %78 = load i32, i32* @AML_MMC_IRQ_STATUS_REG, align 4
  %79 = call i32 @CSR_BARRIER(%struct.aml8726_mmc_softc* %77, i32 %78)
  %80 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %3, align 8
  %81 = call i32 @AML_MMC_UNLOCK(%struct.aml8726_mmc_softc* %80)
  br label %174

82:                                               ; preds = %68
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @AML_MMC_CMD_RESP_BITS_MASK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %141

87:                                               ; preds = %82
  %88 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %3, align 8
  %89 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* @AML_MMC_MULT_CONFIG_RESP_READOUT_EN, align 4
  %92 = load i32, i32* %6, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %6, align 4
  %94 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %3, align 8
  %95 = load i32, i32* @AML_MMC_MULT_CONFIG_REG, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @CSR_WRITE_4(%struct.aml8726_mmc_softc* %94, i32 %95, i32 %96)
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @AML_MMC_CMD_RESP_CRC7_FROM_8, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %130

102:                                              ; preds = %87
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %103

103:                                              ; preds = %126, %102
  %104 = load i32, i32* %10, align 4
  %105 = icmp ult i32 %104, 4
  br i1 %105, label %106, label %129

106:                                              ; preds = %103
  %107 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %3, align 8
  %108 = load i32, i32* @AML_MMC_CMD_ARGUMENT_REG, align 4
  %109 = call i32 @CSR_READ_4(%struct.aml8726_mmc_softc* %107, i32 %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = shl i32 %110, 8
  %112 = load i32, i32* %7, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %3, align 8
  %115 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sub i32 3, %119
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  store i32 %113, i32* %122, align 4
  %123 = load i32, i32* %8, align 4
  %124 = ashr i32 %123, 24
  %125 = and i32 %124, 255
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %106
  %127 = load i32, i32* %10, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %103

129:                                              ; preds = %103
  br label %140

130:                                              ; preds = %87
  %131 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %3, align 8
  %132 = load i32, i32* @AML_MMC_CMD_ARGUMENT_REG, align 4
  %133 = call i32 @CSR_READ_4(%struct.aml8726_mmc_softc* %131, i32 %132)
  %134 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %3, align 8
  %135 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  store i32 %133, i32* %139, align 4
  br label %140

140:                                              ; preds = %130, %129
  br label %141

141:                                              ; preds = %140, %82
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @AML_MMC_IRQ_STATUS_CMD_BUSY, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %170

146:                                              ; preds = %141
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @AML_MMC_IRQ_STATUS_CMD_DONE_IRQ, align 4
  %149 = and i32 %147, %148
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %170

151:                                              ; preds = %146
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @MMC_ERR_NONE, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i32, i32* @MMC_ERR_FAILED, align 4
  store i32 %156, i32* %9, align 4
  br label %157

157:                                              ; preds = %155, %151
  %158 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %3, align 8
  %159 = call i32 @aml8726_mmc_soft_reset(%struct.aml8726_mmc_softc* %158, i32 0)
  br label %160

160:                                              ; preds = %167, %157
  %161 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %3, align 8
  %162 = load i32, i32* @AML_MMC_IRQ_STATUS_REG, align 4
  %163 = call i32 @CSR_READ_4(%struct.aml8726_mmc_softc* %161, i32 %162)
  %164 = load i32, i32* @AML_MMC_IRQ_STATUS_CMD_BUSY, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %160
  %168 = call i32 (...) @cpu_spinwait()
  br label %160

169:                                              ; preds = %160
  br label %170

170:                                              ; preds = %169, %146, %141
  %171 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %3, align 8
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @aml8726_mmc_finish_command(%struct.aml8726_mmc_softc* %171, i32 %172)
  br label %174

174:                                              ; preds = %170, %70
  ret void
}

declare dso_local i32 @AML_MMC_LOCK(%struct.aml8726_mmc_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.aml8726_mmc_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_mmc_softc*, i32, i32) #1

declare dso_local i32 @CSR_BARRIER(%struct.aml8726_mmc_softc*, i32) #1

declare dso_local i32 @AML_MMC_UNLOCK(%struct.aml8726_mmc_softc*) #1

declare dso_local i32 @aml8726_mmc_soft_reset(%struct.aml8726_mmc_softc*, i32) #1

declare dso_local i32 @cpu_spinwait(...) #1

declare dso_local i32 @aml8726_mmc_finish_command(%struct.aml8726_mmc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
