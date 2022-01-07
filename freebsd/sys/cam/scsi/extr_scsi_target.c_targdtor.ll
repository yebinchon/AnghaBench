; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targdtor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targdtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type { i32* }
%struct.targ_softc = type { i32*, i32*, i32, i32 }
%struct.ccb_hdr = type opaque
%struct.targ_cmd_descr = type { i32 }
%union.ccb = type { i32 }

@periph_links = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@tqe = common dso_local global i32 0, align 4
@M_TARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*)* @targdtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @targdtor(%struct.cam_periph* %0) #0 {
  %2 = alloca %struct.cam_periph*, align 8
  %3 = alloca %struct.targ_softc*, align 8
  %4 = alloca %struct.ccb_hdr*, align 8
  %5 = alloca %struct.targ_cmd_descr*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %2, align 8
  %6 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %7 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = bitcast i32* %8 to %struct.targ_softc*
  store %struct.targ_softc* %9, %struct.targ_softc** %3, align 8
  br label %10

10:                                               ; preds = %16, %1
  %11 = load %struct.targ_softc*, %struct.targ_softc** %3, align 8
  %12 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %11, i32 0, i32 3
  %13 = call %struct.targ_cmd_descr* @TAILQ_FIRST(i32* %12)
  %14 = bitcast %struct.targ_cmd_descr* %13 to %struct.ccb_hdr*
  store %struct.ccb_hdr* %14, %struct.ccb_hdr** %4, align 8
  %15 = icmp ne %struct.ccb_hdr* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.targ_softc*, %struct.targ_softc** %3, align 8
  %18 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %17, i32 0, i32 3
  %19 = load %struct.ccb_hdr*, %struct.ccb_hdr** %4, align 8
  %20 = bitcast %struct.ccb_hdr* %19 to %struct.targ_cmd_descr*
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @periph_links, i32 0, i32 0), align 4
  %22 = call i32 @TAILQ_REMOVE(i32* %18, %struct.targ_cmd_descr* %20, i32 %21)
  %23 = load %struct.targ_softc*, %struct.targ_softc** %3, align 8
  %24 = load %struct.ccb_hdr*, %struct.ccb_hdr** %4, align 8
  %25 = bitcast %struct.ccb_hdr* %24 to %union.ccb*
  %26 = call i32 @targfreeccb(%struct.targ_softc* %23, %union.ccb* %25)
  br label %10

27:                                               ; preds = %10
  br label %28

28:                                               ; preds = %33, %27
  %29 = load %struct.targ_softc*, %struct.targ_softc** %3, align 8
  %30 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %29, i32 0, i32 2
  %31 = call %struct.targ_cmd_descr* @TAILQ_FIRST(i32* %30)
  store %struct.targ_cmd_descr* %31, %struct.targ_cmd_descr** %5, align 8
  %32 = icmp ne %struct.targ_cmd_descr* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.targ_softc*, %struct.targ_softc** %3, align 8
  %35 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %34, i32 0, i32 2
  %36 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %5, align 8
  %37 = load i32, i32* @tqe, align 4
  %38 = call i32 @TAILQ_REMOVE(i32* %35, %struct.targ_cmd_descr* %36, i32 %37)
  %39 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %5, align 8
  %40 = load i32, i32* @M_TARG, align 4
  %41 = call i32 @free(%struct.targ_cmd_descr* %39, i32 %40)
  br label %28

42:                                               ; preds = %28
  %43 = load %struct.targ_softc*, %struct.targ_softc** %3, align 8
  %44 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.targ_softc*, %struct.targ_softc** %3, align 8
  %46 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  %47 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %48 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  ret void
}

declare dso_local %struct.targ_cmd_descr* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.targ_cmd_descr*, i32) #1

declare dso_local i32 @targfreeccb(%struct.targ_softc*, %union.ccb*) #1

declare dso_local i32 @free(%struct.targ_cmd_descr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
