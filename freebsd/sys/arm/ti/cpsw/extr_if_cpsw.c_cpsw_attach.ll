; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.cpsw_softc = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_6__, %struct.TYPE_6__, i32, i32, i32, i32*, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"active_slave\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"dual_emac\00", align 1
@CPSW_PORTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to get PHY address from FDT\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"cpsw TX lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"cpsw RX lock\00", align 1
@irq_res_spec = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"could not allocate IRQ resources\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"failed to allocate memory resource\0A\00", align 1
@CPSW_SS_IDVER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"CPSW SS Version %d.%d (%d)\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@CPSW_TXFRAGS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"bus_dma_tag_create failed\0A\00", align 1
@ETHER_MIN_LEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to allocate dmamaps\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"Initial queue size TX=%d RX=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"failed to setup interrupts\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"cpsw\00", align 1
@CPSW_VLANS = common dso_local global i32 0, align 4
@cpsw_vgroups = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cpsw_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpsw_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.cpsw_softc* @device_get_softc(i32 %8)
  store %struct.cpsw_softc* %9, %struct.cpsw_softc** %6, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %12 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %11, i32 0, i32 7
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @ofw_bus_get_node(i32 %13)
  %15 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %16 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %15, i32 0, i32 11
  store i32 %14, i32* %16, align 4
  %17 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %18 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %17, i32 0, i32 12
  %19 = call i32 @getbinuptime(i32* %18)
  %20 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %21 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %20, i32 0, i32 11
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %24 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %23, i32 0, i32 0
  %25 = call i64 @OF_getencprop(i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %24, i32 4)
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %29 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  br label %30

