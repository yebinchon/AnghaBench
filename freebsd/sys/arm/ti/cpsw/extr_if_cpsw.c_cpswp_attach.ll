; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpswp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpswp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, %struct.TYPE_9__, i32, i32, i32, %struct.cpswp_softc* }
%struct.TYPE_9__ = type { i32 }
%struct.cpswp_softc = type { i64, i32, i32, i32, %struct.ifnet*, i32, %struct.TYPE_8__*, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@MDIOUSERPHYSEL0 = common dso_local global i32 0, align 4
@MDIOUSERACCESS0 = common dso_local global i32 0, align 4
@MDIOUSERPHYSEL1 = common dso_local global i32 0, align 4
@MDIOUSERACCESS1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cpsw port lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@cpswp_init = common dso_local global i32 0, align 4
@cpswp_start = common dso_local global i32 0, align 4
@cpswp_ioctl = common dso_local global i32 0, align 4
@SCM_MAC_ID0_HI = common dso_local global i64 0, align 8
@SCM_MAC_ID0_LO = common dso_local global i64 0, align 8
@cpswp_ifmedia_upd = common dso_local global i32 0, align 4
@cpswp_ifmedia_sts = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@MDIO_PHYSEL_LINKINTENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cpswp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpswp_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.cpswp_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i8* @device_get_softc(i32 %15)
  %17 = bitcast i8* %16 to %struct.cpswp_softc*
  store %struct.cpswp_softc* %17, %struct.cpswp_softc** %6, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %20 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %19, i32 0, i32 9
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_get_parent(i32 %21)
  %23 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %24 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %23, i32 0, i32 12
  store i32 %22, i32* %24, align 4
  %25 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %26 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %25, i32 0, i32 12
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @device_get_softc(i32 %27)
  %29 = bitcast i8* %28 to %struct.TYPE_8__*
  %30 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %31 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %30, i32 0, i32 6
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @device_get_unit(i32 %32)
  %34 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %35 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %37 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %36, i32 0, i32 6
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %42 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %48 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %50 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %49, i32 0, i32 6
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %55 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %61 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %63 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %62, i32 0, i32 6
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %1
  %69 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %70 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %75 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, 1
  %78 = trunc i64 %77 to i32
  %79 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %80 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %73, %68, %1
  %82 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %83 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load i32, i32* @MDIOUSERPHYSEL0, align 4
  %88 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %89 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @MDIOUSERACCESS0, align 4
  %91 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %92 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %91, i32 0, i32 11
  store i32 %90, i32* %92, align 8
  br label %100

93:                                               ; preds = %81
  %94 = load i32, i32* @MDIOUSERPHYSEL1, align 4
  %95 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %96 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @MDIOUSERACCESS1, align 4
  %98 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %99 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %98, i32 0, i32 11
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %93, %86
  %101 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %102 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %101, i32 0, i32 10
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @device_get_nameunit(i32 %103)
  %105 = load i32, i32* @MTX_DEF, align 4
  %106 = call i32 @mtx_init(i32* %102, i32 %104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @IFT_ETHER, align 4
  %108 = call %struct.ifnet* @if_alloc(i32 %107)
  %109 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %110 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %109, i32 0, i32 4
  store %struct.ifnet* %108, %struct.ifnet** %110, align 8
  store %struct.ifnet* %108, %struct.ifnet** %5, align 8
  %111 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %112 = icmp eq %struct.ifnet* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %100
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @cpswp_detach(i32 %114)
  %116 = load i32, i32* @ENXIO, align 4
  store i32 %116, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %259

117:                                              ; preds = %100
  %118 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %119 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %120 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @device_get_name(i32 %121)
  %123 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %124 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i32 @if_initname(%struct.ifnet* %118, i32 %122, i32 %126)
  %128 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %129 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %130 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %129, i32 0, i32 7
  store %struct.cpswp_softc* %128, %struct.cpswp_softc** %130, align 8
  %131 = load i32, i32* @IFF_SIMPLEX, align 4
  %132 = load i32, i32* @IFF_MULTICAST, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @IFF_BROADCAST, align 4
  %135 = or i32 %133, %134
  %136 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %137 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %139 = load i32, i32* @IFCAP_HWCSUM, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %142 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %144 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %147 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* @cpswp_init, align 4
  %149 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %150 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %149, i32 0, i32 6
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* @cpswp_start, align 4
  %152 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %153 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %152, i32 0, i32 5
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @cpswp_ioctl, align 4
  %155 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %156 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 8
  %157 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %158 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %157, i32 0, i32 6
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %164 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  store i32 %162, i32* %165, align 4
  %166 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %167 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %166, i32 0, i32 3
  %168 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %169 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_9__* %167, i32 %171)
  %173 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %174 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %173, i32 0, i32 3
  %175 = call i32 @IFQ_SET_READY(%struct.TYPE_9__* %174)
  %176 = load i64, i64* @SCM_MAC_ID0_HI, align 8
  %177 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %178 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = mul i64 %179, 8
  %181 = add i64 %176, %180
  %182 = call i32 @ti_scm_reg_read_4(i64 %181, i32* %7)
  %183 = load i32, i32* %7, align 4
  %184 = and i32 %183, 255
  %185 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %184, i32* %185, align 16
  %186 = load i32, i32* %7, align 4
  %187 = ashr i32 %186, 8
  %188 = and i32 %187, 255
  %189 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 %188, i32* %189, align 4
  %190 = load i32, i32* %7, align 4
  %191 = ashr i32 %190, 16
  %192 = and i32 %191, 255
  %193 = getelementptr inbounds i32, i32* %14, i64 2
  store i32 %192, i32* %193, align 8
  %194 = load i32, i32* %7, align 4
  %195 = ashr i32 %194, 24
  %196 = and i32 %195, 255
  %197 = getelementptr inbounds i32, i32* %14, i64 3
  store i32 %196, i32* %197, align 4
  %198 = load i64, i64* @SCM_MAC_ID0_LO, align 8
  %199 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %200 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = mul i64 %201, 8
  %203 = add i64 %198, %202
  %204 = call i32 @ti_scm_reg_read_4(i64 %203, i32* %7)
  %205 = load i32, i32* %7, align 4
  %206 = and i32 %205, 255
  %207 = getelementptr inbounds i32, i32* %14, i64 4
  store i32 %206, i32* %207, align 16
  %208 = load i32, i32* %7, align 4
  %209 = ashr i32 %208, 8
  %210 = and i32 %209, 255
  %211 = getelementptr inbounds i32, i32* %14, i64 5
  store i32 %210, i32* %211, align 4
  %212 = load i32, i32* %3, align 4
  %213 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %214 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %213, i32 0, i32 7
  %215 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %216 = load i32, i32* @cpswp_ifmedia_upd, align 4
  %217 = load i32, i32* @cpswp_ifmedia_sts, align 4
  %218 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %219 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %220 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @MII_OFFSET_ANY, align 4
  %223 = call i32 @mii_attach(i32 %212, i32* %214, %struct.ifnet* %215, i32 %216, i32 %217, i32 %218, i32 %221, i32 %222, i32 0)
  store i32 %223, i32* %4, align 4
  %224 = load i32, i32* %4, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %117
  %227 = load i32, i32* %3, align 4
  %228 = call i32 @device_printf(i32 %227, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %229 = load i32, i32* %3, align 4
  %230 = call i32 @cpswp_detach(i32 %229)
  %231 = load i32, i32* %4, align 4
  store i32 %231, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %259

232:                                              ; preds = %117
  %233 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %234 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %233, i32 0, i32 7
  %235 = load i32, i32* %234, align 8
  %236 = call i8* @device_get_softc(i32 %235)
  %237 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %238 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %237, i32 0, i32 8
  store i8* %236, i8** %238, align 8
  %239 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %240 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %239, i32 0, i32 6
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %240, align 8
  %242 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %243 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @MDIO_PHYSEL_LINKINTENB, align 4
  %246 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %247 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = and i32 %248, 31
  %250 = or i32 %245, %249
  %251 = call i32 @cpsw_write_4(%struct.TYPE_8__* %241, i32 %244, i32 %250)
  %252 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %253 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %252, i32 0, i32 4
  %254 = load %struct.ifnet*, %struct.ifnet** %253, align 8
  %255 = call i32 @ether_ifattach(%struct.ifnet* %254, i32* %14)
  %256 = load %struct.cpswp_softc*, %struct.cpswp_softc** %6, align 8
  %257 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %256, i32 0, i32 3
  %258 = call i32 @callout_init(i32* %257, i32 0)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %259

259:                                              ; preds = %232, %226, %113
  %260 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %260)
  %261 = load i32, i32* %2, align 4
  ret i32 %261
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @device_get_softc(i32) #2

declare dso_local i32 @device_get_parent(i32) #2

declare dso_local i64 @device_get_unit(i32) #2

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local %struct.ifnet* @if_alloc(i32) #2

declare dso_local i32 @cpswp_detach(i32) #2

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #2

declare dso_local i32 @device_get_name(i32) #2

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_9__*) #2

declare dso_local i32 @ti_scm_reg_read_4(i64, i32*) #2

declare dso_local i32 @mii_attach(i32, i32*, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @cpsw_write_4(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #2

declare dso_local i32 @callout_init(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
