; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd.c_am335x_lcd_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd.c_am335x_lcd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am335x_lcd_softc = type { i32, i32, i32, i32, i8*, i8*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to get FDT root node\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"ti,tilcdc,panel\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"using static panel info\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to read panel info\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to read timings\0A\00", align 1
@LCDC_CLK = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"cannot allocate memory window\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"cannot allocate interrupt\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@am335x_lcd_intr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Unable to setup the irq handler.\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@am335x_lcd_sysctl_backlight = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"LCD backlight\00", align 1
@PWM_UNIT = common dso_local global i32 0, align 4
@PWM_PERIOD = common dso_local global i32 0, align 4
@hdmi_event = common dso_local global i32 0, align 4
@am335x_lcd_hdmi_event = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @am335x_lcd_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_lcd_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.am335x_lcd_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sysctl_ctx_list*, align 8
  %8 = alloca %struct.sysctl_oid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.am335x_lcd_softc* @device_get_softc(i32 %11)
  store %struct.am335x_lcd_softc* %12, %struct.am335x_lcd_softc** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %15 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @am335x_read_hdmi_property(i32 %16)
  %18 = call i32 @OF_finddevice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %194

25:                                               ; preds = %1
  %26 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %27 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 255, i32* %28, align 8
  %29 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %30 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %29, i32 0, i32 7
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 6
  store i64 0, i64* %31, align 8
  %32 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %33 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 16, i32* %34, align 4
  %35 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %36 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i32 16, i32* %37, align 8
  %38 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %39 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  store i32 128, i32* %40, align 4
  %41 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %42 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 5
  store i64 0, i64* %43, align 8
  %44 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %45 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  store i32 1, i32* %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @fdt_find_compatible(i32 %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %25
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %57 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %56, i32 0, i32 7
  %58 = call i64 @am335x_read_panel_info(i32 %54, i32 %55, %struct.TYPE_3__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %2, align 4
  br label %194

64:                                               ; preds = %51
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %68 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %67, i32 0, i32 7
  %69 = call i64 @am335x_read_timing(i32 %65, i32 %66, %struct.TYPE_3__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %2, align 4
  br label %194

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %25
  %77 = load i32, i32* @LCDC_CLK, align 4
  %78 = call i32 @ti_prcm_clk_enable(i32 %77)
  store i32 0, i32* %6, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @SYS_RES_MEMORY, align 4
  %81 = load i32, i32* @RF_ACTIVE, align 4
  %82 = call i8* @bus_alloc_resource_any(i32 %79, i32 %80, i32* %6, i32 %81)
  %83 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %84 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  %85 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %86 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %85, i32 0, i32 4
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %76
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @device_printf(i32 %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %92 = load i32, i32* @ENXIO, align 4
  store i32 %92, i32* %2, align 4
  br label %194

93:                                               ; preds = %76
  store i32 0, i32* %6, align 4
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @SYS_RES_IRQ, align 4
  %96 = load i32, i32* @RF_ACTIVE, align 4
  %97 = call i8* @bus_alloc_resource_any(i32 %94, i32 %95, i32* %6, i32 %96)
  %98 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %99 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %98, i32 0, i32 5
  store i8* %97, i8** %99, align 8
  %100 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %101 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %100, i32 0, i32 5
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %114, label %104

104:                                              ; preds = %93
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @SYS_RES_MEMORY, align 4
  %107 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %108 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %107, i32 0, i32 4
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @bus_release_resource(i32 %105, i32 %106, i32 0, i8* %109)
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @device_printf(i32 %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %113 = load i32, i32* @ENXIO, align 4
  store i32 %113, i32* %2, align 4
  br label %194

114:                                              ; preds = %93
  %115 = load i32, i32* %3, align 4
  %116 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %117 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %116, i32 0, i32 5
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* @INTR_TYPE_MISC, align 4
  %120 = load i32, i32* @INTR_MPSAFE, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @am335x_lcd_intr, align 4
  %123 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %124 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %125 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %124, i32 0, i32 6
  %126 = call i64 @bus_setup_intr(i32 %115, i8* %118, i32 %121, i32* null, i32 %122, %struct.am335x_lcd_softc* %123, i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %146

128:                                              ; preds = %114
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* @SYS_RES_IRQ, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %133 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %132, i32 0, i32 5
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @bus_release_resource(i32 %129, i32 %130, i32 %131, i8* %134)
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @SYS_RES_MEMORY, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %140 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %139, i32 0, i32 4
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @bus_release_resource(i32 %136, i32 %137, i32 %138, i8* %141)
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @device_printf(i32 %143, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %145 = load i32, i32* @ENXIO, align 4
  store i32 %145, i32* %2, align 4
  br label %194

146:                                              ; preds = %114
  %147 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %148 = call i32 @LCD_LOCK_INIT(%struct.am335x_lcd_softc* %147)
  %149 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %150 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %151)
  store %struct.sysctl_ctx_list* %152, %struct.sysctl_ctx_list** %7, align 8
  %153 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %154 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %155)
  store %struct.sysctl_oid* %156, %struct.sysctl_oid** %8, align 8
  %157 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %158 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %159 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %158)
  %160 = load i32, i32* @OID_AUTO, align 4
  %161 = load i32, i32* @CTLTYPE_INT, align 4
  %162 = load i32, i32* @CTLFLAG_RW, align 4
  %163 = or i32 %161, %162
  %164 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %165 = load i32, i32* @am335x_lcd_sysctl_backlight, align 4
  %166 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %157, i32 %159, i32 %160, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %163, %struct.am335x_lcd_softc* %164, i32 0, i32 %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %167 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %168 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  %169 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %170 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %169, i32 0, i32 0
  store i32 0, i32* %170, align 8
  %171 = load i32, i32* @PWM_UNIT, align 4
  %172 = load i32, i32* @PWM_PERIOD, align 4
  %173 = load i32, i32* @PWM_PERIOD, align 4
  %174 = call i64 @am335x_pwm_config_ecap(i32 %171, i32 %172, i32 %173)
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %146
  %177 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %178 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %177, i32 0, i32 0
  store i32 100, i32* %178, align 8
  br label %179

179:                                              ; preds = %176, %146
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %184 = call i32 @am335x_lcd_configure(%struct.am335x_lcd_softc* %183)
  br label %193

185:                                              ; preds = %179
  %186 = load i32, i32* @hdmi_event, align 4
  %187 = load i32, i32* @am335x_lcd_hdmi_event, align 4
  %188 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %189 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %190 = call i32 @EVENTHANDLER_REGISTER(i32 %186, i32 %187, %struct.am335x_lcd_softc* %188, i32 %189)
  %191 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %4, align 8
  %192 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  br label %193

193:                                              ; preds = %185, %182
  store i32 0, i32* %2, align 4
  br label %194

194:                                              ; preds = %193, %128, %104, %89, %71, %60, %21
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local %struct.am335x_lcd_softc* @device_get_softc(i32) #1

declare dso_local i32 @am335x_read_hdmi_property(i32) #1

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @fdt_find_compatible(i32, i8*, i32) #1

declare dso_local i64 @am335x_read_panel_info(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i64 @am335x_read_timing(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ti_prcm_clk_enable(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i8*, i32, i32*, i32, %struct.am335x_lcd_softc*, i32*) #1

declare dso_local i32 @LCD_LOCK_INIT(%struct.am335x_lcd_softc*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.am335x_lcd_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i64 @am335x_pwm_config_ecap(i32, i32, i32) #1

declare dso_local i32 @am335x_lcd_configure(%struct.am335x_lcd_softc*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, %struct.am335x_lcd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
