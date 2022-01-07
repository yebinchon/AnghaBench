; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_usbphy.c_awusbphy_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_usbphy.c_awusbphy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awusbphy_softc = type { i32, i32, i32**, i32*, %struct.aw_usbphy_conf*, i32, i32, i32* }
%struct.aw_usbphy_conf = type { i32 }
%struct.TYPE_2__ = type { i64 }

@compat_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"reg-names\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"phy_ctrl\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Cannot locate phy control resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Cannot allocate resource\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"couldn't enable clock %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"couldn't de-assert reset %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"usb0_id_det-gpios\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"usb0_vbus_det-gpios\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"usb%d_vbus-supply\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"pmu%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @awusbphy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @awusbphy_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.awusbphy_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [20 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.awusbphy_softc* @device_get_softc(i32 %13)
  store %struct.awusbphy_softc* %14, %struct.awusbphy_softc** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ofw_bus_get_node(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @compat_data, align 4
  %19 = call %struct.TYPE_2__* @ofw_bus_search_compatible(i32 %17, i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.aw_usbphy_conf*
  %23 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %4, align 8
  %24 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %23, i32 0, i32 4
  store %struct.aw_usbphy_conf* %22, %struct.aw_usbphy_conf** %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @ofw_bus_find_string_index(i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = call i32 (i32, i8*, ...) @device_printf(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %206

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @SYS_RES_MEMORY, align 4
  %35 = load i32, i32* @RF_ACTIVE, align 4
  %36 = call i8* @bus_alloc_resource_any(i32 %33, i32 %34, i32* %9, i32 %35)
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %4, align 8
  %39 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %38, i32 0, i32 7
  store i32* %37, i32** %39, align 8
  %40 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %4, align 8
  %41 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %40, i32 0, i32 7
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %32
  %45 = load i32, i32* %3, align 4
  %46 = call i32 (i32, i8*, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* @ENXIO, align 4
  store i32 %47, i32* %2, align 4
  br label %206

48:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %66, %48
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @clk_get_by_ofw_index(i32 %50, i32 0, i32 %51, i32* %12)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @clk_enable(i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @clk_get_name(i32 %61)
  %63 = call i32 (i32, i8*, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %206

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %49

69:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %86, %69
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i64 @hwreset_get_by_ofw_idx(i32 %71, i32 0, i32 %72, i32* %11)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %70
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @hwreset_deassert(i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 (i32, i8*, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %206

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %70

89:                                               ; preds = %70
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %4, align 8
  %93 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %92, i32 0, i32 6
  %94 = call i32 @gpio_pin_get_by_ofw_property(i32 %90, i32 %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %4, align 8
  %99 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  br label %100

100:                                              ; preds = %97, %89
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %4, align 8
  %104 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %103, i32 0, i32 5
  %105 = call i32 @gpio_pin_get_by_ofw_property(i32 %101, i32 %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %4, align 8
  %110 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %100
  %112 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %4, align 8
  %113 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %112, i32 0, i32 4
  %114 = load %struct.aw_usbphy_conf*, %struct.aw_usbphy_conf** %113, align 8
  %115 = getelementptr inbounds %struct.aw_usbphy_conf, %struct.aw_usbphy_conf* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 4, %117
  %119 = trunc i64 %118 to i32
  %120 = load i32, i32* @M_DEVBUF, align 4
  %121 = load i32, i32* @M_WAITOK, align 4
  %122 = load i32, i32* @M_ZERO, align 4
  %123 = or i32 %121, %122
  %124 = call i8* @malloc(i32 %119, i32 %120, i32 %123)
  %125 = bitcast i8* %124 to i32*
  %126 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %4, align 8
  %127 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %126, i32 0, i32 3
  store i32* %125, i32** %127, align 8
  %128 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %4, align 8
  %129 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %128, i32 0, i32 4
  %130 = load %struct.aw_usbphy_conf*, %struct.aw_usbphy_conf** %129, align 8
  %131 = getelementptr inbounds %struct.aw_usbphy_conf, %struct.aw_usbphy_conf* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = mul i64 8, %133
  %135 = trunc i64 %134 to i32
  %136 = load i32, i32* @M_DEVBUF, align 4
  %137 = load i32, i32* @M_WAITOK, align 4
  %138 = load i32, i32* @M_ZERO, align 4
  %139 = or i32 %137, %138
  %140 = call i8* @malloc(i32 %135, i32 %136, i32 %139)
  %141 = bitcast i8* %140 to i32**
  %142 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %4, align 8
  %143 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %142, i32 0, i32 2
  store i32** %141, i32*** %143, align 8
  store i32 0, i32* %8, align 4
  br label %144

144:                                              ; preds = %202, %111
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %4, align 8
  %147 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %146, i32 0, i32 4
  %148 = load %struct.aw_usbphy_conf*, %struct.aw_usbphy_conf** %147, align 8
  %149 = getelementptr inbounds %struct.aw_usbphy_conf, %struct.aw_usbphy_conf* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %145, %150
  br i1 %151, label %152, label %205

152:                                              ; preds = %144
  %153 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @snprintf(i8* %153, i32 20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* %3, align 4
  %157 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %158 = call i64 @regulator_get_by_ofw_property(i32 %156, i32 0, i8* %157, i32* %10)
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %152
  %161 = load i32, i32* %10, align 4
  %162 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %4, align 8
  %163 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 %161, i32* %167, align 4
  br label %168

168:                                              ; preds = %160, %152
  %169 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @snprintf(i8* %169, i32 20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* %5, align 4
  %173 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %174 = call i64 @ofw_bus_find_string_index(i32 %172, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %173, i32* %9)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  br label %202

177:                                              ; preds = %168
  %178 = load i32, i32* %3, align 4
  %179 = load i32, i32* @SYS_RES_MEMORY, align 4
  %180 = load i32, i32* @RF_ACTIVE, align 4
  %181 = call i8* @bus_alloc_resource_any(i32 %178, i32 %179, i32* %9, i32 %180)
  %182 = bitcast i8* %181 to i32*
  %183 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %4, align 8
  %184 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %183, i32 0, i32 2
  %185 = load i32**, i32*** %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32*, i32** %185, i64 %187
  store i32* %182, i32** %188, align 8
  %189 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %4, align 8
  %190 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %189, i32 0, i32 2
  %191 = load i32**, i32*** %190, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32*, i32** %191, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = icmp eq i32* %195, null
  br i1 %196, label %197, label %201

197:                                              ; preds = %177
  %198 = load i32, i32* %3, align 4
  %199 = call i32 (i32, i8*, ...) @device_printf(i32 %198, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %200 = load i32, i32* @ENXIO, align 4
  store i32 %200, i32* %2, align 4
  br label %206

201:                                              ; preds = %177
  br label %202

202:                                              ; preds = %201, %176
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %8, align 4
  br label %144

205:                                              ; preds = %144
  store i32 0, i32* %2, align 4
  br label %206

206:                                              ; preds = %205, %197, %80, %59, %44, %28
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local %struct.awusbphy_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local %struct.TYPE_2__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i64 @ofw_bus_find_string_index(i32, i8*, i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i64 @clk_get_by_ofw_index(i32, i32, i32, i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_get_name(i32) #1

declare dso_local i64 @hwreset_get_by_ofw_idx(i32, i32, i32, i32*) #1

declare dso_local i32 @hwreset_deassert(i32) #1

declare dso_local i32 @gpio_pin_get_by_ofw_property(i32, i32, i8*, i32*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @regulator_get_by_ofw_property(i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
