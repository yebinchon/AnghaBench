; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_ha.c_ctl_dt_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_ha.c_ctl_dt_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ha_softc = type { i32, i32 }
%struct.ctl_ha_dt_req = type { i64, i32, i32, i32*, i32 }
%struct.ha_dt_msg_wire = type { i64, i32, i32, i32 }

@ha_softc = common dso_local global %struct.ha_softc zeroinitializer, align 4
@CTL_HA_DT_CMD_READ = common dso_local global i64 0, align 8
@links = common dso_local global i32 0, align 4
@CTL_HA_CHAN_DATA = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@CTL_HA_STATUS_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_dt_single(%struct.ctl_ha_dt_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_ha_dt_req*, align 8
  %4 = alloca %struct.ha_softc*, align 8
  %5 = alloca %struct.ha_dt_msg_wire, align 8
  %6 = alloca i32, align 4
  store %struct.ctl_ha_dt_req* %0, %struct.ctl_ha_dt_req** %3, align 8
  store %struct.ha_softc* @ha_softc, %struct.ha_softc** %4, align 8
  %7 = load %struct.ctl_ha_dt_req*, %struct.ctl_ha_dt_req** %3, align 8
  %8 = getelementptr inbounds %struct.ctl_ha_dt_req, %struct.ctl_ha_dt_req* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.ha_dt_msg_wire, %struct.ha_dt_msg_wire* %5, i32 0, i32 0
  store i64 %9, i64* %10, align 8
  %11 = load %struct.ctl_ha_dt_req*, %struct.ctl_ha_dt_req** %3, align 8
  %12 = getelementptr inbounds %struct.ctl_ha_dt_req, %struct.ctl_ha_dt_req* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.ha_dt_msg_wire, %struct.ha_dt_msg_wire* %5, i32 0, i32 3
  store i32 %13, i32* %14, align 8
  %15 = load %struct.ctl_ha_dt_req*, %struct.ctl_ha_dt_req** %3, align 8
  %16 = getelementptr inbounds %struct.ctl_ha_dt_req, %struct.ctl_ha_dt_req* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.ha_dt_msg_wire, %struct.ha_dt_msg_wire* %5, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load %struct.ctl_ha_dt_req*, %struct.ctl_ha_dt_req** %3, align 8
  %20 = getelementptr inbounds %struct.ctl_ha_dt_req, %struct.ctl_ha_dt_req* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.ha_dt_msg_wire, %struct.ha_dt_msg_wire* %5, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = load %struct.ctl_ha_dt_req*, %struct.ctl_ha_dt_req** %3, align 8
  %24 = getelementptr inbounds %struct.ctl_ha_dt_req, %struct.ctl_ha_dt_req* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CTL_HA_DT_CMD_READ, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %1
  %29 = load %struct.ctl_ha_dt_req*, %struct.ctl_ha_dt_req** %3, align 8
  %30 = getelementptr inbounds %struct.ctl_ha_dt_req, %struct.ctl_ha_dt_req* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = load %struct.ha_softc*, %struct.ha_softc** %4, align 8
  %35 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %34, i32 0, i32 0
  %36 = call i32 @mtx_lock(i32* %35)
  %37 = load %struct.ha_softc*, %struct.ha_softc** %4, align 8
  %38 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %37, i32 0, i32 1
  %39 = load %struct.ctl_ha_dt_req*, %struct.ctl_ha_dt_req** %3, align 8
  %40 = load i32, i32* @links, align 4
  %41 = call i32 @TAILQ_INSERT_TAIL(i32* %38, %struct.ctl_ha_dt_req* %39, i32 %40)
  %42 = load %struct.ha_softc*, %struct.ha_softc** %4, align 8
  %43 = getelementptr inbounds %struct.ha_softc, %struct.ha_softc* %42, i32 0, i32 0
  %44 = call i32 @mtx_unlock(i32* %43)
  %45 = load i32, i32* @CTL_HA_CHAN_DATA, align 4
  %46 = load i32, i32* @M_WAITOK, align 4
  %47 = call i32 @ctl_ha_msg_send(i32 %45, %struct.ha_dt_msg_wire* %5, i32 24, i32 %46)
  %48 = load i32, i32* @CTL_HA_STATUS_WAIT, align 4
  store i32 %48, i32* %2, align 4
  br label %71

49:                                               ; preds = %28, %1
  %50 = load %struct.ctl_ha_dt_req*, %struct.ctl_ha_dt_req** %3, align 8
  %51 = getelementptr inbounds %struct.ctl_ha_dt_req, %struct.ctl_ha_dt_req* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CTL_HA_DT_CMD_READ, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* @CTL_HA_CHAN_DATA, align 4
  %57 = load i32, i32* @M_WAITOK, align 4
  %58 = call i32 @ctl_ha_msg_send(i32 %56, %struct.ha_dt_msg_wire* %5, i32 24, i32 %57)
  store i32 %58, i32* %6, align 4
  br label %69

59:                                               ; preds = %49
  %60 = load i32, i32* @CTL_HA_CHAN_DATA, align 4
  %61 = load %struct.ctl_ha_dt_req*, %struct.ctl_ha_dt_req** %3, align 8
  %62 = getelementptr inbounds %struct.ctl_ha_dt_req, %struct.ctl_ha_dt_req* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ctl_ha_dt_req*, %struct.ctl_ha_dt_req** %3, align 8
  %65 = getelementptr inbounds %struct.ctl_ha_dt_req, %struct.ctl_ha_dt_req* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @M_WAITOK, align 4
  %68 = call i32 @ctl_ha_msg_send2(i32 %60, %struct.ha_dt_msg_wire* %5, i32 24, i32 %63, i32 %66, i32 %67)
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %59, %55
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %33
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ctl_ha_dt_req*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ctl_ha_msg_send(i32, %struct.ha_dt_msg_wire*, i32, i32) #1

declare dso_local i32 @ctl_ha_msg_send2(i32, %struct.ha_dt_msg_wire*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
