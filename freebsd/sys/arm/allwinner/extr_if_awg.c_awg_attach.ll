; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awg_softc = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@compat_data = common dso_local global i32 0, align 4
@awg_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@awg_link_task = common dso_local global i32 0, align 4
@_RES_IRQ = common dso_local global i64 0, align 8
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@awg_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot setup interrupt handler\0A\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@awg_start = common dso_local global i32 0, align 4
@awg_ioctl = common dso_local global i32 0, align 4
@awg_init = common dso_local global i32 0, align 4
@TX_DESC_COUNT = common dso_local global i64 0, align 8
@CSUM_IP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@awg_media_change = common dso_local global i32 0, align 4
@awg_media_status = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_PHY_ANY = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@MIIF_DOPAUSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"cannot attach PHY\0A\00", align 1
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @awg_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @awg_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.awg_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.awg_softc* @device_get_softc(i32 %13)
  store %struct.awg_softc* %14, %struct.awg_softc** %6, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %17 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %16, i32 0, i32 8
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @compat_data, align 4
  %20 = call %struct.TYPE_2__* @ofw_bus_search_compatible(i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %24 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @awg_spec, align 4
  %27 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %28 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @bus_alloc_resources(i32 %25, i32 %26, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %198

36:                                               ; preds = %1
  %37 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %38 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %37, i32 0, i32 5
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @device_get_nameunit(i32 %39)
  %41 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %42 = load i32, i32* @MTX_DEF, align 4
  %43 = call i32 @mtx_init(i32* %38, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %45 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %44, i32 0, i32 6
  %46 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %47 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %46, i32 0, i32 5
  %48 = call i32 @callout_init_mtx(i32* %45, i32* %47, i32 0)
  %49 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %50 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %49, i32 0, i32 4
  %51 = load i32, i32* @awg_link_task, align 4
  %52 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %53 = call i32 @TASK_INIT(i32* %50, i32 0, i32 %51, %struct.awg_softc* %52)
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @awg_setup_extres(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %36
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %198

60:                                               ; preds = %36
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @awg_get_eaddr(i32 %61, i32* %12)
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @awg_reset(i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %198

69:                                               ; preds = %60
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @awg_setup_dma(i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %198

76:                                               ; preds = %69
  %77 = load i32, i32* %3, align 4
  %78 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %79 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @_RES_IRQ, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @INTR_TYPE_NET, align 4
  %85 = load i32, i32* @INTR_MPSAFE, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @awg_intr, align 4
  %88 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %89 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %90 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %89, i32 0, i32 2
  %91 = call i32 @bus_setup_intr(i32 %77, i32 %83, i32 %86, i32* null, i32 %87, %struct.awg_softc* %88, i32* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %76
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @device_printf(i32 %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %198

98:                                               ; preds = %76
  %99 = load i32, i32* @IFT_ETHER, align 4
  %100 = call i32 @if_alloc(i32 %99)
  %101 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %102 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %104 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %107 = call i32 @if_setsoftc(i32 %105, %struct.awg_softc* %106)
  %108 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %109 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @device_get_name(i32 %111)
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @device_get_unit(i32 %113)
  %115 = call i32 @if_initname(i32 %110, i32 %112, i32 %114)
  %116 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %117 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @IFF_BROADCAST, align 4
  %120 = load i32, i32* @IFF_SIMPLEX, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @IFF_MULTICAST, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @if_setflags(i32 %118, i32 %123)
  %125 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %126 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @awg_start, align 4
  %129 = call i32 @if_setstartfn(i32 %127, i32 %128)
  %130 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %131 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @awg_ioctl, align 4
  %134 = call i32 @if_setioctlfn(i32 %132, i32 %133)
  %135 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %136 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @awg_init, align 4
  %139 = call i32 @if_setinitfn(i32 %137, i32 %138)
  %140 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %141 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i64, i64* @TX_DESC_COUNT, align 8
  %144 = sub nsw i64 %143, 1
  %145 = call i32 @if_setsendqlen(i32 %142, i64 %144)
  %146 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %147 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @if_setsendqready(i32 %148)
  %150 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %151 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @CSUM_IP, align 4
  %154 = load i32, i32* @CSUM_UDP, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @CSUM_TCP, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @if_sethwassist(i32 %152, i32 %157)
  %159 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %160 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %163 = load i32, i32* @IFCAP_HWCSUM, align 4
  %164 = or i32 %162, %163
  %165 = call i32 @if_setcapabilities(i32 %161, i32 %164)
  %166 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %167 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %170 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @if_getcapabilities(i32 %171)
  %173 = call i32 @if_setcapenable(i32 %168, i32 %172)
  %174 = load i32, i32* %3, align 4
  %175 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %176 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %175, i32 0, i32 1
  %177 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %178 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @awg_media_change, align 4
  %181 = load i32, i32* @awg_media_status, align 4
  %182 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %183 = load i32, i32* @MII_PHY_ANY, align 4
  %184 = load i32, i32* @MII_OFFSET_ANY, align 4
  %185 = load i32, i32* @MIIF_DOPAUSE, align 4
  %186 = call i32 @mii_attach(i32 %174, i32* %176, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185)
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %98
  %190 = load i32, i32* %3, align 4
  %191 = call i32 @device_printf(i32 %190, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %192 = load i32, i32* %7, align 4
  store i32 %192, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %198

193:                                              ; preds = %98
  %194 = load %struct.awg_softc*, %struct.awg_softc** %6, align 8
  %195 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @ether_ifattach(i32 %196, i32* %12)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %198

198:                                              ; preds = %193, %189, %94, %74, %67, %58, %32
  %199 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %199)
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.awg_softc* @device_get_softc(i32) #2

declare dso_local %struct.TYPE_2__* @ofw_bus_search_compatible(i32, i32) #2

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #2

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.awg_softc*) #2

declare dso_local i32 @awg_setup_extres(i32) #2

declare dso_local i32 @awg_get_eaddr(i32, i32*) #2

declare dso_local i32 @awg_reset(i32) #2

declare dso_local i32 @awg_setup_dma(i32) #2

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.awg_softc*, i32*) #2

declare dso_local i32 @if_alloc(i32) #2

declare dso_local i32 @if_setsoftc(i32, %struct.awg_softc*) #2

declare dso_local i32 @if_initname(i32, i32, i32) #2

declare dso_local i32 @device_get_name(i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i32 @if_setflags(i32, i32) #2

declare dso_local i32 @if_setstartfn(i32, i32) #2

declare dso_local i32 @if_setioctlfn(i32, i32) #2

declare dso_local i32 @if_setinitfn(i32, i32) #2

declare dso_local i32 @if_setsendqlen(i32, i64) #2

declare dso_local i32 @if_setsendqready(i32) #2

declare dso_local i32 @if_sethwassist(i32, i32) #2

declare dso_local i32 @if_setcapabilities(i32, i32) #2

declare dso_local i32 @if_setcapenable(i32, i32) #2

declare dso_local i32 @if_getcapabilities(i32) #2

declare dso_local i32 @mii_attach(i32, i32*, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ether_ifattach(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
