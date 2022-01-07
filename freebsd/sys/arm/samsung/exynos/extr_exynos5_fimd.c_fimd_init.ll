; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_fimd.c_fimd_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_fimd.c_fimd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimd_softc = type { %struct.TYPE_2__, %struct.panel_info* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.panel_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VIDCON1 = common dso_local global i32 0, align 4
@VIDCON0_ENVID = common dso_local global i32 0, align 4
@VIDCON0_ENVID_F = common dso_local global i32 0, align 4
@CLKVAL_F_OFFSET = common dso_local global i32 0, align 4
@VIDCON0 = common dso_local global i32 0, align 4
@VSYNC_PULSE_WIDTH_OFFSET = common dso_local global i32 0, align 4
@V_FRONT_PORCH_OFFSET = common dso_local global i32 0, align 4
@V_BACK_PORCH_OFFSET = common dso_local global i32 0, align 4
@VIDTCON0 = common dso_local global i32 0, align 4
@HSYNC_PULSE_WIDTH_OFFSET = common dso_local global i32 0, align 4
@H_FRONT_PORCH_OFFSET = common dso_local global i32 0, align 4
@H_BACK_PORCH_OFFSET = common dso_local global i32 0, align 4
@VIDTCON1 = common dso_local global i32 0, align 4
@HOZVAL_OFFSET = common dso_local global i32 0, align 4
@LINEVAL_OFFSET = common dso_local global i32 0, align 4
@VIDTCON2 = common dso_local global i32 0, align 4
@VIDW00ADD0B0 = common dso_local global i32 0, align 4
@VIDW00ADD1B0 = common dso_local global i32 0, align 4
@VIDW00ADD2 = common dso_local global i32 0, align 4
@OSD_RIGHTBOTX_F_OFFSET = common dso_local global i32 0, align 4
@OSD_RIGHTBOTY_F_OFFSET = common dso_local global i32 0, align 4
@VIDOSD0B = common dso_local global i32 0, align 4
@VIDOSD0C = common dso_local global i32 0, align 4
@SHADOWCON = common dso_local global i32 0, align 4
@CHANNEL0_EN = common dso_local global i32 0, align 4
@BPPMODE_F_RGB_16BIT_565 = common dso_local global i32 0, align 4
@BPPMODE_F_OFFSET = common dso_local global i32 0, align 4
@ENWIN_F_ENABLE = common dso_local global i32 0, align 4
@HALF_WORD_SWAP_EN = common dso_local global i32 0, align 4
@ENLOCAL_F = common dso_local global i32 0, align 4
@WINCON0 = common dso_local global i32 0, align 4
@DPCLKCON = common dso_local global i32 0, align 4
@DPCLKCON_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimd_softc*)* @fimd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimd_init(%struct.fimd_softc* %0) #0 {
  %2 = alloca %struct.fimd_softc*, align 8
  %3 = alloca %struct.panel_info*, align 8
  %4 = alloca i32, align 4
  store %struct.fimd_softc* %0, %struct.fimd_softc** %2, align 8
  %5 = load %struct.fimd_softc*, %struct.fimd_softc** %2, align 8
  %6 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %5, i32 0, i32 1
  %7 = load %struct.panel_info*, %struct.panel_info** %6, align 8
  store %struct.panel_info* %7, %struct.panel_info** %3, align 8
  %8 = load %struct.panel_info*, %struct.panel_info** %3, align 8
  %9 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.panel_info*, %struct.panel_info** %3, align 8
  %12 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %10, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.fimd_softc*, %struct.fimd_softc** %2, align 8
  %16 = load i32, i32* @VIDCON1, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @DWRITE4(%struct.fimd_softc* %15, i32 %16, i32 %17)
  %19 = load i32, i32* @VIDCON0_ENVID, align 4
  %20 = load i32, i32* @VIDCON0_ENVID_F, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load %struct.panel_info*, %struct.panel_info** %3, align 8
  %23 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CLKVAL_F_OFFSET, align 4
  %26 = shl i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.fimd_softc*, %struct.fimd_softc** %2, align 8
  %30 = load i32, i32* @VIDCON0, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @WRITE4(%struct.fimd_softc* %29, i32 %30, i32 %31)
  %33 = load %struct.panel_info*, %struct.panel_info** %3, align 8
  %34 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @VSYNC_PULSE_WIDTH_OFFSET, align 4
  %37 = shl i32 %35, %36
  store i32 %37, i32* %4, align 4
  %38 = load %struct.panel_info*, %struct.panel_info** %3, align 8
  %39 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @V_FRONT_PORCH_OFFSET, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load %struct.panel_info*, %struct.panel_info** %3, align 8
  %46 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @V_BACK_PORCH_OFFSET, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load %struct.fimd_softc*, %struct.fimd_softc** %2, align 8
  %53 = load i32, i32* @VIDTCON0, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @DWRITE4(%struct.fimd_softc* %52, i32 %53, i32 %54)
  %56 = load %struct.panel_info*, %struct.panel_info** %3, align 8
  %57 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @HSYNC_PULSE_WIDTH_OFFSET, align 4
  %60 = shl i32 %58, %59
  store i32 %60, i32* %4, align 4
  %61 = load %struct.panel_info*, %struct.panel_info** %3, align 8
  %62 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @H_FRONT_PORCH_OFFSET, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load %struct.panel_info*, %struct.panel_info** %3, align 8
  %69 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @H_BACK_PORCH_OFFSET, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %4, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load %struct.fimd_softc*, %struct.fimd_softc** %2, align 8
  %76 = load i32, i32* @VIDTCON1, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @DWRITE4(%struct.fimd_softc* %75, i32 %76, i32 %77)
  %79 = load %struct.panel_info*, %struct.panel_info** %3, align 8
  %80 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = load i32, i32* @HOZVAL_OFFSET, align 4
  %84 = shl i32 %82, %83
  store i32 %84, i32* %4, align 4
  %85 = load %struct.panel_info*, %struct.panel_info** %3, align 8
  %86 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %85, i32 0, i32 10
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* @LINEVAL_OFFSET, align 4
  %90 = shl i32 %88, %89
  %91 = load i32, i32* %4, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %4, align 4
  %93 = load %struct.fimd_softc*, %struct.fimd_softc** %2, align 8
  %94 = load i32, i32* @VIDTCON2, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @DWRITE4(%struct.fimd_softc* %93, i32 %94, i32 %95)
  %97 = load %struct.fimd_softc*, %struct.fimd_softc** %2, align 8
  %98 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %4, align 4
  %101 = load %struct.fimd_softc*, %struct.fimd_softc** %2, align 8
  %102 = load i32, i32* @VIDW00ADD0B0, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @WRITE4(%struct.fimd_softc* %101, i32 %102, i32 %103)
  %105 = load %struct.fimd_softc*, %struct.fimd_softc** %2, align 8
  %106 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.fimd_softc*, %struct.fimd_softc** %2, align 8
  %110 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  %114 = mul nsw i32 %108, %113
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %4, align 4
  %117 = load %struct.fimd_softc*, %struct.fimd_softc** %2, align 8
  %118 = load i32, i32* @VIDW00ADD1B0, align 4
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @WRITE4(%struct.fimd_softc* %117, i32 %118, i32 %119)
  %121 = load %struct.fimd_softc*, %struct.fimd_softc** %2, align 8
  %122 = load i32, i32* @VIDW00ADD2, align 4
  %123 = load %struct.fimd_softc*, %struct.fimd_softc** %2, align 8
  %124 = getelementptr inbounds %struct.fimd_softc, %struct.fimd_softc* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @WRITE4(%struct.fimd_softc* %121, i32 %122, i32 %126)
  %128 = load %struct.panel_info*, %struct.panel_info** %3, align 8
  %129 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %128, i32 0, i32 9
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %130, 1
  %132 = load i32, i32* @OSD_RIGHTBOTX_F_OFFSET, align 4
  %133 = shl i32 %131, %132
  store i32 %133, i32* %4, align 4
  %134 = load %struct.panel_info*, %struct.panel_info** %3, align 8
  %135 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %134, i32 0, i32 10
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %136, 1
  %138 = load i32, i32* @OSD_RIGHTBOTY_F_OFFSET, align 4
  %139 = shl i32 %137, %138
  %140 = load i32, i32* %4, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %4, align 4
  %142 = load %struct.fimd_softc*, %struct.fimd_softc** %2, align 8
  %143 = load i32, i32* @VIDOSD0B, align 4
  %144 = load i32, i32* %4, align 4
  %145 = call i32 @WRITE4(%struct.fimd_softc* %142, i32 %143, i32 %144)
  %146 = load %struct.panel_info*, %struct.panel_info** %3, align 8
  %147 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %146, i32 0, i32 9
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.panel_info*, %struct.panel_info** %3, align 8
  %150 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %149, i32 0, i32 10
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %148, %151
  store i32 %152, i32* %4, align 4
  %153 = load %struct.fimd_softc*, %struct.fimd_softc** %2, align 8
  %154 = load i32, i32* @VIDOSD0C, align 4
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @WRITE4(%struct.fimd_softc* %153, i32 %154, i32 %155)
  %157 = load %struct.fimd_softc*, %struct.fimd_softc** %2, align 8
  %158 = load i32, i32* @SHADOWCON, align 4
  %159 = call i32 @READ4(%struct.fimd_softc* %157, i32 %158)
  store i32 %159, i32* %4, align 4
  %160 = load i32, i32* @CHANNEL0_EN, align 4
  %161 = load i32, i32* %4, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %4, align 4
  %163 = load i32, i32* %4, align 4
  %164 = and i32 %163, -33
  store i32 %164, i32* %4, align 4
  %165 = load %struct.fimd_softc*, %struct.fimd_softc** %2, align 8
  %166 = load i32, i32* @SHADOWCON, align 4
  %167 = load i32, i32* %4, align 4
  %168 = call i32 @WRITE4(%struct.fimd_softc* %165, i32 %166, i32 %167)
  %169 = load i32, i32* @BPPMODE_F_RGB_16BIT_565, align 4
  %170 = load i32, i32* @BPPMODE_F_OFFSET, align 4
  %171 = shl i32 %169, %170
  store i32 %171, i32* %4, align 4
  %172 = load i32, i32* @ENWIN_F_ENABLE, align 4
  %173 = load i32, i32* @HALF_WORD_SWAP_EN, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* %4, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %4, align 4
  %177 = load i32, i32* @ENLOCAL_F, align 4
  %178 = xor i32 %177, -1
  %179 = load i32, i32* %4, align 4
  %180 = and i32 %179, %178
  store i32 %180, i32* %4, align 4
  %181 = load %struct.fimd_softc*, %struct.fimd_softc** %2, align 8
  %182 = load i32, i32* @WINCON0, align 4
  %183 = load i32, i32* %4, align 4
  %184 = call i32 @WRITE4(%struct.fimd_softc* %181, i32 %182, i32 %183)
  %185 = load %struct.fimd_softc*, %struct.fimd_softc** %2, align 8
  %186 = load i32, i32* @DPCLKCON, align 4
  %187 = load i32, i32* @DPCLKCON_EN, align 4
  %188 = call i32 @WRITE4(%struct.fimd_softc* %185, i32 %186, i32 %187)
  ret i32 0
}

declare dso_local i32 @DWRITE4(%struct.fimd_softc*, i32, i32) #1

declare dso_local i32 @WRITE4(%struct.fimd_softc*, i32, i32) #1

declare dso_local i32 @READ4(%struct.fimd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
