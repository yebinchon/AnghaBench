; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_spi.c_bcm_spi_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_spi.c_bcm_spi_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_command = type { i64, i64, i64, i64 }
%struct.bcm_spi_softc = type { i32, i64, i32, i32, i64, i64, %struct.spi_command* }

@.str = private unnamed_addr constant [36 x i8] c"TX/RX command sizes should be equal\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"TX/RX data sizes should be equal\00", align 1
@SPIBUS_CS_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Invalid chip select %u requested by %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Invalid clock %uHz requested by %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Invalid mode %u requested by %s\0A\00", align 1
@BCM_SPI_BUSY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"bcm_spi\00", align 1
@SPI_CS = common dso_local global i32 0, align 4
@SPI_CS_CLEAR_RXFIFO = common dso_local global i32 0, align 4
@SPI_CS_CLEAR_TXFIFO = common dso_local global i32 0, align 4
@SPI_CS_CPOL = common dso_local global i32 0, align 4
@SPI_CS_CPHA = common dso_local global i32 0, align 4
@SPIBUS_MODE_CPHA = common dso_local global i32 0, align 4
@SPIBUS_MODE_CPOL = common dso_local global i32 0, align 4
@SPI_CORE_CLK = common dso_local global i32 0, align 4
@SPI_CLK = common dso_local global i32 0, align 4
@SPI_CS_MASK = common dso_local global i32 0, align 4
@SPI_CS_TA = common dso_local global i32 0, align 4
@SPI_CS_INTR = common dso_local global i32 0, align 4
@SPI_CS_INTD = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"SPI error (timeout)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SPI_CS_CSPOL0 = common dso_local global i32 0, align 4
@SPI_CS_CSPOL1 = common dso_local global i32 0, align 4
@SPI_CS_CSPOL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.spi_command*)* @bcm_spi_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_spi_transfer(i32 %0, i32 %1, %struct.spi_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_command*, align 8
  %8 = alloca %struct.bcm_spi_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.spi_command* %2, %struct.spi_command** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.bcm_spi_softc* @device_get_softc(i32 %13)
  store %struct.bcm_spi_softc* %14, %struct.bcm_spi_softc** %8, align 8
  %15 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %16 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %19 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %25 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %28 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @spibus_get_cs(i32 %33, i32* %9)
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @SPIBUS_CS_HIGH, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = icmp sgt i32 %38, 2
  br i1 %39, label %40, label %47

40:                                               ; preds = %3
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @device_get_nameunit(i32 %43)
  %45 = call i32 (i32, i8*, ...) @device_printf(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %4, align 4
  br label %214

47:                                               ; preds = %3
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @spibus_get_clock(i32 %48, i32* %11)
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @device_get_nameunit(i32 %55)
  %57 = call i32 (i32, i8*, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %54, i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %4, align 4
  br label %214

59:                                               ; preds = %47
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @spibus_get_mode(i32 %60, i32* %10)
  %62 = load i32, i32* %10, align 4
  %63 = icmp sgt i32 %62, 3
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @device_get_nameunit(i32 %67)
  %69 = call i32 (i32, i8*, ...) @device_printf(i32 %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %66, i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %4, align 4
  br label %214

71:                                               ; preds = %59
  %72 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %8, align 8
  %73 = call i32 @BCM_SPI_LOCK(%struct.bcm_spi_softc* %72)
  br label %74

74:                                               ; preds = %81, %71
  %75 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %8, align 8
  %76 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @BCM_SPI_BUSY, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %8, align 8
  %84 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %83, i32 0, i32 3
  %85 = call i32 @mtx_sleep(i32 %82, i32* %84, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 0)
  br label %74

86:                                               ; preds = %74
  %87 = load i32, i32* @BCM_SPI_BUSY, align 4
  %88 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %8, align 8
  %89 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %8, align 8
  %91 = load i32, i32* @SPI_CS, align 4
  %92 = load i32, i32* @SPI_CS_CLEAR_RXFIFO, align 4
  %93 = load i32, i32* @SPI_CS_CLEAR_TXFIFO, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @SPI_CS_CLEAR_RXFIFO, align 4
  %96 = load i32, i32* @SPI_CS_CLEAR_TXFIFO, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @bcm_spi_modifyreg(%struct.bcm_spi_softc* %90, i32 %91, i32 %94, i32 %97)
  %99 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %100 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %8, align 8
  %101 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %100, i32 0, i32 6
  store %struct.spi_command* %99, %struct.spi_command** %101, align 8
  %102 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %8, align 8
  %103 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %102, i32 0, i32 5
  store i64 0, i64* %103, align 8
  %104 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %8, align 8
  %105 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %104, i32 0, i32 4
  store i64 0, i64* %105, align 8
  %106 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %107 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %110 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %108, %111
  %113 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %8, align 8
  %114 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  %115 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %8, align 8
  %116 = load i32, i32* @SPI_CS, align 4
  %117 = load i32, i32* @SPI_CS_CPOL, align 4
  %118 = load i32, i32* @SPI_CS_CPHA, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @SPIBUS_MODE_CPHA, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %86
  %125 = load i32, i32* @SPI_CS_CPHA, align 4
  br label %127

126:                                              ; preds = %86
  br label %127

127:                                              ; preds = %126, %124
  %128 = phi i32 [ %125, %124 ], [ 0, %126 ]
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @SPIBUS_MODE_CPOL, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = load i32, i32* @SPI_CS_CPOL, align 4
  br label %136

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135, %133
  %137 = phi i32 [ %134, %133 ], [ 0, %135 ]
  %138 = or i32 %128, %137
  %139 = call i32 @bcm_spi_modifyreg(%struct.bcm_spi_softc* %115, i32 %116, i32 %119, i32 %138)
  %140 = load i32, i32* @SPI_CORE_CLK, align 4
  %141 = load i32, i32* %11, align 4
  %142 = sdiv i32 %140, %141
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp sle i32 %143, 1
  br i1 %144, label %145, label %146

145:                                              ; preds = %136
  store i32 2, i32* %11, align 4
  br label %154

146:                                              ; preds = %136
  %147 = load i32, i32* %11, align 4
  %148 = srem i32 %147, 2
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %11, align 4
  br label %153

153:                                              ; preds = %150, %146
  br label %154

154:                                              ; preds = %153, %145
  %155 = load i32, i32* %11, align 4
  %156 = icmp sgt i32 %155, 65535
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store i32 0, i32* %11, align 4
  br label %158

158:                                              ; preds = %157, %154
  %159 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %8, align 8
  %160 = load i32, i32* @SPI_CLK, align 4
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @BCM_SPI_WRITE(%struct.bcm_spi_softc* %159, i32 %160, i32 %161)
  %163 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %8, align 8
  %164 = load i32, i32* @SPI_CS, align 4
  %165 = load i32, i32* @SPI_CS_MASK, align 4
  %166 = load i32, i32* @SPI_CS_TA, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @SPI_CS_INTR, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @SPI_CS_INTD, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* @SPIBUS_CS_HIGH, align 4
  %174 = xor i32 %173, -1
  %175 = and i32 %172, %174
  %176 = load i32, i32* @SPI_CS_TA, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @SPI_CS_INTR, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @SPI_CS_INTD, align 4
  %181 = or i32 %179, %180
  %182 = call i32 @bcm_spi_modifyreg(%struct.bcm_spi_softc* %163, i32 %164, i32 %171, i32 %181)
  %183 = load i32, i32* %5, align 4
  %184 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %8, align 8
  %185 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %184, i32 0, i32 3
  %186 = load i32, i32* @hz, align 4
  %187 = mul nsw i32 %186, 2
  %188 = call i32 @mtx_sleep(i32 %183, i32* %185, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %187)
  store i32 %188, i32* %12, align 4
  %189 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %8, align 8
  %190 = load i32, i32* @SPI_CS, align 4
  %191 = load i32, i32* @SPI_CS_TA, align 4
  %192 = load i32, i32* @SPI_CS_INTR, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @SPI_CS_INTD, align 4
  %195 = or i32 %193, %194
  %196 = call i32 @bcm_spi_modifyreg(%struct.bcm_spi_softc* %189, i32 %190, i32 %195, i32 0)
  %197 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %8, align 8
  %198 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %197, i32 0, i32 0
  store i32 0, i32* %198, align 8
  %199 = load i32, i32* %5, align 4
  %200 = call i32 @wakeup_one(i32 %199)
  %201 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %8, align 8
  %202 = call i32 @BCM_SPI_UNLOCK(%struct.bcm_spi_softc* %201)
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* @EWOULDBLOCK, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %158
  %207 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %8, align 8
  %208 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = call i32 (i32, i8*, ...) @device_printf(i32 %209, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %211 = load i32, i32* @EIO, align 4
  store i32 %211, i32* %12, align 4
  br label %212

212:                                              ; preds = %206, %158
  %213 = load i32, i32* %12, align 4
  store i32 %213, i32* %4, align 4
  br label %214

214:                                              ; preds = %212, %64, %52, %40
  %215 = load i32, i32* %4, align 4
  ret i32 %215
}

declare dso_local %struct.bcm_spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @spibus_get_cs(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @spibus_get_clock(i32, i32*) #1

declare dso_local i32 @spibus_get_mode(i32, i32*) #1

declare dso_local i32 @BCM_SPI_LOCK(%struct.bcm_spi_softc*) #1

declare dso_local i32 @mtx_sleep(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @bcm_spi_modifyreg(%struct.bcm_spi_softc*, i32, i32, i32) #1

declare dso_local i32 @BCM_SPI_WRITE(%struct.bcm_spi_softc*, i32, i32) #1

declare dso_local i32 @wakeup_one(i32) #1

declare dso_local i32 @BCM_SPI_UNLOCK(%struct.bcm_spi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
