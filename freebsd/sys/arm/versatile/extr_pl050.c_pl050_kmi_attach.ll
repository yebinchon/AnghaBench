; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_pl050.c_pl050_kmi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_pl050.c_pl050_kmi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmi_softc = type { i32*, i32, i32, i32*, i32, i32*, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i8* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not allocate memory resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Error: could not allocate irq resources\0A\00", align 1
@INTR_TYPE_CLK = common dso_local global i32 0, align 4
@pl050_kmi_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Unable to setup the clock irq handler.\0A\00", align 1
@KMICR = common dso_local global i32 0, align 4
@KMICR_EN = common dso_local global i32 0, align 4
@KMIDATA = common dso_local global i32 0, align 4
@SET_SCANCODE_SET = common dso_local global i32 0, align 4
@KMICR_RXINTREN = common dso_local global i32 0, align 4
@KMI_DRIVER_NAME = common dso_local global i32 0, align 4
@KB_OTHER = common dso_local global i32 0, align 4
@key_map = common dso_local global i32 0, align 4
@accent_map = common dso_local global i32 0, align 4
@KMI_NFKEY = common dso_local global i32 0, align 4
@fkey_tab = common dso_local global i32* null, align 8
@bootverbose = common dso_local global i64 0, align 8
@kmi_attached = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pl050_kmi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl050_kmi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.kmi_softc*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.kmi_softc* @device_get_softc(i32 %9)
  store %struct.kmi_softc* %10, %struct.kmi_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.kmi_softc*, %struct.kmi_softc** %4, align 8
  %13 = getelementptr inbounds %struct.kmi_softc, %struct.kmi_softc* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 8
  %14 = load %struct.kmi_softc*, %struct.kmi_softc** %4, align 8
  %15 = getelementptr inbounds %struct.kmi_softc, %struct.kmi_softc* %14, i32 0, i32 6
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @SYS_RES_MEMORY, align 4
  %18 = load i32, i32* @RF_ACTIVE, align 4
  %19 = call i8* @bus_alloc_resource_any(i32 %16, i32 %17, i32* %6, i32 %18)
  %20 = bitcast i8* %19 to i32*
  %21 = load %struct.kmi_softc*, %struct.kmi_softc** %4, align 8
  %22 = getelementptr inbounds %struct.kmi_softc, %struct.kmi_softc* %21, i32 0, i32 5
  store i32* %20, i32** %22, align 8
  %23 = load %struct.kmi_softc*, %struct.kmi_softc** %4, align 8
  %24 = getelementptr inbounds %struct.kmi_softc, %struct.kmi_softc* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %164

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @SYS_RES_IRQ, align 4
  %34 = load i32, i32* @RF_ACTIVE, align 4
  %35 = call i8* @bus_alloc_resource_any(i32 %32, i32 %33, i32* %6, i32 %34)
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.kmi_softc*, %struct.kmi_softc** %4, align 8
  %38 = getelementptr inbounds %struct.kmi_softc, %struct.kmi_softc* %37, i32 0, i32 3
  store i32* %36, i32** %38, align 8
  %39 = load %struct.kmi_softc*, %struct.kmi_softc** %4, align 8
  %40 = getelementptr inbounds %struct.kmi_softc, %struct.kmi_softc* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %2, align 4
  br label %164

47:                                               ; preds = %31
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.kmi_softc*, %struct.kmi_softc** %4, align 8
  %50 = getelementptr inbounds %struct.kmi_softc, %struct.kmi_softc* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @INTR_TYPE_CLK, align 4
  %53 = load i32, i32* @pl050_kmi_intr, align 4
  %54 = load %struct.kmi_softc*, %struct.kmi_softc** %4, align 8
  %55 = load %struct.kmi_softc*, %struct.kmi_softc** %4, align 8
  %56 = getelementptr inbounds %struct.kmi_softc, %struct.kmi_softc* %55, i32 0, i32 4
  %57 = call i64 @bus_setup_intr(i32 %48, i32* %51, i32 %52, i32* null, i32 %53, %struct.kmi_softc* %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %47
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @SYS_RES_IRQ, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.kmi_softc*, %struct.kmi_softc** %4, align 8
  %64 = getelementptr inbounds %struct.kmi_softc, %struct.kmi_softc* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @bus_release_resource(i32 %60, i32 %61, i32 %62, i32* %65)
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @ENXIO, align 4
  store i32 %69, i32* %2, align 4
  br label %164

70:                                               ; preds = %47
  %71 = load %struct.kmi_softc*, %struct.kmi_softc** %4, align 8
  %72 = load i32, i32* @KMICR, align 4
  %73 = load i32, i32* @KMICR_EN, align 4
  %74 = call i32 @pl050_kmi_write_4(%struct.kmi_softc* %71, i32 %72, i32 %73)
  %75 = load %struct.kmi_softc*, %struct.kmi_softc** %4, align 8
  %76 = load i32, i32* @KMIDATA, align 4
  %77 = load i32, i32* @SET_SCANCODE_SET, align 4
  %78 = call i32 @pl050_kmi_write_4(%struct.kmi_softc* %75, i32 %76, i32 %77)
  %79 = load %struct.kmi_softc*, %struct.kmi_softc** %4, align 8
  %80 = load i32, i32* @KMIDATA, align 4
  %81 = call i32 @pl050_kmi_read_4(%struct.kmi_softc* %79, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load %struct.kmi_softc*, %struct.kmi_softc** %4, align 8
  %83 = load i32, i32* @KMIDATA, align 4
  %84 = call i32 @pl050_kmi_write_4(%struct.kmi_softc* %82, i32 %83, i32 1)
  %85 = load %struct.kmi_softc*, %struct.kmi_softc** %4, align 8
  %86 = load i32, i32* @KMIDATA, align 4
  %87 = call i32 @pl050_kmi_read_4(%struct.kmi_softc* %85, i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load %struct.kmi_softc*, %struct.kmi_softc** %4, align 8
  %89 = load i32, i32* @KMICR, align 4
  %90 = load i32, i32* @KMICR_EN, align 4
  %91 = load i32, i32* @KMICR_RXINTREN, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @pl050_kmi_write_4(%struct.kmi_softc* %88, i32 %89, i32 %92)
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %95 = load i32, i32* @KMI_DRIVER_NAME, align 4
  %96 = load i32, i32* @KB_OTHER, align 4
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @device_get_unit(i32 %97)
  %99 = call i32 @kbd_init_struct(%struct.TYPE_12__* %94, i32 %95, i32 %96, i32 %98, i32 0, i32 0, i32 0)
  %100 = load %struct.kmi_softc*, %struct.kmi_softc** %4, align 8
  %101 = bitcast %struct.kmi_softc* %100 to i8*
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* @key_map, align 4
  %105 = load %struct.kmi_softc*, %struct.kmi_softc** %4, align 8
  %106 = getelementptr inbounds %struct.kmi_softc, %struct.kmi_softc* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @accent_map, align 4
  %108 = load %struct.kmi_softc*, %struct.kmi_softc** %4, align 8
  %109 = getelementptr inbounds %struct.kmi_softc, %struct.kmi_softc* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  store i32 0, i32* %7, align 4
  br label %110

110:                                              ; preds = %126, %70
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @KMI_NFKEY, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %129

114:                                              ; preds = %110
  %115 = load i32*, i32** @fkey_tab, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.kmi_softc*, %struct.kmi_softc** %4, align 8
  %121 = getelementptr inbounds %struct.kmi_softc, %struct.kmi_softc* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %119, i32* %125, align 4
  br label %126

126:                                              ; preds = %114
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %110

129:                                              ; preds = %110
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %131 = load %struct.kmi_softc*, %struct.kmi_softc** %4, align 8
  %132 = getelementptr inbounds %struct.kmi_softc, %struct.kmi_softc* %131, i32 0, i32 2
  %133 = load %struct.kmi_softc*, %struct.kmi_softc** %4, align 8
  %134 = getelementptr inbounds %struct.kmi_softc, %struct.kmi_softc* %133, i32 0, i32 1
  %135 = load %struct.kmi_softc*, %struct.kmi_softc** %4, align 8
  %136 = getelementptr inbounds %struct.kmi_softc, %struct.kmi_softc* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* @KMI_NFKEY, align 4
  %139 = call i32 @kbd_set_maps(%struct.TYPE_12__* %130, i32* %132, i32* %134, i32* %137, i32 %138)
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %141 = call i32 @KBD_FOUND_DEVICE(%struct.TYPE_12__* %140)
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %143 = call i32 @kmi_clear_state(%struct.TYPE_12__* %142)
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %145 = call i32 @KBD_PROBE_DONE(%struct.TYPE_12__* %144)
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %147 = call i32 @KBD_INIT_DONE(%struct.TYPE_12__* %146)
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %149 = call i64 @kbd_register(%struct.TYPE_12__* %148)
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %129
  br label %162

152:                                              ; preds = %129
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %154 = call i32 @KBD_CONFIG_DONE(%struct.TYPE_12__* %153)
  %155 = load i64, i64* @bootverbose, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %159 = load i64, i64* @bootverbose, align 8
  %160 = call i32 @genkbd_diag(%struct.TYPE_12__* %158, i64 %159)
  br label %161

161:                                              ; preds = %157, %152
  store i32 1, i32* @kmi_attached, align 4
  store i32 0, i32* %2, align 4
  br label %164

162:                                              ; preds = %151
  %163 = load i32, i32* @ENXIO, align 4
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %162, %161, %59, %43, %27
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local %struct.kmi_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.kmi_softc*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @pl050_kmi_write_4(%struct.kmi_softc*, i32, i32) #1

declare dso_local i32 @pl050_kmi_read_4(%struct.kmi_softc*, i32) #1

declare dso_local i32 @kbd_init_struct(%struct.TYPE_12__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @kbd_set_maps(%struct.TYPE_12__*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @KBD_FOUND_DEVICE(%struct.TYPE_12__*) #1

declare dso_local i32 @kmi_clear_state(%struct.TYPE_12__*) #1

declare dso_local i32 @KBD_PROBE_DONE(%struct.TYPE_12__*) #1

declare dso_local i32 @KBD_INIT_DONE(%struct.TYPE_12__*) #1

declare dso_local i64 @kbd_register(%struct.TYPE_12__*) #1

declare dso_local i32 @KBD_CONFIG_DONE(%struct.TYPE_12__*) #1

declare dso_local i32 @genkbd_diag(%struct.TYPE_12__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
