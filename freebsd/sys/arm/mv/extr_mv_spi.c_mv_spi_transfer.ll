; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_spi.c_mv_spi_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_spi.c_mv_spi_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_command = type { i64, i64, i64, i64 }
%struct.mv_spi_softc = type { i32, i32, i64, i64, %struct.spi_command*, i32 }

@.str = private unnamed_addr constant [36 x i8] c"TX/RX command sizes should be equal\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"TX/RX data sizes should be equal\00", align 1
@SPIBUS_CS_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Invalid mode %u requested by %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Invalid clock %uHz requested by %s\0A\00", align 1
@MV_SPI_BUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"mv_spi\00", align 1
@MV_SPI_CONF = common dso_local global i32 0, align 4
@MV_SPI_CONF_MODE_MASK = common dso_local global i32 0, align 4
@MV_SPI_CONF_CLOCK_MASK = common dso_local global i32 0, align 4
@MV_SPI_CONF_MODE_SHIFT = common dso_local global i32 0, align 4
@MV_SPI_CONF_CLOCK_SPR_MASK = common dso_local global i32 0, align 4
@MV_SPI_CONF_CLOCK_SPPR_MASK = common dso_local global i32 0, align 4
@MV_SPI_CONF_CLOCK_SPPR_SHIFT = common dso_local global i32 0, align 4
@MV_SPI_CONF_CLOCK_SPPRHI_MASK = common dso_local global i32 0, align 4
@MV_SPI_CONF_CLOCK_SPPRHI_SHIFT = common dso_local global i32 0, align 4
@MV_SPI_CONTROL = common dso_local global i32 0, align 4
@MV_SPI_CTRL_CS_MASK = common dso_local global i32 0, align 4
@MV_SPI_CTRL_CS_SHIFT = common dso_local global i32 0, align 4
@MV_SPI_CTRL_CS_ACTIVE = common dso_local global i32 0, align 4
@MV_SPI_INTR_STAT = common dso_local global i32 0, align 4
@MV_SPI_CTRL_SMEMREADY = common dso_local global i32 0, align 4
@MV_SPI_INTR_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.spi_command*)* @mv_spi_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_spi_transfer(i32 %0, i32 %1, %struct.spi_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_command*, align 8
  %8 = alloca %struct.mv_spi_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.spi_command* %2, %struct.spi_command** %7, align 8
  %17 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %18 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %21 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %27 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %30 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @KASSERT(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @spibus_get_cs(i32 %35, i32* %10)
  %37 = load i32, i32* @SPIBUS_CS_HIGH, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @spibus_get_mode(i32 %41, i32* %11)
  %43 = load i32, i32* %11, align 4
  %44 = icmp sgt i32 %43, 3
  br i1 %44, label %45, label %52

45:                                               ; preds = %3
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @device_get_nameunit(i32 %48)
  %50 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %4, align 4
  br label %229

52:                                               ; preds = %3
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @spibus_get_clock(i32 %53, i32* %9)
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @mv_spi_psc_calc(i32 %58, i32* %13, i32* %14)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57, %52
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @device_get_nameunit(i32 %64)
  %66 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %4, align 4
  br label %229

68:                                               ; preds = %57
  %69 = load i32, i32* %5, align 4
  %70 = call %struct.mv_spi_softc* @device_get_softc(i32 %69)
  store %struct.mv_spi_softc* %70, %struct.mv_spi_softc** %8, align 8
  %71 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %72 = call i32 @MV_SPI_LOCK(%struct.mv_spi_softc* %71)
  br label %73

73:                                               ; preds = %80, %68
  %74 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %75 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @MV_SPI_BUSY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %83 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %82, i32 0, i32 5
  %84 = call i32 @mtx_sleep(i32 %81, i32* %83, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0)
  br label %73

85:                                               ; preds = %73
  %86 = load i32, i32* @MV_SPI_BUSY, align 4
  %87 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %88 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %90 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %91 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %90, i32 0, i32 4
  store %struct.spi_command* %89, %struct.spi_command** %91, align 8
  %92 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %93 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %95 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  %96 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %97 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %100 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  %103 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %104 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  %105 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %106 = load i32, i32* @MV_SPI_CONF, align 4
  %107 = call i32 @MV_SPI_READ(%struct.mv_spi_softc* %105, i32 %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* @MV_SPI_CONF_MODE_MASK, align 4
  %109 = load i32, i32* @MV_SPI_CONF_CLOCK_MASK, align 4
  %110 = or i32 %108, %109
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %12, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @MV_SPI_CONF_MODE_SHIFT, align 4
  %116 = shl i32 %114, %115
  %117 = load i32, i32* %12, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @MV_SPI_CONF_CLOCK_SPR_MASK, align 4
  %121 = and i32 %119, %120
  %122 = load i32, i32* %12, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* @MV_SPI_CONF_CLOCK_SPPR_MASK, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* @MV_SPI_CONF_CLOCK_SPPR_SHIFT, align 4
  %128 = shl i32 %126, %127
  %129 = load i32, i32* %12, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* @MV_SPI_CONF_CLOCK_SPPRHI_MASK, align 4
  %133 = and i32 %131, %132
  %134 = load i32, i32* @MV_SPI_CONF_CLOCK_SPPRHI_SHIFT, align 4
  %135 = shl i32 %133, %134
  %136 = load i32, i32* %12, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %12, align 4
  %138 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %139 = load i32, i32* @MV_SPI_CONTROL, align 4
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @MV_SPI_WRITE(%struct.mv_spi_softc* %138, i32 %139, i32 %140)
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @MV_SPI_CTRL_CS_MASK, align 4
  %144 = and i32 %142, %143
  %145 = load i32, i32* @MV_SPI_CTRL_CS_SHIFT, align 4
  %146 = shl i32 %144, %145
  store i32 %146, i32* %12, align 4
  %147 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %148 = load i32, i32* @MV_SPI_CONTROL, align 4
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @MV_SPI_WRITE(%struct.mv_spi_softc* %147, i32 %148, i32 %149)
  %151 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %152 = load i32, i32* @MV_SPI_CONTROL, align 4
  %153 = call i32 @MV_SPI_READ(%struct.mv_spi_softc* %151, i32 %152)
  store i32 %153, i32* %12, align 4
  %154 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %155 = load i32, i32* @MV_SPI_CONTROL, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @MV_SPI_CTRL_CS_ACTIVE, align 4
  %158 = or i32 %156, %157
  %159 = call i32 @MV_SPI_WRITE(%struct.mv_spi_softc* %154, i32 %155, i32 %158)
  br label %160

160:                                              ; preds = %196, %85
  %161 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %162 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %165 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = sub nsw i64 %163, %167
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %15, align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %199

171:                                              ; preds = %160
  %172 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %173 = load i32, i32* @MV_SPI_INTR_STAT, align 4
  %174 = call i32 @MV_SPI_WRITE(%struct.mv_spi_softc* %172, i32 %173, i32 0)
  %175 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %176 = call i32 @mv_spi_tx_byte(%struct.mv_spi_softc* %175)
  store i32 1000, i32* %16, align 4
  br label %177

177:                                              ; preds = %190, %171
  %178 = load i32, i32* %16, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %16, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %177
  %182 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %183 = load i32, i32* @MV_SPI_CONTROL, align 4
  %184 = call i32 @MV_SPI_READ(%struct.mv_spi_softc* %182, i32 %183)
  store i32 %184, i32* %12, align 4
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* @MV_SPI_CTRL_SMEMREADY, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  br label %192

190:                                              ; preds = %181
  %191 = call i32 @DELAY(i32 1)
  br label %177

192:                                              ; preds = %189, %177
  %193 = load i32, i32* %16, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %199

196:                                              ; preds = %192
  %197 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %198 = call i32 @mv_spi_rx_byte(%struct.mv_spi_softc* %197)
  br label %160

199:                                              ; preds = %195, %160
  %200 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %201 = load i32, i32* @MV_SPI_CONTROL, align 4
  %202 = call i32 @MV_SPI_READ(%struct.mv_spi_softc* %200, i32 %201)
  store i32 %202, i32* %12, align 4
  %203 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %204 = load i32, i32* @MV_SPI_CONTROL, align 4
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* @MV_SPI_CTRL_CS_ACTIVE, align 4
  %207 = xor i32 %206, -1
  %208 = and i32 %205, %207
  %209 = call i32 @MV_SPI_WRITE(%struct.mv_spi_softc* %203, i32 %204, i32 %208)
  %210 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %211 = load i32, i32* @MV_SPI_INTR_MASK, align 4
  %212 = call i32 @MV_SPI_WRITE(%struct.mv_spi_softc* %210, i32 %211, i32 0)
  %213 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %214 = load i32, i32* @MV_SPI_INTR_STAT, align 4
  %215 = call i32 @MV_SPI_WRITE(%struct.mv_spi_softc* %213, i32 %214, i32 0)
  %216 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %217 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %216, i32 0, i32 0
  store i32 0, i32* %217, align 8
  %218 = load i32, i32* %5, align 4
  %219 = call i32 @wakeup_one(i32 %218)
  %220 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %8, align 8
  %221 = call i32 @MV_SPI_UNLOCK(%struct.mv_spi_softc* %220)
  %222 = load i32, i32* %16, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %199
  %225 = load i32, i32* @EIO, align 4
  br label %227

226:                                              ; preds = %199
  br label %227

227:                                              ; preds = %226, %224
  %228 = phi i32 [ %225, %224 ], [ 0, %226 ]
  store i32 %228, i32* %4, align 4
  br label %229

229:                                              ; preds = %227, %61, %45
  %230 = load i32, i32* %4, align 4
  ret i32 %230
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @spibus_get_cs(i32, i32*) #1

declare dso_local i32 @spibus_get_mode(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @spibus_get_clock(i32, i32*) #1

declare dso_local i64 @mv_spi_psc_calc(i32, i32*, i32*) #1

declare dso_local %struct.mv_spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @MV_SPI_LOCK(%struct.mv_spi_softc*) #1

declare dso_local i32 @mtx_sleep(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @MV_SPI_READ(%struct.mv_spi_softc*, i32) #1

declare dso_local i32 @MV_SPI_WRITE(%struct.mv_spi_softc*, i32, i32) #1

declare dso_local i32 @mv_spi_tx_byte(%struct.mv_spi_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mv_spi_rx_byte(%struct.mv_spi_softc*) #1

declare dso_local i32 @wakeup_one(i32) #1

declare dso_local i32 @MV_SPI_UNLOCK(%struct.mv_spi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
