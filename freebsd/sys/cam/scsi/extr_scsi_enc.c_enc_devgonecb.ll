; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc.c_enc_devgonecb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc.c_enc_devgonecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i64 }
%struct.enc_softc = type { i32 }
%struct.mtx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @enc_devgonecb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enc_devgonecb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %struct.enc_softc*, align 8
  %5 = alloca %struct.mtx*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.cam_periph*
  store %struct.cam_periph* %8, %struct.cam_periph** %3, align 8
  %9 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %10 = call %struct.mtx* @cam_periph_mtx(%struct.cam_periph* %9)
  store %struct.mtx* %10, %struct.mtx** %5, align 8
  %11 = load %struct.mtx*, %struct.mtx** %5, align 8
  %12 = call i32 @mtx_lock(%struct.mtx* %11)
  %13 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %14 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.enc_softc*
  store %struct.enc_softc* %16, %struct.enc_softc** %4, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %26, %1
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.enc_softc*, %struct.enc_softc** %4, align 8
  %20 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %25 = call i32 @cam_periph_release_locked(%struct.cam_periph* %24)
  br label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %17

29:                                               ; preds = %17
  %30 = load %struct.enc_softc*, %struct.enc_softc** %4, align 8
  %31 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %33 = call i32 @cam_periph_release_locked(%struct.cam_periph* %32)
  %34 = load %struct.mtx*, %struct.mtx** %5, align 8
  %35 = call i32 @mtx_unlock(%struct.mtx* %34)
  ret void
}

declare dso_local %struct.mtx* @cam_periph_mtx(%struct.cam_periph*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @cam_periph_release_locked(%struct.cam_periph*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
