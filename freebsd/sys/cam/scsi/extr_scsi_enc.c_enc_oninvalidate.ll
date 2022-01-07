; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc.c_enc_oninvalidate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc.c_enc_oninvalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32, %struct.enc_softc* }
%struct.enc_softc = type { i32, i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.enc_softc.0*)* }
%struct.enc_softc.0 = type opaque

@ENC_FLAG_INVALID = common dso_local global i32 0, align 4
@enc_async = common dso_local global i32 0, align 4
@ENC_FLAG_SHUTDOWN = common dso_local global i32 0, align 4
@enc_devgonecb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*)* @enc_oninvalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enc_oninvalidate(%struct.cam_periph* %0) #0 {
  %2 = alloca %struct.cam_periph*, align 8
  %3 = alloca %struct.enc_softc*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %2, align 8
  %4 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %5 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %4, i32 0, i32 1
  %6 = load %struct.enc_softc*, %struct.enc_softc** %5, align 8
  store %struct.enc_softc* %6, %struct.enc_softc** %3, align 8
  %7 = load i32, i32* @ENC_FLAG_INVALID, align 4
  %8 = load %struct.enc_softc*, %struct.enc_softc** %3, align 8
  %9 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load %struct.enc_softc*, %struct.enc_softc** %3, align 8
  %13 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.enc_softc.0*)*, i32 (%struct.enc_softc.0*)** %14, align 8
  %16 = icmp ne i32 (%struct.enc_softc.0*)* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.enc_softc*, %struct.enc_softc** %3, align 8
  %19 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.enc_softc.0*)*, i32 (%struct.enc_softc.0*)** %20, align 8
  %22 = load %struct.enc_softc*, %struct.enc_softc** %3, align 8
  %23 = bitcast %struct.enc_softc* %22 to %struct.enc_softc.0*
  %24 = call i32 %21(%struct.enc_softc.0* %23)
  br label %25

25:                                               ; preds = %17, %1
  %26 = load i32, i32* @enc_async, align 4
  %27 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %28 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %29 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @xpt_register_async(i32 0, i32 %26, %struct.cam_periph* %27, i32 %30)
  %32 = load i32, i32* @ENC_FLAG_SHUTDOWN, align 4
  %33 = load %struct.enc_softc*, %struct.enc_softc** %3, align 8
  %34 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.enc_softc*, %struct.enc_softc** %3, align 8
  %38 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %25
  %42 = load %struct.enc_softc*, %struct.enc_softc** %3, align 8
  %43 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @wakeup(i32* %44)
  br label %46

46:                                               ; preds = %41, %25
  %47 = load %struct.enc_softc*, %struct.enc_softc** %3, align 8
  %48 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %47, i32 0, i32 1
  %49 = call i32 @callout_drain(i32* %48)
  %50 = load %struct.enc_softc*, %struct.enc_softc** %3, align 8
  %51 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @enc_devgonecb, align 4
  %54 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %55 = call i32 @destroy_dev_sched_cb(i32 %52, i32 %53, %struct.cam_periph* %54)
  ret void
}

declare dso_local i32 @xpt_register_async(i32, i32, %struct.cam_periph*, i32) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @destroy_dev_sched_cb(i32, i32, %struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
