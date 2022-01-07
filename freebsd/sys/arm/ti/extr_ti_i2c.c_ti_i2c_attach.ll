; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_i2c.c_ti_i2c_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_i2c.c_ti_i2c_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_i2c_softc = type { i64, i32, i32, i32, i32*, i32, i32*, i32*, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@INVALID_CLK_IDENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"failed to get device id using ti,hwmod\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Cannot map registers.\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Cannot allocate interrupt.\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ti_i2c_activate failed\0A\00", align 1
@I2C_REG_REVNB_HI = common dso_local global i32 0, align 4
@I2C_REG_BUFSTAT = common dso_local global i32 0, align 4
@I2C_BUFSTAT_FIFODEPTH_SHIFT = common dso_local global i32 0, align 4
@I2C_BUFSTAT_FIFODEPTH_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"I2C revision %d.%d FIFO size: %d bytes\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"i2c_clock\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@ti_i2c_sysctl_clk = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"I2C bus clock\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"i2c_timeout\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@ti_i2c_sysctl_timeout = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"I2C bus timeout (in ticks)\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ti_i2c_intr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"iicbus\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"could not allocate iicbus instance\0A\00", align 1
@bus_generic_attach = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ti_i2c_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_i2c_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ti_i2c_softc*, align 8
  %8 = alloca %struct.sysctl_ctx_list*, align 8
  %9 = alloca %struct.sysctl_oid_list*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.ti_i2c_softc* @device_get_softc(i32 %11)
  store %struct.ti_i2c_softc* %12, %struct.ti_i2c_softc** %7, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %7, align 8
  %15 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %14, i32 0, i32 8
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ofw_bus_get_node(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @ti_hwmods_get_clock(i32 %18)
  %20 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %7, align 8
  %21 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %7, align 8
  %23 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @INVALID_CLK_IDENT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %182

31:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @SYS_RES_MEMORY, align 4
  %34 = load i32, i32* @RF_ACTIVE, align 4
  %35 = call i8* @bus_alloc_resource_any(i32 %32, i32 %33, i32* %5, i32 %34)
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %7, align 8
  %38 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %37, i32 0, i32 7
  store i32* %36, i32** %38, align 8
  %39 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %7, align 8
  %40 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %39, i32 0, i32 7
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load i32, i32* %3, align 4
  %45 = call i32 (i32, i8*, ...) @device_printf(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %2, align 4
  br label %182

47:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @SYS_RES_IRQ, align 4
  %50 = load i32, i32* @RF_ACTIVE, align 4
  %51 = load i32, i32* @RF_SHAREABLE, align 4
  %52 = or i32 %50, %51
  %53 = call i8* @bus_alloc_resource_any(i32 %48, i32 %49, i32* %5, i32 %52)
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %7, align 8
  %56 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %55, i32 0, i32 6
  store i32* %54, i32** %56, align 8
  %57 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %7, align 8
  %58 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %57, i32 0, i32 6
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %47
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @SYS_RES_MEMORY, align 4
  %64 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %7, align 8
  %65 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %64, i32 0, i32 7
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @bus_release_resource(i32 %62, i32 %63, i32 0, i32* %66)
  %68 = load i32, i32* %3, align 4
  %69 = call i32 (i32, i8*, ...) @device_printf(i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @ENXIO, align 4
  store i32 %70, i32* %2, align 4
  br label %182

71:                                               ; preds = %47
  %72 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %7, align 8
  %73 = call i32 @TI_I2C_LOCK_INIT(%struct.ti_i2c_softc* %72)
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @ti_i2c_activate(i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* %3, align 4
  %80 = call i32 (i32, i8*, ...) @device_printf(i32 %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %172

81:                                               ; preds = %71
  %82 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %7, align 8
  %83 = load i32, i32* @I2C_REG_REVNB_HI, align 4
  %84 = call i32 @ti_i2c_read_2(%struct.ti_i2c_softc* %82, i32 %83)
  %85 = and i32 %84, 255
  %86 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %7, align 8
  %87 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %7, align 8
  %89 = load i32, i32* @I2C_REG_BUFSTAT, align 4
  %90 = call i32 @ti_i2c_read_2(%struct.ti_i2c_softc* %88, i32 %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* @I2C_BUFSTAT_FIFODEPTH_SHIFT, align 4
  %92 = load i32, i32* %10, align 4
  %93 = ashr i32 %92, %91
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* @I2C_BUFSTAT_FIFODEPTH_MASK, align 4
  %95 = load i32, i32* %10, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %3, align 4
  %98 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %7, align 8
  %99 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = ashr i32 %100, 4
  %102 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %7, align 8
  %103 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, 15
  %106 = load i32, i32* %10, align 4
  %107 = shl i32 8, %106
  %108 = call i32 (i32, i8*, ...) @device_printf(i32 %97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %101, i32 %105, i32 %107)
  %109 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %7, align 8
  %110 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %109, i32 0, i32 2
  store i32 5, i32* %110, align 4
  %111 = load i32, i32* @hz, align 4
  %112 = mul nsw i32 5, %111
  %113 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %7, align 8
  %114 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %3, align 4
  %116 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %115)
  store %struct.sysctl_ctx_list* %116, %struct.sysctl_ctx_list** %8, align 8
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @device_get_sysctl_tree(i32 %117)
  %119 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %118)
  store %struct.sysctl_oid_list* %119, %struct.sysctl_oid_list** %9, align 8
  %120 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %8, align 8
  %121 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %122 = load i32, i32* @OID_AUTO, align 4
  %123 = load i32, i32* @CTLFLAG_RD, align 4
  %124 = load i32, i32* @CTLTYPE_UINT, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %7, align 8
  %129 = load i32, i32* @ti_i2c_sysctl_clk, align 4
  %130 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %120, %struct.sysctl_oid_list* %121, i32 %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %127, %struct.ti_i2c_softc* %128, i32 0, i32 %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %131 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %8, align 8
  %132 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %133 = load i32, i32* @OID_AUTO, align 4
  %134 = load i32, i32* @CTLFLAG_RW, align 4
  %135 = load i32, i32* @CTLTYPE_UINT, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %7, align 8
  %140 = load i32, i32* @ti_i2c_sysctl_timeout, align 4
  %141 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %131, %struct.sysctl_oid_list* %132, i32 %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %138, %struct.ti_i2c_softc* %139, i32 0, i32 %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %142 = load i32, i32* %3, align 4
  %143 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %7, align 8
  %144 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %143, i32 0, i32 6
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* @INTR_TYPE_MISC, align 4
  %147 = load i32, i32* @INTR_MPSAFE, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @ti_i2c_intr, align 4
  %150 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %7, align 8
  %151 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %7, align 8
  %152 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %151, i32 0, i32 5
  %153 = call i32 @bus_setup_intr(i32 %142, i32* %145, i32 %148, i32* null, i32 %149, %struct.ti_i2c_softc* %150, i32* %152)
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %4, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %81
  br label %172

157:                                              ; preds = %81
  %158 = load i32, i32* %3, align 4
  %159 = call i32* @device_add_child(i32 %158, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 -1)
  %160 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %7, align 8
  %161 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %160, i32 0, i32 4
  store i32* %159, i32** %161, align 8
  %162 = icmp eq i32* %159, null
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  %164 = load i32, i32* %3, align 4
  %165 = call i32 (i32, i8*, ...) @device_printf(i32 %164, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %166 = load i32, i32* @ENXIO, align 4
  store i32 %166, i32* %4, align 4
  br label %172

167:                                              ; preds = %157
  %168 = load i64, i64* @bus_generic_attach, align 8
  %169 = trunc i64 %168 to i32
  %170 = load i32, i32* %3, align 4
  %171 = call i32 @config_intrhook_oneshot(i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %167, %163, %156, %78
  %173 = load i32, i32* %4, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %172
  %176 = load i32, i32* %3, align 4
  %177 = call i32 @ti_i2c_deactivate(i32 %176)
  %178 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %7, align 8
  %179 = call i32 @TI_I2C_LOCK_DESTROY(%struct.ti_i2c_softc* %178)
  br label %180

180:                                              ; preds = %175, %172
  %181 = load i32, i32* %4, align 4
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %180, %61, %43, %27
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local %struct.ti_i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @ti_hwmods_get_clock(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @TI_I2C_LOCK_INIT(%struct.ti_i2c_softc*) #1

declare dso_local i32 @ti_i2c_activate(i32) #1

declare dso_local i32 @ti_i2c_read_2(%struct.ti_i2c_softc*, i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.ti_i2c_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.ti_i2c_softc*, i32*) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @config_intrhook_oneshot(i32, i32) #1

declare dso_local i32 @ti_i2c_deactivate(i32) #1

declare dso_local i32 @TI_I2C_LOCK_DESTROY(%struct.ti_i2c_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
