; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc.c_enc_dtor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc.c_enc_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { %struct.enc_softc* }
%struct.enc_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 (%struct.enc_softc.0*)* }
%struct.enc_softc.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*)* @enc_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enc_dtor(%struct.cam_periph* %0) #0 {
  %2 = alloca %struct.cam_periph*, align 8
  %3 = alloca %struct.enc_softc*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %2, align 8
  %4 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %5 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %4, i32 0, i32 0
  %6 = load %struct.enc_softc*, %struct.enc_softc** %5, align 8
  store %struct.enc_softc* %6, %struct.enc_softc** %3, align 8
  %7 = load %struct.enc_softc*, %struct.enc_softc** %3, align 8
  %8 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32 (%struct.enc_softc.0*)*, i32 (%struct.enc_softc.0*)** %9, align 8
  %11 = icmp ne i32 (%struct.enc_softc.0*)* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.enc_softc*, %struct.enc_softc** %3, align 8
  %14 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (%struct.enc_softc.0*)*, i32 (%struct.enc_softc.0*)** %15, align 8
  %17 = load %struct.enc_softc*, %struct.enc_softc** %3, align 8
  %18 = bitcast %struct.enc_softc* %17 to %struct.enc_softc.0*
  %19 = call i32 %16(%struct.enc_softc.0* %18)
  br label %20

20:                                               ; preds = %12, %1
  %21 = load %struct.enc_softc*, %struct.enc_softc** %3, align 8
  %22 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.enc_softc*, %struct.enc_softc** %3, align 8
  %28 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %27, i32 0, i32 0
  %29 = call i32 @config_intrhook_disestablish(%struct.TYPE_4__* %28)
  %30 = load %struct.enc_softc*, %struct.enc_softc** %3, align 8
  %31 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %26, %20
  %34 = load %struct.enc_softc*, %struct.enc_softc** %3, align 8
  %35 = call i32 @ENC_FREE(%struct.enc_softc* %34)
  ret void
}

declare dso_local i32 @config_intrhook_disestablish(%struct.TYPE_4__*) #1

declare dso_local i32 @ENC_FREE(%struct.enc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
