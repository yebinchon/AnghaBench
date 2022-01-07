; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_i2c.c_rk_i2c_intr_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_i2c.c_rk_i2c_intr_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_i2c_softc = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@RK_I2C_IPD = common dso_local global i32 0, align 4
@RK_I2C_IPD_ALL = common dso_local global i32 0, align 4
@RK_I2C_IPD_NAKRCVIPD = common dso_local global i32 0, align 4
@RK_I2C_CON = common dso_local global i32 0, align 4
@RK_I2C_CON_START = common dso_local global i32 0, align 4
@RK_I2C_CON_MODE_RRX = common dso_local global i32 0, align 4
@RK_I2C_CON_MODE_RX = common dso_local global i32 0, align 4
@RK_I2C_IEN = common dso_local global i32 0, align 4
@RK_I2C_IEN_MBRFIEN = common dso_local global i32 0, align 4
@RK_I2C_IEN_NAKRCVIEN = common dso_local global i32 0, align 4
@RK_I2C_CON_LASTACK = common dso_local global i32 0, align 4
@RK_I2C_MRXCNT = common dso_local global i32 0, align 4
@RK_I2C_IEN_MBTFIEN = common dso_local global i32 0, align 4
@RK_I2C_MTXCNT = common dso_local global i32 0, align 4
@IIC_M_NOSTOP = common dso_local global i32 0, align 4
@RK_I2C_CON_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_i2c_softc*)* @rk_i2c_intr_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_i2c_intr_locked(%struct.rk_i2c_softc* %0) #0 {
  %2 = alloca %struct.rk_i2c_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.rk_i2c_softc* %0, %struct.rk_i2c_softc** %2, align 8
  %4 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %5 = load i32, i32* @RK_I2C_IPD, align 4
  %6 = call i8* @RK_I2C_READ(%struct.rk_i2c_softc* %4, i32 %5)
  %7 = ptrtoint i8* %6 to i32
  %8 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %9 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %11 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @RK_I2C_IPD_ALL, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %191

17:                                               ; preds = %1
  %18 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %19 = load i32, i32* @RK_I2C_IPD, align 4
  %20 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %21 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %18, i32 %19, i32 %22)
  %24 = load i32, i32* @RK_I2C_IPD_ALL, align 4
  %25 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %26 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %30 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @RK_I2C_IPD_NAKRCVIPD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %17
  %36 = load i32, i32* @RK_I2C_IPD_NAKRCVIPD, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %39 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %43 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %45 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %44, i32 0, i32 2
  store i32 1, i32* %45, align 8
  %46 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %47 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %46, i32 0, i32 3
  store i32 132, i32* %47, align 4
  br label %188

48:                                               ; preds = %17
  %49 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %50 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %187 [
    i32 130, label %52
    i32 131, label %130
    i32 128, label %146
    i32 129, label %169
    i32 132, label %186
  ]

52:                                               ; preds = %48
  %53 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %54 = load i32, i32* @RK_I2C_CON, align 4
  %55 = call i8* @RK_I2C_READ(%struct.rk_i2c_softc* %53, i32 %54)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* @RK_I2C_CON_START, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %3, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %3, align 4
  %61 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %62 = load i32, i32* @RK_I2C_CON, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %61, i32 %62, i32 %63)
  %65 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %66 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @RK_I2C_CON_MODE_RRX, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %52
  %71 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %72 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @RK_I2C_CON_MODE_RX, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %104

76:                                               ; preds = %70, %52
  %77 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %78 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %77, i32 0, i32 3
  store i32 131, i32* %78, align 4
  %79 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %80 = load i32, i32* @RK_I2C_IEN, align 4
  %81 = load i32, i32* @RK_I2C_IEN_MBRFIEN, align 4
  %82 = load i32, i32* @RK_I2C_IEN_NAKRCVIEN, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %79, i32 %80, i32 %83)
  %85 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %86 = load i32, i32* @RK_I2C_CON, align 4
  %87 = call i8* @RK_I2C_READ(%struct.rk_i2c_softc* %85, i32 %86)
  %88 = ptrtoint i8* %87 to i32
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* @RK_I2C_CON_LASTACK, align 4
  %90 = load i32, i32* %3, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %3, align 4
  %92 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %93 = load i32, i32* @RK_I2C_CON, align 4
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %92, i32 %93, i32 %94)
  %96 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %97 = load i32, i32* @RK_I2C_MRXCNT, align 4
  %98 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %99 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %98, i32 0, i32 5
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %96, i32 %97, i32 %102)
  br label %129

