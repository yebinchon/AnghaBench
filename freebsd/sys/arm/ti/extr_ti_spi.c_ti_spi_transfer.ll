; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_spi.c_ti_spi_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_spi.c_ti_spi_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_command = type { i64, i64, i64, i64 }
%struct.ti_spi_softc = type { i32, i32, i32, i64, i32, i64, i64, %struct.spi_command*, i32 }

@.str = private unnamed_addr constant [36 x i8] c"TX/RX command sizes should be equal\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"TX/RX data sizes should be equal\00", align 1
@SPIBUS_CS_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Invalid chip select %d requested by %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Invalid mode %d requested by %s\0A\00", align 1
@TI_SPI_BUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"ti_spi\00", align 1
@TI_SPI_FIFOSZ = common dso_local global i32 0, align 4
@MCSPI_XFERLEVEL = common dso_local global i32 0, align 4
@MCSPI_CONF_FFER = common dso_local global i32 0, align 4
@MCSPI_CONF_FFEW = common dso_local global i32 0, align 4
@MCSPI_CONF_SBPOL = common dso_local global i32 0, align 4
@MCSPI_CONF_SBE = common dso_local global i32 0, align 4
@MCSPI_CONF_TURBO = common dso_local global i32 0, align 4
@MCSPI_CONF_IS = common dso_local global i32 0, align 4
@MCSPI_CONF_DPE1 = common dso_local global i32 0, align 4
@MCSPI_CONF_DPE0 = common dso_local global i32 0, align 4
@MCSPI_CONF_DMAR = common dso_local global i32 0, align 4
@MCSPI_CONF_DMAW = common dso_local global i32 0, align 4
@MCSPI_CONF_EPOL = common dso_local global i32 0, align 4
@MCSPI_CONF_WL8BITS = common dso_local global i32 0, align 4
@MCSPI_CTRL_ENABLE = common dso_local global i32 0, align 4
@MCSPI_CONF_FORCE = common dso_local global i32 0, align 4
@MCSPI_IRQENABLE = common dso_local global i32 0, align 4
@MCSPI_IRQSTATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.spi_command*)* @ti_spi_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_spi_transfer(i32 %0, i32 %1, %struct.spi_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_command*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ti_spi_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.spi_command* %2, %struct.spi_command** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.ti_spi_softc* @device_get_softc(i32 %14)
  store %struct.ti_spi_softc* %15, %struct.ti_spi_softc** %9, align 8
  %16 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %17 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %20 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %26 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %29 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @spibus_get_cs(i32 %34, i32* %11)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @spibus_get_clock(i32 %36, i32* %10)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @spibus_get_mode(i32 %38, i32* %12)
  %40 = load i32, i32* @SPIBUS_CS_HIGH, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %46 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %3
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @device_get_nameunit(i32 %52)
  %54 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %4, align 4
  br label %292

56:                                               ; preds = %3
  %57 = load i32, i32* %12, align 4
  %58 = icmp sgt i32 %57, 3
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @device_get_nameunit(i32 %62)
  %64 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %4, align 4
  br label %292

66:                                               ; preds = %56
  %67 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %68 = call i32 @TI_SPI_LOCK(%struct.ti_spi_softc* %67)
  br label %69

69:                                               ; preds = %76, %66
  %70 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %71 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @TI_SPI_BUSY, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %79 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %78, i32 0, i32 8
  %80 = call i32 @mtx_sleep(i32 %77, i32* %79, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0)
  br label %69

81:                                               ; preds = %69
  %82 = load i32, i32* @TI_SPI_BUSY, align 4
  %83 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %84 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %87 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %89 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %90 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %89, i32 0, i32 7
  store %struct.spi_command* %88, %struct.spi_command** %90, align 8
  %91 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %92 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %91, i32 0, i32 6
  store i64 0, i64* %92, align 8
  %93 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %94 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %93, i32 0, i32 5
  store i64 0, i64* %94, align 8
  %95 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %96 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %99 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %97, %100
  %102 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %103 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %102, i32 0, i32 3
  store i64 %101, i64* %103, align 8
  %104 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %105 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @TI_SPI_FIFOSZ, align 4
  %108 = call i32 @ti_spi_gcd(i64 %106, i32 %107)
  %109 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %110 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  %111 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %112 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %113, 2
  br i1 %114, label %120, label %115

115:                                              ; preds = %81
  %116 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %117 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %118, 65535
  br i1 %119, label %120, label %123

120:                                              ; preds = %115, %81
  %121 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %122 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %121, i32 0, i32 4
  store i32 1, i32* %122, align 8
  br label %123

123:                                              ; preds = %120, %115
  %124 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %125 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %124, i32 0, i32 4
  store i32 1, i32* %125, align 8
  %126 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %127 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %128 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @ti_spi_set_clock(%struct.ti_spi_softc* %126, i32 %129, i32 %130)
  %132 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %133 = load i32, i32* @MCSPI_XFERLEVEL, align 4
  %134 = call i32 @TI_SPI_WRITE(%struct.ti_spi_softc* %132, i32 %133, i32 0)
  %135 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %136 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %137 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @MCSPI_CONF_CH(i32 %138)
  %140 = call i32 @TI_SPI_READ(%struct.ti_spi_softc* %135, i32 %139)
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* @MCSPI_CONF_FFER, align 4
  %142 = load i32, i32* @MCSPI_CONF_FFEW, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @MCSPI_CONF_SBPOL, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @MCSPI_CONF_SBE, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @MCSPI_CONF_TURBO, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @MCSPI_CONF_IS, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @MCSPI_CONF_DPE1, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @MCSPI_CONF_DPE0, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @MCSPI_CONF_DMAR, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @MCSPI_CONF_DMAW, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @MCSPI_CONF_EPOL, align 4
  %161 = or i32 %159, %160
  %162 = xor i32 %161, -1
  %163 = load i32, i32* %13, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* @MCSPI_CONF_DPE0, align 4
  %166 = load i32, i32* @MCSPI_CONF_EPOL, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @MCSPI_CONF_WL8BITS, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* %13, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %13, align 4
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %13, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %13, align 4
  %175 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %176 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %177 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @MCSPI_CONF_CH(i32 %178)
  %180 = load i32, i32* %13, align 4
  %181 = call i32 @TI_SPI_WRITE(%struct.ti_spi_softc* %175, i32 %179, i32 %180)
  %182 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %183 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %184 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @MCSPI_CTRL_CH(i32 %185)
  %187 = call i32 @TI_SPI_READ(%struct.ti_spi_softc* %182, i32 %186)
  store i32 %187, i32* %13, align 4
  %188 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %189 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %190 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @MCSPI_CTRL_CH(i32 %191)
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* @MCSPI_CTRL_ENABLE, align 4
  %195 = or i32 %193, %194
  %196 = call i32 @TI_SPI_WRITE(%struct.ti_spi_softc* %188, i32 %192, i32 %195)
  %197 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %198 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %199 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @MCSPI_CONF_CH(i32 %200)
  %202 = call i32 @TI_SPI_READ(%struct.ti_spi_softc* %197, i32 %201)
  store i32 %202, i32* %13, align 4
  %203 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %204 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %205 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @MCSPI_CONF_CH(i32 %206)
  %208 = load i32, i32* @MCSPI_CONF_FORCE, align 4
  %209 = load i32, i32* %13, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %13, align 4
  %211 = call i32 @TI_SPI_WRITE(%struct.ti_spi_softc* %203, i32 %207, i32 %210)
  store i32 0, i32* %8, align 4
  %212 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %213 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = icmp eq i32 %214, 1
  br i1 %215, label %216, label %219

216:                                              ; preds = %123
  %217 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %218 = call i32 @ti_spi_pio_transfer(%struct.ti_spi_softc* %217)
  store i32 %218, i32* %8, align 4
  br label %219

219:                                              ; preds = %216, %123
  %220 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %221 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %222 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @MCSPI_CONF_CH(i32 %223)
  %225 = call i32 @TI_SPI_READ(%struct.ti_spi_softc* %220, i32 %224)
  store i32 %225, i32* %13, align 4
  %226 = load i32, i32* @MCSPI_CONF_FORCE, align 4
  %227 = xor i32 %226, -1
  %228 = load i32, i32* %13, align 4
  %229 = and i32 %228, %227
  store i32 %229, i32* %13, align 4
  %230 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %231 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %232 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @MCSPI_CONF_CH(i32 %233)
  %235 = load i32, i32* %13, align 4
  %236 = call i32 @TI_SPI_WRITE(%struct.ti_spi_softc* %230, i32 %234, i32 %235)
  %237 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %238 = load i32, i32* @MCSPI_IRQENABLE, align 4
  %239 = call i32 @TI_SPI_READ(%struct.ti_spi_softc* %237, i32 %238)
  store i32 %239, i32* %13, align 4
  %240 = load i32, i32* %13, align 4
  %241 = and i32 %240, -16
  store i32 %241, i32* %13, align 4
  %242 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %243 = load i32, i32* @MCSPI_IRQENABLE, align 4
  %244 = load i32, i32* %13, align 4
  %245 = call i32 @TI_SPI_WRITE(%struct.ti_spi_softc* %242, i32 %243, i32 %244)
  %246 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %247 = load i32, i32* @MCSPI_IRQSTATUS, align 4
  %248 = call i32 @TI_SPI_WRITE(%struct.ti_spi_softc* %246, i32 %247, i32 15)
  %249 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %250 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %251 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @MCSPI_CTRL_CH(i32 %252)
  %254 = call i32 @TI_SPI_READ(%struct.ti_spi_softc* %249, i32 %253)
  store i32 %254, i32* %13, align 4
  %255 = load i32, i32* @MCSPI_CTRL_ENABLE, align 4
  %256 = xor i32 %255, -1
  %257 = load i32, i32* %13, align 4
  %258 = and i32 %257, %256
  store i32 %258, i32* %13, align 4
  %259 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %260 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %261 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @MCSPI_CTRL_CH(i32 %262)
  %264 = load i32, i32* %13, align 4
  %265 = call i32 @TI_SPI_WRITE(%struct.ti_spi_softc* %259, i32 %263, i32 %264)
  %266 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %267 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %268 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @MCSPI_CONF_CH(i32 %269)
  %271 = call i32 @TI_SPI_READ(%struct.ti_spi_softc* %266, i32 %270)
  store i32 %271, i32* %13, align 4
  %272 = load i32, i32* @MCSPI_CONF_FFER, align 4
  %273 = load i32, i32* @MCSPI_CONF_FFEW, align 4
  %274 = or i32 %272, %273
  %275 = xor i32 %274, -1
  %276 = load i32, i32* %13, align 4
  %277 = and i32 %276, %275
  store i32 %277, i32* %13, align 4
  %278 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %279 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %280 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @MCSPI_CONF_CH(i32 %281)
  %283 = load i32, i32* %13, align 4
  %284 = call i32 @TI_SPI_WRITE(%struct.ti_spi_softc* %278, i32 %282, i32 %283)
  %285 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %286 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %285, i32 0, i32 1
  store i32 0, i32* %286, align 4
  %287 = load i32, i32* %5, align 4
  %288 = call i32 @wakeup_one(i32 %287)
  %289 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %290 = call i32 @TI_SPI_UNLOCK(%struct.ti_spi_softc* %289)
  %291 = load i32, i32* %8, align 4
  store i32 %291, i32* %4, align 4
  br label %292

292:                                              ; preds = %219, %59, %49
  %293 = load i32, i32* %4, align 4
  ret i32 %293
}

declare dso_local %struct.ti_spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @spibus_get_cs(i32, i32*) #1

declare dso_local i32 @spibus_get_clock(i32, i32*) #1

declare dso_local i32 @spibus_get_mode(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @TI_SPI_LOCK(%struct.ti_spi_softc*) #1

declare dso_local i32 @mtx_sleep(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @ti_spi_gcd(i64, i32) #1

declare dso_local i32 @ti_spi_set_clock(%struct.ti_spi_softc*, i32, i32) #1

declare dso_local i32 @TI_SPI_WRITE(%struct.ti_spi_softc*, i32, i32) #1

declare dso_local i32 @TI_SPI_READ(%struct.ti_spi_softc*, i32) #1

declare dso_local i32 @MCSPI_CONF_CH(i32) #1

declare dso_local i32 @MCSPI_CTRL_CH(i32) #1

declare dso_local i32 @ti_spi_pio_transfer(%struct.ti_spi_softc*) #1

declare dso_local i32 @wakeup_one(i32) #1

declare dso_local i32 @TI_SPI_UNLOCK(%struct.ti_spi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