30:                                               ; preds = %27, %1
  %31 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %32 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %37 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %40 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %39, i32 0, i32 11
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @OF_hasprop(i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %46 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %38
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %74, %47
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @CPSW_PORTS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %48
  %53 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %54 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %60 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %74

64:                                               ; preds = %57, %52
  %65 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i64 @cpsw_get_fdt_data(%struct.cpsw_softc* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* %3, align 4
  %71 = call i32 (i32, i8*, ...) @device_printf(i32 %70, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @ENXIO, align 4
  store i32 %72, i32* %2, align 4
  br label %291

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %63
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %48

77:                                               ; preds = %48
  %78 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %79 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 4
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @device_get_nameunit(i32 %81)
  %83 = load i32, i32* @MTX_DEF, align 4
  %84 = call i32 @mtx_init(i32* %80, i32 %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %86 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 4
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @device_get_nameunit(i32 %88)
  %90 = load i32, i32* @MTX_DEF, align 4
  %91 = call i32 @mtx_init(i32* %87, i32 %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @irq_res_spec, align 4
  %94 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %95 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %94, i32 0, i32 10
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @bus_alloc_resources(i32 %92, i32 %93, i32 %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %77
  %101 = load i32, i32* %3, align 4
  %102 = call i32 (i32, i8*, ...) @device_printf(i32 %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @cpsw_detach(i32 %103)
  %105 = load i32, i32* @ENXIO, align 4
  store i32 %105, i32* %2, align 4
  br label %291

106:                                              ; preds = %77
  %107 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %108 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %107, i32 0, i32 9
  store i64 0, i64* %108, align 8
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @SYS_RES_MEMORY, align 4
  %111 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %112 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %111, i32 0, i32 9
  %113 = load i32, i32* @RF_ACTIVE, align 4
  %114 = call i32* @bus_alloc_resource_any(i32 %109, i32 %110, i64* %112, i32 %113)
  %115 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %116 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %115, i32 0, i32 8
  store i32* %114, i32** %116, align 8
  %117 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %118 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %117, i32 0, i32 8
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %129

121:                                              ; preds = %106
  %122 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %123 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i32, i8*, ...) @device_printf(i32 %124, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @cpsw_detach(i32 %126)
  %128 = load i32, i32* @ENXIO, align 4
  store i32 %128, i32* %2, align 4
  br label %291

129:                                              ; preds = %106
  %130 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %131 = load i32, i32* @CPSW_SS_IDVER, align 4
  %132 = call i32 @cpsw_read_4(%struct.cpsw_softc* %130, i32 %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %3, align 4
  %134 = load i32, i32* %7, align 4
  %135 = ashr i32 %134, 8
  %136 = and i32 %135, 7
  %137 = load i32, i32* %7, align 4
  %138 = and i32 %137, 255
  %139 = load i32, i32* %7, align 4
  %140 = ashr i32 %139, 11
  %141 = and i32 %140, 31
  %142 = call i32 (i32, i8*, ...) @device_printf(i32 %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %136, i32 %138, i32 %141)
  %143 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %144 = call i32 @cpsw_add_sysctls(%struct.cpsw_softc* %143)
  %145 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %146 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @bus_get_dma_tag(i32 %147)
  %149 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %150 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %151 = load i32, i32* @MCLBYTES, align 4
  %152 = load i32, i32* @CPSW_TXFRAGS, align 4
  %153 = load i32, i32* @MCLBYTES, align 4
  %154 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %155 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %154, i32 0, i32 6
  %156 = call i32 @bus_dma_tag_create(i32 %148, i32 1, i32 0, i32 %149, i32 %150, i32* null, i32* null, i32 %151, i32 %152, i32 %153, i32 0, i32* null, i32* null, i32* %155)
  store i32 %156, i32* %4, align 4
  %157 = load i32, i32* %4, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %129
  %160 = load i32, i32* %3, align 4
  %161 = call i32 (i32, i8*, ...) @device_printf(i32 %160, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %162 = load i32, i32* %3, align 4
  %163 = call i32 @cpsw_detach(i32 %162)
  %164 = load i32, i32* %4, align 4
  store i32 %164, i32* %2, align 4
  br label %291

165:                                              ; preds = %129
  %166 = load i32, i32* @ETHER_MIN_LEN, align 4
  %167 = load i32, i32* @M_DEVBUF, align 4
  %168 = load i32, i32* @M_WAITOK, align 4
  %169 = load i32, i32* @M_ZERO, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @malloc(i32 %166, i32 %167, i32 %170)
  %172 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %173 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %172, i32 0, i32 5
  store i32 %171, i32* %173, align 8
  %174 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %175 = call i32 @cpsw_init_slots(%struct.cpsw_softc* %174)
  %176 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %177 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 3
  %179 = call i32 @STAILQ_INIT(i32* %178)
  %180 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %181 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 2
  %183 = call i32 @STAILQ_INIT(i32* %182)
  %184 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %185 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 3
  %187 = call i32 @STAILQ_INIT(i32* %186)
  %188 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %189 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 2
  %191 = call i32 @STAILQ_INIT(i32* %190)
  %192 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %193 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %194 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %193, i32 0, i32 4
  %195 = call i64 @cpsw_add_slots(%struct.cpsw_softc* %192, %struct.TYPE_6__* %194, i32 128)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %165
  %198 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %199 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %200 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %199, i32 0, i32 3
  %201 = call i64 @cpsw_add_slots(%struct.cpsw_softc* %198, %struct.TYPE_6__* %200, i32 -1)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %197, %165
  %204 = load i32, i32* %3, align 4
  %205 = call i32 (i32, i8*, ...) @device_printf(i32 %204, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %206 = load i32, i32* %3, align 4
  %207 = call i32 @cpsw_detach(i32 %206)
  %208 = load i32, i32* @ENOMEM, align 4
  store i32 %208, i32* %2, align 4
  br label %291

209:                                              ; preds = %197
  %210 = load i32, i32* %3, align 4
  %211 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %212 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %216 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 (i32, i8*, ...) @device_printf(i32 %210, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %214, i32 %218)
  %220 = call i32 @CPSW_CPDMA_TX_HDP(i32 0)
  %221 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %222 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  store i32 %220, i32* %223, align 4
  %224 = call i32 @CPSW_CPDMA_RX_HDP(i32 0)
  %225 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %226 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  store i32 %224, i32* %227, align 8
  %228 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %229 = call i32 @cpsw_intr_attach(%struct.cpsw_softc* %228)
  %230 = icmp eq i32 %229, -1
  br i1 %230, label %231, label %237

231:                                              ; preds = %209
  %232 = load i32, i32* %3, align 4
  %233 = call i32 (i32, i8*, ...) @device_printf(i32 %232, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %234 = load i32, i32* %3, align 4
  %235 = call i32 @cpsw_detach(i32 %234)
  %236 = load i32, i32* @ENXIO, align 4
  store i32 %236, i32* %2, align 4
  br label %291

237:                                              ; preds = %209
  %238 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %239 = call i32 @cpsw_reset(%struct.cpsw_softc* %238)
  %240 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %241 = call i32 @cpsw_init(%struct.cpsw_softc* %240)
  store i32 0, i32* %5, align 4
  br label %242

242:                                              ; preds = %283, %237
  %243 = load i32, i32* %5, align 4
  %244 = load i32, i32* @CPSW_PORTS, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %286

246:                                              ; preds = %242
  %247 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %248 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %258, label %251

251:                                              ; preds = %246
  %252 = load i32, i32* %5, align 4
  %253 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %254 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %252, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %251
  br label %283

258:                                              ; preds = %251, %246
  %259 = load i32, i32* %3, align 4
  %260 = load i32, i32* %5, align 4
  %261 = call i32* @device_add_child(i32 %259, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %260)
  %262 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %263 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %262, i32 0, i32 2
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %263, align 8
  %265 = load i32, i32* %5, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  store i32* %261, i32** %268, align 8
  %269 = load %struct.cpsw_softc*, %struct.cpsw_softc** %6, align 8
  %270 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %269, i32 0, i32 2
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %270, align 8
  %272 = load i32, i32* %5, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = icmp eq i32* %276, null
  br i1 %277, label %278, label %282

278:                                              ; preds = %258
  %279 = load i32, i32* %3, align 4
  %280 = call i32 @cpsw_detach(i32 %279)
  %281 = load i32, i32* @ENXIO, align 4
  store i32 %281, i32* %2, align 4
  br label %291

282:                                              ; preds = %258
  br label %283

283:                                              ; preds = %282, %257
  %284 = load i32, i32* %5, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %5, align 4
  br label %242

286:                                              ; preds = %242
  %287 = load i32, i32* %3, align 4
  %288 = call i32 @bus_generic_probe(i32 %287)
  %289 = load i32, i32* %3, align 4
  %290 = call i32 @bus_generic_attach(i32 %289)
  store i32 0, i32* %2, align 4
  br label %291

291:                                              ; preds = %286, %278, %231, %203, %159, %121, %100, %69
  %292 = load i32, i32* %2, align 4
  ret i32 %292
}

declare dso_local %struct.cpsw_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @getbinuptime(i32*) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i64 @cpsw_get_fdt_data(%struct.cpsw_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @cpsw_detach(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @cpsw_read_4(%struct.cpsw_softc*, i32) #1

declare dso_local i32 @cpsw_add_sysctls(%struct.cpsw_softc*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @cpsw_init_slots(%struct.cpsw_softc*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i64 @cpsw_add_slots(%struct.cpsw_softc*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @CPSW_CPDMA_TX_HDP(i32) #1

declare dso_local i32 @CPSW_CPDMA_RX_HDP(i32) #1

declare dso_local i32 @cpsw_intr_attach(%struct.cpsw_softc*) #1

declare dso_local i32 @cpsw_reset(%struct.cpsw_softc*) #1

declare dso_local i32 @cpsw_init(%struct.cpsw_softc*) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
