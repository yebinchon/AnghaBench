; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_ha.c_ctl_ha_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_ha.c_ctl_ha_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ha_softc = type { i64, i64, %struct.socket*, i64, i32*, i32, i64, i64 }
%struct.socket = type { i32, i32 }

@SO_RCV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ha_rx exit\00", align 1
@SO_SND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"reconnect\00", align 1
@hz = common dso_local global i32 0, align 4
@CTL_HA_CHAN_MAX = common dso_local global i32 0, align 4
@CTL_HA_EVT_LINK_CHANGE = common dso_local global i32 0, align 4
@CTL_HA_LINK_UNKNOWN = common dso_local global i32 0, align 4
@CTL_HA_LINK_OFFLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ha_softc*)* @ctl_ha_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_ha_close(%struct.ha_softc* %0) #0 {
  %2 = alloca %struct.ha_softc*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  store %struct.ha_softc* %0, %struct.ha_softc** %2, align 8
  %5 = load %struct.ha_softc*, %struct.ha_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %5, i32 0, i32 2
  %7 = load %struct.socket*, %struct.socket** %6, align 8
  store %struct.socket* %7, %struct.socket** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.ha_softc*, %struct.ha_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.ha_softc*, %struct.ha_softc** %2, align 8
  %14 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12, %1
  %18 = load %struct.ha_softc*, %struct.ha_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %18, i32 0, i32 6
  store i64 0, i64* %19, align 8
  %20 = load %struct.ha_softc*, %struct.ha_softc** %2, align 8
  %21 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %20, i32 0, i32 5
  %22 = call i32 @mbufq_drain(i32* %21)
  %23 = load %struct.ha_softc*, %struct.ha_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @m_freem(i32* %25)
  %27 = load %struct.ha_softc*, %struct.ha_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %27, i32 0, i32 4
  store i32* null, i32** %28, align 8
  store i32 1, i32* %4, align 4
  br label %29

29:                                               ; preds = %17, %12
  %30 = load %struct.socket*, %struct.socket** %3, align 8
  %31 = icmp ne %struct.socket* %30, null
  br i1 %31, label %32, label %80

32:                                               ; preds = %29
  %33 = load %struct.socket*, %struct.socket** %3, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 1
  %35 = call i32 @SOCKBUF_LOCK(i32* %34)
  %36 = load %struct.socket*, %struct.socket** %3, align 8
  %37 = load i32, i32* @SO_RCV, align 4
  %38 = call i32 @soupcall_clear(%struct.socket* %36, i32 %37)
  br label %39

39:                                               ; preds = %44, %32
  %40 = load %struct.ha_softc*, %struct.ha_softc** %2, align 8
  %41 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.ha_softc*, %struct.ha_softc** %2, align 8
  %46 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %45, i32 0, i32 3
  %47 = call i32 @wakeup(i64* %46)
  %48 = load %struct.ha_softc*, %struct.ha_softc** %2, align 8
  %49 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %48, i32 0, i32 3
  %50 = load %struct.socket*, %struct.socket** %3, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 1
  %52 = call i32 @SOCKBUF_MTX(i32* %51)
  %53 = call i32 @msleep(i64* %49, i32 %52, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %39

54:                                               ; preds = %39
  %55 = load %struct.socket*, %struct.socket** %3, align 8
  %56 = getelementptr inbounds %struct.socket, %struct.socket* %55, i32 0, i32 1
  %57 = call i32 @SOCKBUF_UNLOCK(i32* %56)
  %58 = load %struct.socket*, %struct.socket** %3, align 8
  %59 = getelementptr inbounds %struct.socket, %struct.socket* %58, i32 0, i32 0
  %60 = call i32 @SOCKBUF_LOCK(i32* %59)
  %61 = load %struct.socket*, %struct.socket** %3, align 8
  %62 = load i32, i32* @SO_SND, align 4
  %63 = call i32 @soupcall_clear(%struct.socket* %61, i32 %62)
  %64 = load %struct.socket*, %struct.socket** %3, align 8
  %65 = getelementptr inbounds %struct.socket, %struct.socket* %64, i32 0, i32 0
  %66 = call i32 @SOCKBUF_UNLOCK(i32* %65)
  %67 = load %struct.ha_softc*, %struct.ha_softc** %2, align 8
  %68 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %67, i32 0, i32 2
  store %struct.socket* null, %struct.socket** %68, align 8
  %69 = load %struct.ha_softc*, %struct.ha_softc** %2, align 8
  %70 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %54
  %74 = load i32, i32* @hz, align 4
  %75 = sdiv i32 %74, 2
  %76 = call i32 @pause(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %73, %54
  %78 = load %struct.socket*, %struct.socket** %3, align 8
  %79 = call i32 @soclose(%struct.socket* %78)
  br label %80

80:                                               ; preds = %77, %29
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %80
  %84 = load %struct.ha_softc*, %struct.ha_softc** %2, align 8
  %85 = load i32, i32* @CTL_HA_CHAN_MAX, align 4
  %86 = load i32, i32* @CTL_HA_EVT_LINK_CHANGE, align 4
  %87 = load %struct.ha_softc*, %struct.ha_softc** %2, align 8
  %88 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %83
  %92 = load %struct.ha_softc*, %struct.ha_softc** %2, align 8
  %93 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91, %83
  %97 = load i32, i32* @CTL_HA_LINK_UNKNOWN, align 4
  br label %100

98:                                               ; preds = %91
  %99 = load i32, i32* @CTL_HA_LINK_OFFLINE, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = call i32 @ctl_ha_evt(%struct.ha_softc* %84, i32 %85, i32 %86, i32 %101)
  br label %103

103:                                              ; preds = %100, %80
  ret void
}

declare dso_local i32 @mbufq_drain(i32*) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @SOCKBUF_LOCK(i32*) #1

declare dso_local i32 @soupcall_clear(%struct.socket*, i32) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @msleep(i64*, i32, i32, i8*, i32) #1

declare dso_local i32 @SOCKBUF_MTX(i32*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(i32*) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @soclose(%struct.socket*) #1

declare dso_local i32 @ctl_ha_evt(%struct.ha_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
