; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pl310.c_pl310_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pl310.c_pl310_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl310_softc = type { i32, i32, i32, %struct.TYPE_5__*, i32*, i32, i32*, i32 }
%struct.TYPE_5__ = type { %struct.pl310_softc*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 (...)* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: Cannot map registers\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"cannot allocate IRQ, not using interrupt\0A\00", align 1
@pl310_softc = common dso_local global %struct.pl310_softc* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"pl310lock\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@PL310_CACHE_ID = common dso_local global i32 0, align 4
@CACHE_ID_RELEASE_SHIFT = common dso_local global i32 0, align 4
@CACHE_ID_RELEASE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Part number: 0x%x, release: 0x%x\0A\00", align 1
@CACHE_ID_PARTNUM_SHIFT = common dso_local global i32 0, align 4
@CACHE_ID_PARTNUM_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"arm,io-coherent\00", align 1
@PL310_CTRL = common dso_local global i32 0, align 4
@CTRL_ENABLED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [92 x i8] c"Warning: L2 Cache should not already be active; trying to de-activate and re-initialize...\0A\00", align 1
@PL310_DEBUG_CTRL = common dso_local global i32 0, align 4
@DEBUG_CTRL_DISABLE_WRITEBACK = common dso_local global i32 0, align 4
@DEBUG_CTRL_DISABLE_LINEFILL = common dso_local global i32 0, align 4
@CTRL_DISABLED = common dso_local global i32 0, align 4
@pl310_enabled = common dso_local global i32 0, align 4
@PL310_INV_WAY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"L2 Cache enabled: %uKB/%dB %d ways\0A\00", align 1
@g_l2cache_size = common dso_local global i32 0, align 4
@g_l2cache_line_size = common dso_local global i32 0, align 4
@g_ways_assoc = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@pl310_config_intr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"config_intrhook_establish failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"L2 Cache disabled\0A\00", align 1
@cpufuncs = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@pl310_wbinv_range = common dso_local global i32 0, align 4
@pl310_inv_range = common dso_local global i32 0, align 4
@pl310_wb_range = common dso_local global i32 0, align 4
@pl310_drain_writebuf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pl310_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl310_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pl310_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.pl310_softc* @device_get_softc(i32 %9)
  store %struct.pl310_softc* %10, %struct.pl310_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %13 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 8
  store i32 0, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SYS_RES_MEMORY, align 4
  %16 = load i32, i32* @RF_ACTIVE, align 4
  %17 = call i8* @bus_alloc_resource_any(i32 %14, i32 %15, i32* %5, i32 %16)
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %20 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %19, i32 0, i32 6
  store i32* %18, i32** %20, align 8
  %21 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %22 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_get_name(i32 %26)
  %28 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %1
  store i32 0, i32* %5, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SYS_RES_IRQ, align 4
  %32 = load i32, i32* @RF_ACTIVE, align 4
  %33 = load i32, i32* @RF_SHAREABLE, align 4
  %34 = or i32 %32, %33
  %35 = call i8* @bus_alloc_resource_any(i32 %30, i32 %31, i32* %5, i32 %34)
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %38 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %37, i32 0, i32 4
  store i32* %36, i32** %38, align 8
  %39 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %40 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load i32, i32* %3, align 4
  %45 = call i32 (i32, i8*, ...) @device_printf(i32 %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %29
  %47 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  store %struct.pl310_softc* %47, %struct.pl310_softc** @pl310_softc, align 8
  %48 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %49 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %48, i32 0, i32 5
  %50 = load i32, i32* @MTX_SPIN, align 4
  %51 = call i32 @mtx_init(i32* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %50)
  %52 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %53 = load i32, i32* @PL310_CACHE_ID, align 4
  %54 = call i32 @pl310_read4(%struct.pl310_softc* %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @CACHE_ID_RELEASE_SHIFT, align 4
  %57 = ashr i32 %55, %56
  %58 = load i32, i32* @CACHE_ID_RELEASE_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %61 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @CACHE_ID_PARTNUM_SHIFT, align 4
  %65 = ashr i32 %63, %64
  %66 = load i32, i32* @CACHE_ID_PARTNUM_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @CACHE_ID_RELEASE_SHIFT, align 4
  %70 = ashr i32 %68, %69
  %71 = load i32, i32* @CACHE_ID_RELEASE_MASK, align 4
  %72 = and i32 %70, %71
  %73 = call i32 (i32, i8*, ...) @device_printf(i32 %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @ofw_bus_get_node(i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @OF_hasprop(i32 %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %46
  %80 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %81 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %46
  %83 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %84 = load i32, i32* @PL310_CTRL, align 4
  %85 = call i32 @pl310_read4(%struct.pl310_softc* %83, i32 %84)
  %86 = load i32, i32* @CTRL_ENABLED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %113

89:                                               ; preds = %82
  %90 = load i32, i32* %3, align 4
  %91 = call i32 (i32, i8*, ...) @device_printf(i32 %90, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.5, i64 0, i64 0))
  %92 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %93 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %92, i32 0, i32 2
  store i32 1, i32* %93, align 8
  %94 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %95 = load i32, i32* @PL310_DEBUG_CTRL, align 4
  %96 = call i32 @pl310_read4(%struct.pl310_softc* %94, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @DEBUG_CTRL_DISABLE_WRITEBACK, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @DEBUG_CTRL_DISABLE_LINEFILL, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @platform_pl310_write_debug(%struct.pl310_softc* %97, i32 %102)
  %104 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %105 = call i32 @pl310_set_way_sizes(%struct.pl310_softc* %104)
  %106 = call i32 (...) @pl310_wbinv_all()
  %107 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %108 = load i32, i32* @CTRL_DISABLED, align 4
  %109 = call i32 @platform_pl310_write_ctrl(%struct.pl310_softc* %107, i32 %108)
  %110 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @platform_pl310_write_debug(%struct.pl310_softc* %110, i32 %111)
  br label %113

113:                                              ; preds = %89, %82
  %114 = load i32, i32* @pl310_enabled, align 4
  %115 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %116 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %118 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %146

121:                                              ; preds = %113
  %122 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %123 = call i32 @platform_pl310_init(%struct.pl310_softc* %122)
  %124 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %125 = call i32 @pl310_set_way_sizes(%struct.pl310_softc* %124)
  %126 = load %struct.pl310_softc*, %struct.pl310_softc** @pl310_softc, align 8
  %127 = load i32, i32* @PL310_INV_WAY, align 4
  %128 = call i32 @pl310_write4(%struct.pl310_softc* %126, i32 %127, i32 65535)
  %129 = load i32, i32* @PL310_INV_WAY, align 4
  %130 = call i32 @pl310_wait_background_op(i32 %129, i32 65535)
  %131 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %132 = load i32, i32* @CTRL_ENABLED, align 4
  %133 = call i32 @platform_pl310_write_ctrl(%struct.pl310_softc* %131, i32 %132)
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* @g_l2cache_size, align 4
  %136 = sdiv i32 %135, 1024
  %137 = load i32, i32* @g_l2cache_line_size, align 4
  %138 = load i32, i32* @g_ways_assoc, align 4
  %139 = call i32 (i32, i8*, ...) @device_printf(i32 %134, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %136, i32 %137, i32 %138)
  %140 = load i64, i64* @bootverbose, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %121
  %143 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %144 = call i32 @pl310_print_config(%struct.pl310_softc* %143)
  br label %145

145:                                              ; preds = %142, %121
  br label %185

146:                                              ; preds = %113
  %147 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %148 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %182

151:                                              ; preds = %146
  %152 = load i32, i32* @M_DEVBUF, align 4
  %153 = load i32, i32* @M_WAITOK, align 4
  %154 = call %struct.TYPE_5__* @malloc(i32 16, i32 %152, i32 %153)
  %155 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %156 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %155, i32 0, i32 3
  store %struct.TYPE_5__* %154, %struct.TYPE_5__** %156, align 8
  %157 = load i32, i32* @pl310_config_intr, align 4
  %158 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %159 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %158, i32 0, i32 3
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  store i32 %157, i32* %161, align 8
  %162 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %163 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %164 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %163, i32 0, i32 3
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  store %struct.pl310_softc* %162, %struct.pl310_softc** %166, align 8
  %167 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %168 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %167, i32 0, i32 3
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = call i64 @config_intrhook_establish(%struct.TYPE_5__* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %151
  %173 = load i32, i32* %3, align 4
  %174 = call i32 (i32, i8*, ...) @device_printf(i32 %173, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %175 = load %struct.pl310_softc*, %struct.pl310_softc** %4, align 8
  %176 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %175, i32 0, i32 3
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = load i32, i32* @M_DEVBUF, align 4
  %179 = call i32 @free(%struct.TYPE_5__* %177, i32 %178)
  %180 = load i32, i32* @ENXIO, align 4
  store i32 %180, i32* %2, align 4
  br label %190

181:                                              ; preds = %151
  br label %182

182:                                              ; preds = %181, %146
  %183 = load i32, i32* %3, align 4
  %184 = call i32 (i32, i8*, ...) @device_printf(i32 %183, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %185

185:                                              ; preds = %182, %145
  store i32 (...)* @pl310_wbinv_all, i32 (...)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpufuncs, i32 0, i32 4), align 8
  %186 = load i32, i32* @pl310_wbinv_range, align 4
  store i32 %186, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpufuncs, i32 0, i32 3), align 4
  %187 = load i32, i32* @pl310_inv_range, align 4
  store i32 %187, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpufuncs, i32 0, i32 2), align 8
  %188 = load i32, i32* @pl310_wb_range, align 4
  store i32 %188, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpufuncs, i32 0, i32 1), align 4
  %189 = load i32, i32* @pl310_drain_writebuf, align 4
  store i32 %189, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpufuncs, i32 0, i32 0), align 8
  store i32 0, i32* %2, align 4
  br label %190

190:                                              ; preds = %185, %172
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.pl310_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @pl310_read4(%struct.pl310_softc*, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @platform_pl310_write_debug(%struct.pl310_softc*, i32) #1

declare dso_local i32 @pl310_set_way_sizes(%struct.pl310_softc*) #1

declare dso_local i32 @pl310_wbinv_all(...) #1

declare dso_local i32 @platform_pl310_write_ctrl(%struct.pl310_softc*, i32) #1

declare dso_local i32 @platform_pl310_init(%struct.pl310_softc*) #1

declare dso_local i32 @pl310_write4(%struct.pl310_softc*, i32, i32) #1

declare dso_local i32 @pl310_wait_background_op(i32, i32) #1

declare dso_local i32 @pl310_print_config(%struct.pl310_softc*) #1

declare dso_local %struct.TYPE_5__* @malloc(i32, i32, i32) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_5__*) #1

declare dso_local i32 @free(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
