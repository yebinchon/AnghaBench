; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, %struct.fv_softc* }
%struct.TYPE_3__ = type { i32 }
%struct.fv_softc = type { i32*, i32, i32, i32*, i32, i32, i32, i32, %struct.ifnet*, i32*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"local-mac-address\00", align 1
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@fv_link_task = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"couldn't map memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"couldn't map interrupt\0A\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"couldn't allocate ifnet structure\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@fv_ioctl = common dso_local global i32 0, align 4
@fv_start = common dso_local global i32 0, align 4
@fv_init = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@CSR_BUSMODE = common dso_local global i32 0, align 4
@BUSMODE_SWR = common dso_local global i32 0, align 4
@fv_ifmedia_upd = common dso_local global i32 0, align 4
@fv_ifmedia_sts = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@fv_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"couldn't set up irq\0A\00", align 1
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@MII_PHY_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fv_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fv_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.fv_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.fv_softc* @device_get_softc(i32 %9)
  store %struct.fv_softc* %10, %struct.fv_softc** %4, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @device_get_unit(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %15 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @ofw_bus_get_node(i32 %16)
  %18 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %19 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %18, i32 0, i32 15
  store i32 %17, i32* %19, align 4
  %20 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %21 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %20, i32 0, i32 15
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %24 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %23, i32 0, i32 0
  %25 = bitcast i32** %24 to i8*
  %26 = call i32 @OF_getprop(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %25, i32 6)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 6
  br i1 %28, label %29, label %54

29:                                               ; preds = %1
  %30 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %31 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %35 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 12, i32* %37, align 4
  %38 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %39 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32 66, i32* %41, align 4
  %42 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %43 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  store i32 9, i32* %45, align 4
  %46 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %47 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  store i32 94, i32* %49, align 4
  %50 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %51 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  store i32 107, i32* %53, align 4
  br label %54

54:                                               ; preds = %29, %1
  %55 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %56 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %55, i32 0, i32 13
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @device_get_nameunit(i32 %57)
  %59 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %60 = load i32, i32* @MTX_DEF, align 4
  %61 = call i32 @mtx_init(i32* %56, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %63 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %62, i32 0, i32 14
  %64 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %65 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %64, i32 0, i32 13
  %66 = call i32 @callout_init_mtx(i32* %63, i32* %65, i32 0)
  %67 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %68 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %67, i32 0, i32 12
  %69 = load i32, i32* @fv_link_task, align 4
  %70 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %71 = call i32 @TASK_INIT(i32* %68, i32 0, i32 %69, %struct.fv_softc* %70)
  %72 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %73 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %72, i32 0, i32 1
  store i32 0, i32* %73, align 8
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @SYS_RES_MEMORY, align 4
  %76 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %77 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %76, i32 0, i32 1
  %78 = load i32, i32* @RF_ACTIVE, align 4
  %79 = load i32, i32* @RF_SHAREABLE, align 4
  %80 = or i32 %78, %79
  %81 = call i8* @bus_alloc_resource_any(i32 %74, i32 %75, i32* %77, i32 %80)
  %82 = bitcast i8* %81 to i32*
  %83 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %84 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %83, i32 0, i32 9
  store i32* %82, i32** %84, align 8
  %85 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %86 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %85, i32 0, i32 9
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %54
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @device_printf(i32 %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @ENXIO, align 4
  store i32 %92, i32* %5, align 4
  br label %229

93:                                               ; preds = %54
  %94 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %95 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %94, i32 0, i32 9
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @rman_get_bustag(i32* %96)
  %98 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %99 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %98, i32 0, i32 11
  store i32 %97, i32* %99, align 4
  %100 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %101 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %100, i32 0, i32 9
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @rman_get_bushandle(i32* %102)
  %104 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %105 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %104, i32 0, i32 10
  store i32 %103, i32* %105, align 8
  store i32 0, i32* %6, align 4
  %106 = load i32, i32* %2, align 4
  %107 = load i32, i32* @SYS_RES_IRQ, align 4
  %108 = load i32, i32* @RF_SHAREABLE, align 4
  %109 = load i32, i32* @RF_ACTIVE, align 4
  %110 = or i32 %108, %109
  %111 = call i8* @bus_alloc_resource_any(i32 %106, i32 %107, i32* %6, i32 %110)
  %112 = bitcast i8* %111 to i32*
  %113 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %114 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %113, i32 0, i32 3
  store i32* %112, i32** %114, align 8
  %115 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %116 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %93
  %120 = load i32, i32* %2, align 4
  %121 = call i32 @device_printf(i32 %120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32, i32* @ENXIO, align 4
  store i32 %122, i32* %5, align 4
  br label %229

123:                                              ; preds = %93
  %124 = load i32, i32* @IFT_ETHER, align 4
  %125 = call %struct.ifnet* @if_alloc(i32 %124)
  %126 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %127 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %126, i32 0, i32 8
  store %struct.ifnet* %125, %struct.ifnet** %127, align 8
  store %struct.ifnet* %125, %struct.ifnet** %3, align 8
  %128 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %129 = icmp eq %struct.ifnet* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = load i32, i32* %2, align 4
  %132 = call i32 @device_printf(i32 %131, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %133 = load i32, i32* @ENOSPC, align 4
  store i32 %133, i32* %5, align 4
  br label %229

134:                                              ; preds = %123
  %135 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %136 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %137 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %136, i32 0, i32 7
  store %struct.fv_softc* %135, %struct.fv_softc** %137, align 8
  %138 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %139 = load i32, i32* %2, align 4
  %140 = call i32 @device_get_name(i32 %139)
  %141 = load i32, i32* %2, align 4
  %142 = call i32 @device_get_unit(i32 %141)
  %143 = call i32 @if_initname(%struct.ifnet* %138, i32 %140, i32 %142)
  %144 = load i32, i32* @IFF_BROADCAST, align 4
  %145 = load i32, i32* @IFF_SIMPLEX, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @IFF_MULTICAST, align 4
  %148 = or i32 %146, %147
  %149 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %150 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* @fv_ioctl, align 4
  %152 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %153 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %152, i32 0, i32 6
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* @fv_start, align 4
  %155 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %156 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* @fv_init, align 4
  %158 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %159 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 8
  %160 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %161 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %160, i32 0, i32 3
  %162 = load i32, i32* @ifqmaxlen, align 4
  %163 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__* %161, i32 %162)
  %164 = load i32, i32* @ifqmaxlen, align 4
  %165 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %166 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  store i32 %164, i32* %167, align 4
  %168 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %169 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %168, i32 0, i32 3
  %170 = call i32 @IFQ_SET_READY(%struct.TYPE_3__* %169)
  %171 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %172 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %175 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  %176 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %177 = call i64 @fv_dma_alloc(%struct.fv_softc* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %134
  %180 = load i32, i32* @ENXIO, align 4
  store i32 %180, i32* %5, align 4
  br label %229

181:                                              ; preds = %134
  %182 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %183 = load i32, i32* @CSR_BUSMODE, align 4
  %184 = load i32, i32* @BUSMODE_SWR, align 4
  %185 = call i32 @CSR_WRITE_4(%struct.fv_softc* %182, i32 %183, i32 %184)
  %186 = call i32 @DELAY(i32 1000)
  %187 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %188 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %187, i32 0, i32 4
  %189 = load i32, i32* @fv_ifmedia_upd, align 4
  %190 = load i32, i32* @fv_ifmedia_sts, align 4
  %191 = call i32 @ifmedia_init(i32* %188, i32 0, i32 %189, i32 %190)
  %192 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %193 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %192, i32 0, i32 4
  %194 = load i32, i32* @IFM_ETHER, align 4
  %195 = load i32, i32* @IFM_AUTO, align 4
  %196 = or i32 %194, %195
  %197 = call i32 @ifmedia_add(i32* %193, i32 %196, i32 0, i32* null)
  %198 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %199 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %198, i32 0, i32 4
  %200 = load i32, i32* @IFM_ETHER, align 4
  %201 = load i32, i32* @IFM_AUTO, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @ifmedia_set(i32* %199, i32 %202)
  %204 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %205 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %206 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = call i32 @ether_ifattach(%struct.ifnet* %204, i32* %207)
  %209 = load i32, i32* %2, align 4
  %210 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %211 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %210, i32 0, i32 3
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* @INTR_TYPE_NET, align 4
  %214 = load i32, i32* @INTR_MPSAFE, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* @fv_intr, align 4
  %217 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %218 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %219 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %218, i32 0, i32 2
  %220 = call i32 @bus_setup_intr(i32 %209, i32* %212, i32 %215, i32* null, i32 %216, %struct.fv_softc* %217, i32* %219)
  store i32 %220, i32* %5, align 4
  %221 = load i32, i32* %5, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %181
  %224 = load i32, i32* %2, align 4
  %225 = call i32 @device_printf(i32 %224, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %226 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %227 = call i32 @ether_ifdetach(%struct.ifnet* %226)
  br label %229

228:                                              ; preds = %181
  br label %229

229:                                              ; preds = %228, %223, %179, %130, %119, %89
  %230 = load i32, i32* %5, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load i32, i32* %2, align 4
  %234 = call i32 @fv_detach(i32 %233)
  br label %235

235:                                              ; preds = %232, %229
  %236 = load i32, i32* %5, align 4
  ret i32 %236
}

declare dso_local %struct.fv_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.fv_softc*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_3__*) #1

declare dso_local i64 @fv_dma_alloc(%struct.fv_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.fv_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(i32*, i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.fv_softc*, i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @fv_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
