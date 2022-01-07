; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_softc = type { i64, i32, i32*, i32, %struct.ifnet*, i32*, i32, i32, i32, i32, i32 }
%struct.ifnet = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.emac_softc* }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unable to map memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot allocate IRQ resources.\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"process_limit\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_hw_emac_proc_limit = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"max number of Rx events to process\00", align 1
@EMAC_PROC_DEFAULT = common dso_local global i8* null, align 8
@EMAC_PROC_MIN = common dso_local global i64 0, align 8
@EMAC_PROC_MAX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [53 x i8] c"process_limit value out of range; using default: %d\0A\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"unable to allocate ifp\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@emac_ifmedia_upd = common dso_local global i32 0, align 4
@emac_ifmedia_sts = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_PHY_ANY = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"PHY probe failed\0A\00", align 1
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@emac_start = common dso_local global i32 0, align 4
@emac_ioctl = common dso_local global i32 0, align 4
@emac_init = common dso_local global i32 0, align 4
@IFQ_MAXLEN = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@emac_intr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"could not set up interrupt handler.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @emac_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.emac_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call %struct.emac_softc* @device_get_softc(i32 %13)
  store %struct.emac_softc* %14, %struct.emac_softc** %3, align 8
  %15 = load i32, i32* %2, align 4
  %16 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %17 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %16, i32 0, i32 10
  store i32 %15, i32* %17, align 8
  store i32 0, i32* %5, align 4
  %18 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %19 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %18, i32 0, i32 8
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @device_get_nameunit(i32 %20)
  %22 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %23 = load i32, i32* @MTX_DEF, align 4
  %24 = call i32 @mtx_init(i32* %19, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %26 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %25, i32 0, i32 9
  %27 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %28 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %27, i32 0, i32 8
  %29 = call i32 @callout_init_mtx(i32* %26, i32* %28, i32 0)
  store i32 0, i32* %6, align 4
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @SYS_RES_MEMORY, align 4
  %32 = load i32, i32* @RF_ACTIVE, align 4
  %33 = call i8* @bus_alloc_resource_any(i32 %30, i32 %31, i32* %6, i32 %32)
  %34 = bitcast i8* %33 to i32*
  %35 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %36 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %35, i32 0, i32 5
  store i32* %34, i32** %36, align 8
  %37 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %38 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = load i32, i32* %2, align 4
  %43 = call i32 (i32, i8*, ...) @device_printf(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %5, align 4
  br label %224

45:                                               ; preds = %1
  %46 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %47 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @rman_get_bustag(i32* %48)
  %50 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %51 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 4
  %52 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %53 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @rman_get_bushandle(i32* %54)
  %56 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %57 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  store i32 0, i32* %6, align 4
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @SYS_RES_IRQ, align 4
  %60 = load i32, i32* @RF_SHAREABLE, align 4
  %61 = load i32, i32* @RF_ACTIVE, align 4
  %62 = or i32 %60, %61
  %63 = call i8* @bus_alloc_resource_any(i32 %58, i32 %59, i32* %6, i32 %62)
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %66 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %65, i32 0, i32 2
  store i32* %64, i32** %66, align 8
  %67 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %68 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %45
  %72 = load i32, i32* %2, align 4
  %73 = call i32 (i32, i8*, ...) @device_printf(i32 %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %5, align 4
  br label %224

75:                                               ; preds = %45
  %76 = load i32, i32* %2, align 4
  %77 = call i32 @device_get_sysctl_ctx(i32 %76)
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @device_get_sysctl_tree(i32 %78)
  %80 = call i32 @SYSCTL_CHILDREN(i32 %79)
  %81 = load i32, i32* @OID_AUTO, align 4
  %82 = load i32, i32* @CTLTYPE_INT, align 4
  %83 = load i32, i32* @CTLFLAG_RW, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %86 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %85, i32 0, i32 0
  %87 = load i32, i32* @sysctl_hw_emac_proc_limit, align 4
  %88 = call i32 @SYSCTL_ADD_PROC(i32 %77, i32 %80, i32 %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %84, i64* %86, i32 0, i32 %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i8*, i8** @EMAC_PROC_DEFAULT, align 8
  %90 = ptrtoint i8* %89 to i64
  %91 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %92 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load i32, i32* %2, align 4
  %94 = call i32 @device_get_name(i32 %93)
  %95 = load i32, i32* %2, align 4
  %96 = call i32 @device_get_unit(i32 %95)
  %97 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %98 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %97, i32 0, i32 0
  %99 = call i32 @resource_int_value(i32 %94, i32 %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64* %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %75
  %103 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %104 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @EMAC_PROC_MIN, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %110 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @EMAC_PROC_MAX, align 8
  %113 = icmp sgt i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %108, %102
  %115 = load i32, i32* %2, align 4
  %116 = load i8*, i8** @EMAC_PROC_DEFAULT, align 8
  %117 = call i32 (i32, i8*, ...) @device_printf(i32 %115, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i8* %116)
  %118 = load i8*, i8** @EMAC_PROC_DEFAULT, align 8
  %119 = ptrtoint i8* %118 to i64
  %120 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %121 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %114, %108
  br label %123

123:                                              ; preds = %122, %75
  %124 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %125 = call i32 @emac_sys_setup(%struct.emac_softc* %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %224

129:                                              ; preds = %123
  %130 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %131 = call i32 @emac_reset(%struct.emac_softc* %130)
  %132 = load i32, i32* @IFT_ETHER, align 4
  %133 = call %struct.ifnet* @if_alloc(i32 %132)
  %134 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %135 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %134, i32 0, i32 4
  store %struct.ifnet* %133, %struct.ifnet** %135, align 8
  store %struct.ifnet* %133, %struct.ifnet** %4, align 8
  %136 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %137 = icmp eq %struct.ifnet* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %129
  %139 = load i32, i32* %2, align 4
  %140 = call i32 (i32, i8*, ...) @device_printf(i32 %139, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %141 = load i32, i32* @ENOSPC, align 4
  store i32 %141, i32* %5, align 4
  br label %224

142:                                              ; preds = %129
  %143 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %144 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %145 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %144, i32 0, i32 8
  store %struct.emac_softc* %143, %struct.emac_softc** %145, align 8
  %146 = load i32, i32* %2, align 4
  %147 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %148 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %147, i32 0, i32 3
  %149 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %150 = load i32, i32* @emac_ifmedia_upd, align 4
  %151 = load i32, i32* @emac_ifmedia_sts, align 4
  %152 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %153 = load i32, i32* @MII_PHY_ANY, align 4
  %154 = load i32, i32* @MII_OFFSET_ANY, align 4
  %155 = call i32 @mii_attach(i32 %146, i32* %148, %struct.ifnet* %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 0)
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %5, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %142
  %159 = load i32, i32* %2, align 4
  %160 = call i32 (i32, i8*, ...) @device_printf(i32 %159, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %224

161:                                              ; preds = %142
  %162 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %163 = load i32, i32* %2, align 4
  %164 = call i32 @device_get_name(i32 %163)
  %165 = load i32, i32* %2, align 4
  %166 = call i32 @device_get_unit(i32 %165)
  %167 = call i32 @if_initname(%struct.ifnet* %162, i32 %164, i32 %166)
  %168 = load i32, i32* @IFF_BROADCAST, align 4
  %169 = load i32, i32* @IFF_SIMPLEX, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @IFF_MULTICAST, align 4
  %172 = or i32 %170, %171
  %173 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %174 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = load i32, i32* @emac_start, align 4
  %176 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %177 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %176, i32 0, i32 7
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* @emac_ioctl, align 4
  %179 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %180 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %179, i32 0, i32 6
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* @emac_init, align 4
  %182 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %183 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 4
  %184 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %185 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %184, i32 0, i32 4
  %186 = load i32, i32* @IFQ_MAXLEN, align 4
  %187 = call i32 @IFQ_SET_MAXLEN(i32* %185, i32 %186)
  %188 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %189 = call i32 @emac_get_hwaddr(%struct.emac_softc* %188, i32* %12)
  %190 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %191 = call i32 @ether_ifattach(%struct.ifnet* %190, i32* %12)
  %192 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %193 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %194 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 8
  %197 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %198 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %201 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %200, i32 0, i32 3
  store i32 %199, i32* %201, align 4
  %202 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %203 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %202, i32 0, i32 1
  store i32 4, i32* %203, align 4
  %204 = load i32, i32* %2, align 4
  %205 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %206 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* @INTR_TYPE_NET, align 4
  %209 = load i32, i32* @INTR_MPSAFE, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @emac_intr, align 4
  %212 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %213 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %214 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %213, i32 0, i32 1
  %215 = call i32 @bus_setup_intr(i32 %204, i32* %207, i32 %210, i32* null, i32 %211, %struct.emac_softc* %212, i32* %214)
  store i32 %215, i32* %5, align 4
  %216 = load i32, i32* %5, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %161
  %219 = load i32, i32* %2, align 4
  %220 = call i32 (i32, i8*, ...) @device_printf(i32 %219, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %221 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %222 = call i32 @ether_ifdetach(%struct.ifnet* %221)
  br label %224

223:                                              ; preds = %161
  br label %224

224:                                              ; preds = %223, %218, %158, %138, %128, %71, %41
  %225 = load i32, i32* %5, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load i32, i32* %2, align 4
  %229 = call i32 @emac_detach(i32 %228)
  br label %230

230:                                              ; preds = %227, %224
  %231 = load i32, i32* %5, align 4
  %232 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %232)
  ret i32 %231
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.emac_softc* @device_get_softc(i32) #2

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #2

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @rman_get_bustag(i32*) #2

declare dso_local i32 @rman_get_bushandle(i32*) #2

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, i64*, i32, i32, i8*, i8*) #2

declare dso_local i32 @device_get_sysctl_ctx(i32) #2

declare dso_local i32 @SYSCTL_CHILDREN(i32) #2

declare dso_local i32 @device_get_sysctl_tree(i32) #2

declare dso_local i32 @resource_int_value(i32, i32, i8*, i64*) #2

declare dso_local i32 @device_get_name(i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i32 @emac_sys_setup(%struct.emac_softc*) #2

declare dso_local i32 @emac_reset(%struct.emac_softc*) #2

declare dso_local %struct.ifnet* @if_alloc(i32) #2

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #2

declare dso_local i32 @IFQ_SET_MAXLEN(i32*, i32) #2

declare dso_local i32 @emac_get_hwaddr(%struct.emac_softc*, i32*) #2

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #2

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.emac_softc*, i32*) #2

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #2

declare dso_local i32 @emac_detach(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
