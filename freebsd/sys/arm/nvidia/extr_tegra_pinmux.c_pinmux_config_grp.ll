; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pinmux.c_pinmux_config_grp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pinmux.c_pinmux_config_grp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinmux_softc = type { i32 }
%struct.tegra_grp = type { i32, i32, i32, i32, i32 }
%struct.pincfg = type { i32* }

@PROP_ID_HIGH_SPEED_MODE = common dso_local global i64 0, align 8
@TEGRA_GRP_HSM_SHIFT = common dso_local global i32 0, align 4
@PROP_ID_SCHMITT = common dso_local global i64 0, align 8
@TEGRA_GRP_SCHMT_SHIFT = common dso_local global i32 0, align 4
@PROP_ID_DRIVE_TYPE = common dso_local global i64 0, align 8
@TEGRA_GRP_DRV_TYPE_MASK = common dso_local global i32 0, align 4
@TEGRA_GRP_DRV_TYPE_SHIFT = common dso_local global i32 0, align 4
@PROP_ID_SLEW_RATE_RISING = common dso_local global i64 0, align 8
@TEGRA_GRP_DRV_DRVDN_SLWR_MASK = common dso_local global i32 0, align 4
@TEGRA_GRP_DRV_DRVDN_SLWR_SHIFT = common dso_local global i32 0, align 4
@PROP_ID_SLEW_RATE_FALLING = common dso_local global i64 0, align 8
@TEGRA_GRP_DRV_DRVUP_SLWF_MASK = common dso_local global i32 0, align 4
@TEGRA_GRP_DRV_DRVUP_SLWF_SHIFT = common dso_local global i32 0, align 4
@PROP_ID_DRIVE_DOWN_STRENGTH = common dso_local global i64 0, align 8
@PROP_ID_DRIVE_UP_STRENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinmux_softc*, i8*, %struct.tegra_grp*, %struct.pincfg*)* @pinmux_config_grp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pinmux_config_grp(%struct.pinmux_softc* %0, i8* %1, %struct.tegra_grp* %2, %struct.pincfg* %3) #0 {
  %5 = alloca %struct.pinmux_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tegra_grp*, align 8
  %8 = alloca %struct.pincfg*, align 8
  %9 = alloca i32, align 4
  store %struct.pinmux_softc* %0, %struct.pinmux_softc** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.tegra_grp* %2, %struct.tegra_grp** %7, align 8
  store %struct.pincfg* %3, %struct.pincfg** %8, align 8
  %10 = load %struct.pinmux_softc*, %struct.pinmux_softc** %5, align 8
  %11 = getelementptr inbounds %struct.pinmux_softc, %struct.pinmux_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.tegra_grp*, %struct.tegra_grp** %7, align 8
  %14 = getelementptr inbounds %struct.tegra_grp, %struct.tegra_grp* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bus_read_4(i32 %12, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %18 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @PROP_ID_HIGH_SPEED_MODE, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %41

24:                                               ; preds = %4
  %25 = load i32, i32* @TEGRA_GRP_HSM_SHIFT, align 4
  %26 = shl i32 1, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %31 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @PROP_ID_HIGH_SPEED_MODE, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 1
  %37 = load i32, i32* @TEGRA_GRP_HSM_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %24, %4
  %42 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %43 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @PROP_ID_SCHMITT, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %66

49:                                               ; preds = %41
  %50 = load i32, i32* @TEGRA_GRP_SCHMT_SHIFT, align 4
  %51 = shl i32 1, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %56 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @PROP_ID_SCHMITT, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 1
  %62 = load i32, i32* @TEGRA_GRP_SCHMT_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %49, %41
  %67 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %68 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @PROP_ID_DRIVE_TYPE, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %93

74:                                               ; preds = %66
  %75 = load i32, i32* @TEGRA_GRP_DRV_TYPE_MASK, align 4
  %76 = load i32, i32* @TEGRA_GRP_DRV_TYPE_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %9, align 4
  %81 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %82 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @PROP_ID_DRIVE_TYPE, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @TEGRA_GRP_DRV_TYPE_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @TEGRA_GRP_DRV_TYPE_SHIFT, align 4
  %90 = shl i32 %88, %89
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %74, %66
  %94 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %95 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* @PROP_ID_SLEW_RATE_RISING, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, -1
  br i1 %100, label %101, label %120

101:                                              ; preds = %93
  %102 = load i32, i32* @TEGRA_GRP_DRV_DRVDN_SLWR_MASK, align 4
  %103 = load i32, i32* @TEGRA_GRP_DRV_DRVDN_SLWR_SHIFT, align 4
  %104 = shl i32 %102, %103
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %9, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %9, align 4
  %108 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %109 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* @PROP_ID_SLEW_RATE_RISING, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @TEGRA_GRP_DRV_DRVDN_SLWR_MASK, align 4
  %115 = and i32 %113, %114
  %116 = load i32, i32* @TEGRA_GRP_DRV_DRVDN_SLWR_SHIFT, align 4
  %117 = shl i32 %115, %116
  %118 = load i32, i32* %9, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %101, %93
  %121 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %122 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @PROP_ID_SLEW_RATE_FALLING, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, -1
  br i1 %127, label %128, label %147

128:                                              ; preds = %120
  %129 = load i32, i32* @TEGRA_GRP_DRV_DRVUP_SLWF_MASK, align 4
  %130 = load i32, i32* @TEGRA_GRP_DRV_DRVUP_SLWF_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %9, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %9, align 4
  %135 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %136 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* @PROP_ID_SLEW_RATE_FALLING, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @TEGRA_GRP_DRV_DRVUP_SLWF_MASK, align 4
  %142 = and i32 %140, %141
  %143 = load i32, i32* @TEGRA_GRP_DRV_DRVUP_SLWF_SHIFT, align 4
  %144 = shl i32 %142, %143
  %145 = load i32, i32* %9, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %9, align 4
  br label %147

147:                                              ; preds = %128, %120
  %148 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %149 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* @PROP_ID_DRIVE_DOWN_STRENGTH, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, -1
  br i1 %154, label %155, label %187

155:                                              ; preds = %147
  %156 = load %struct.tegra_grp*, %struct.tegra_grp** %7, align 8
  %157 = getelementptr inbounds %struct.tegra_grp, %struct.tegra_grp* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, -1
  br i1 %159, label %160, label %187

160:                                              ; preds = %155
  %161 = load %struct.tegra_grp*, %struct.tegra_grp** %7, align 8
  %162 = getelementptr inbounds %struct.tegra_grp, %struct.tegra_grp* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.tegra_grp*, %struct.tegra_grp** %7, align 8
  %165 = getelementptr inbounds %struct.tegra_grp, %struct.tegra_grp* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %163, %166
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %9, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %9, align 4
  %171 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %172 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i64, i64* @PROP_ID_DRIVE_DOWN_STRENGTH, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.tegra_grp*, %struct.tegra_grp** %7, align 8
  %178 = getelementptr inbounds %struct.tegra_grp, %struct.tegra_grp* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %176, %179
  %181 = load %struct.tegra_grp*, %struct.tegra_grp** %7, align 8
  %182 = getelementptr inbounds %struct.tegra_grp, %struct.tegra_grp* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = shl i32 %180, %183
  %185 = load i32, i32* %9, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %9, align 4
  br label %187

187:                                              ; preds = %160, %155, %147
  %188 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %189 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i64, i64* @PROP_ID_DRIVE_UP_STRENGTH, align 8
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, -1
  br i1 %194, label %195, label %227

195:                                              ; preds = %187
  %196 = load %struct.tegra_grp*, %struct.tegra_grp** %7, align 8
  %197 = getelementptr inbounds %struct.tegra_grp, %struct.tegra_grp* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, -1
  br i1 %199, label %200, label %227

200:                                              ; preds = %195
  %201 = load %struct.tegra_grp*, %struct.tegra_grp** %7, align 8
  %202 = getelementptr inbounds %struct.tegra_grp, %struct.tegra_grp* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.tegra_grp*, %struct.tegra_grp** %7, align 8
  %205 = getelementptr inbounds %struct.tegra_grp, %struct.tegra_grp* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = shl i32 %203, %206
  %208 = xor i32 %207, -1
  %209 = load i32, i32* %9, align 4
  %210 = and i32 %209, %208
  store i32 %210, i32* %9, align 4
  %211 = load %struct.pincfg*, %struct.pincfg** %8, align 8
  %212 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = load i64, i64* @PROP_ID_DRIVE_UP_STRENGTH, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.tegra_grp*, %struct.tegra_grp** %7, align 8
  %218 = getelementptr inbounds %struct.tegra_grp, %struct.tegra_grp* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = and i32 %216, %219
  %221 = load %struct.tegra_grp*, %struct.tegra_grp** %7, align 8
  %222 = getelementptr inbounds %struct.tegra_grp, %struct.tegra_grp* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = shl i32 %220, %223
  %225 = load i32, i32* %9, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %9, align 4
  br label %227

227:                                              ; preds = %200, %195, %187
  %228 = load %struct.pinmux_softc*, %struct.pinmux_softc** %5, align 8
  %229 = getelementptr inbounds %struct.pinmux_softc, %struct.pinmux_softc* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.tegra_grp*, %struct.tegra_grp** %7, align 8
  %232 = getelementptr inbounds %struct.tegra_grp, %struct.tegra_grp* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %9, align 4
  %235 = call i32 @bus_write_4(i32 %230, i32 %233, i32 %234)
  ret i32 0
}

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