104:                                              ; preds = %70
  %105 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %106 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %105, i32 0, i32 3
  store i32 128, i32* %106, align 4
  %107 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %108 = load i32, i32* @RK_I2C_IEN, align 4
  %109 = load i32, i32* @RK_I2C_IEN_MBTFIEN, align 4
  %110 = load i32, i32* @RK_I2C_IEN_NAKRCVIEN, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %107, i32 %108, i32 %111)
  %113 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %114 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %113, i32 0, i32 5
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %120 = call i32 @rk_i2c_fill_tx(%struct.rk_i2c_softc* %119)
  %121 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %122 = load i32, i32* @RK_I2C_MTXCNT, align 4
  %123 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %124 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %123, i32 0, i32 5
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %121, i32 %122, i32 %127)
  br label %129

129:                                              ; preds = %104, %76
  br label %187

130:                                              ; preds = %48
  %131 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %132 = call i32 @rk_i2c_drain_rx(%struct.rk_i2c_softc* %131)
  %133 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %134 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %137 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %136, i32 0, i32 5
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %135, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %130
  %143 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %144 = call i32 @rk_i2c_send_stop(%struct.rk_i2c_softc* %143)
  br label %145

145:                                              ; preds = %142, %130
  br label %187

146:                                              ; preds = %48
  %147 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %148 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %151 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %150, i32 0, i32 5
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %149, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %146
  %157 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %158 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %157, i32 0, i32 5
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @IIC_M_NOSTOP, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %156
  %166 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %167 = call i32 @rk_i2c_send_stop(%struct.rk_i2c_softc* %166)
  br label %187

168:                                              ; preds = %156, %146
  br label %169

169:                                              ; preds = %48, %168
  %170 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %171 = load i32, i32* @RK_I2C_CON, align 4
  %172 = call i8* @RK_I2C_READ(%struct.rk_i2c_softc* %170, i32 %171)
  %173 = ptrtoint i8* %172 to i32
  store i32 %173, i32* %3, align 4
  %174 = load i32, i32* @RK_I2C_CON_STOP, align 4
  %175 = xor i32 %174, -1
  %176 = load i32, i32* %3, align 4
  %177 = and i32 %176, %175
  store i32 %177, i32* %3, align 4
  %178 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %179 = load i32, i32* @RK_I2C_CON, align 4
  %180 = load i32, i32* %3, align 4
  %181 = call i32 @RK_I2C_WRITE(%struct.rk_i2c_softc* %178, i32 %179, i32 %180)
  %182 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %183 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %182, i32 0, i32 2
  store i32 1, i32* %183, align 8
  %184 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %185 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %184, i32 0, i32 3
  store i32 132, i32* %185, align 4
  br label %187

186:                                              ; preds = %48
  br label %187

187:                                              ; preds = %48, %186, %169, %165, %145, %129
  br label %188

188:                                              ; preds = %187, %35
  %189 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %190 = call i32 @wakeup(%struct.rk_i2c_softc* %189)
  br label %191

191:                                              ; preds = %188, %16
  ret void
}

declare dso_local i8* @RK_I2C_READ(%struct.rk_i2c_softc*, i32) #1

declare dso_local i32 @RK_I2C_WRITE(%struct.rk_i2c_softc*, i32, i32) #1

declare dso_local i32 @rk_i2c_fill_tx(%struct.rk_i2c_softc*) #1

declare dso_local i32 @rk_i2c_drain_rx(%struct.rk_i2c_softc*) #1

declare dso_local i32 @rk_i2c_send_stop(%struct.rk_i2c_softc*) #1

declare dso_local i32 @wakeup(%struct.rk_i2c_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
