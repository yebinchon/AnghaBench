; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpswp_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpswp_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, %struct.cpswp_softc* }
%struct.cpswp_softc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ifreq = type { i32 }

@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"SIOCSIFFLAGS: UP & RUNNING (changed=0x%x)\00", align 1
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"SIOCSIFFLAGS: starting up\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"SIOCSIFFLAGS: shutting down\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @cpswp_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpswp_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.cpswp_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 3
  %13 = load %struct.cpswp_softc*, %struct.cpswp_softc** %12, align 8
  store %struct.cpswp_softc* %13, %struct.cpswp_softc** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to %struct.ifreq*
  store %struct.ifreq* %15, %struct.ifreq** %8, align 8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %156 [
    i32 130, label %17
    i32 129, label %53
    i32 133, label %141
    i32 132, label %144
    i32 131, label %147
    i32 128, label %147
  ]

17:                                               ; preds = %3
  %18 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %22 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = xor i32 %20, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @IFCAP_HWCSUM, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %17
  %30 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %31 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @IFCAP_HWCSUM, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = load i32, i32* @IFCAP_HWCSUM, align 4
  %40 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %51

44:                                               ; preds = %29
  %45 = load i32, i32* @IFCAP_HWCSUM, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %44, %38
  br label %52

52:                                               ; preds = %51, %17
  store i32 0, i32* %9, align 4
  br label %161

53:                                               ; preds = %3
  %54 = load %struct.cpswp_softc*, %struct.cpswp_softc** %7, align 8
  %55 = call i32 @CPSW_PORT_LOCK(%struct.cpswp_softc* %54)
  %56 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IFF_UP, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %118

62:                                               ; preds = %53
  %63 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %64 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %110

69:                                               ; preds = %62
  %70 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.cpswp_softc*, %struct.cpswp_softc** %7, align 8
  %74 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = xor i32 %72, %75
  store i32 %76, i32* %10, align 4
  %77 = load %struct.cpswp_softc*, %struct.cpswp_softc** %7, align 8
  %78 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 @CPSW_DEBUGF(i32 %79, i8* %82)
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @IFF_PROMISC, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %69
  %89 = load %struct.cpswp_softc*, %struct.cpswp_softc** %7, align 8
  %90 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %91 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IFF_PROMISC, align 4
  %94 = and i32 %92, %93
  %95 = call i32 @cpsw_set_promisc(%struct.cpswp_softc* %89, i32 %94)
  br label %96

96:                                               ; preds = %88, %69
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @IFF_ALLMULTI, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load %struct.cpswp_softc*, %struct.cpswp_softc** %7, align 8
  %103 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %104 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @IFF_ALLMULTI, align 4
  %107 = and i32 %105, %106
  %108 = call i32 @cpsw_set_allmulti(%struct.cpswp_softc* %102, i32 %107)
  br label %109

109:                                              ; preds = %101, %96
  br label %117

110:                                              ; preds = %62
  %111 = load %struct.cpswp_softc*, %struct.cpswp_softc** %7, align 8
  %112 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @CPSW_DEBUGF(i32 %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %115 = load %struct.cpswp_softc*, %struct.cpswp_softc** %7, align 8
  %116 = call i32 @cpswp_init_locked(%struct.cpswp_softc* %115)
  br label %117

117:                                              ; preds = %110, %109
  br label %133

118:                                              ; preds = %53
  %119 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %120 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %118
  %126 = load %struct.cpswp_softc*, %struct.cpswp_softc** %7, align 8
  %127 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @CPSW_DEBUGF(i32 %128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %130 = load %struct.cpswp_softc*, %struct.cpswp_softc** %7, align 8
  %131 = call i32 @cpswp_stop_locked(%struct.cpswp_softc* %130)
  br label %132

132:                                              ; preds = %125, %118
  br label %133

133:                                              ; preds = %132, %117
  %134 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %135 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.cpswp_softc*, %struct.cpswp_softc** %7, align 8
  %138 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.cpswp_softc*, %struct.cpswp_softc** %7, align 8
  %140 = call i32 @CPSW_PORT_UNLOCK(%struct.cpswp_softc* %139)
  br label %161

141:                                              ; preds = %3
  %142 = load %struct.cpswp_softc*, %struct.cpswp_softc** %7, align 8
  %143 = call i32 @cpswp_ale_update_addresses(%struct.cpswp_softc* %142, i32 0)
  br label %161

144:                                              ; preds = %3
  %145 = load %struct.cpswp_softc*, %struct.cpswp_softc** %7, align 8
  %146 = call i32 @cpswp_ale_update_addresses(%struct.cpswp_softc* %145, i32 1)
  br label %161

147:                                              ; preds = %3, %3
  %148 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %149 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %150 = load %struct.cpswp_softc*, %struct.cpswp_softc** %7, align 8
  %151 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %150, i32 0, i32 1
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @ifmedia_ioctl(%struct.ifnet* %148, %struct.ifreq* %149, i32* %153, i32 %154)
  store i32 %155, i32* %9, align 4
  br label %161

156:                                              ; preds = %3
  %157 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %158 = load i32, i32* %5, align 4
  %159 = load i64, i64* %6, align 8
  %160 = call i32 @ether_ioctl(%struct.ifnet* %157, i32 %158, i64 %159)
  store i32 %160, i32* %9, align 4
  br label %161

161:                                              ; preds = %156, %147, %144, %141, %133, %52
  %162 = load i32, i32* %9, align 4
  ret i32 %162
}

declare dso_local i32 @CPSW_PORT_LOCK(%struct.cpswp_softc*) #1

declare dso_local i32 @CPSW_DEBUGF(i32, i8*) #1

declare dso_local i32 @cpsw_set_promisc(%struct.cpswp_softc*, i32) #1

declare dso_local i32 @cpsw_set_allmulti(%struct.cpswp_softc*, i32) #1

declare dso_local i32 @cpswp_init_locked(%struct.cpswp_softc*) #1

declare dso_local i32 @cpswp_stop_locked(%struct.cpswp_softc*) #1

declare dso_local i32 @CPSW_PORT_UNLOCK(%struct.cpswp_softc*) #1

declare dso_local i32 @cpswp_ale_update_addresses(%struct.cpswp_softc*, i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
