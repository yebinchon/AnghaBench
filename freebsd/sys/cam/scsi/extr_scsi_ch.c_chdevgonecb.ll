; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_chdevgonecb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_chdevgonecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch_softc = type { i32 }
%struct.cam_periph = type { i64 }
%struct.mtx = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Negative open count %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @chdevgonecb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chdevgonecb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ch_softc*, align 8
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca %struct.mtx*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.cam_periph*
  store %struct.cam_periph* %8, %struct.cam_periph** %4, align 8
  %9 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %10 = call %struct.mtx* @cam_periph_mtx(%struct.cam_periph* %9)
  store %struct.mtx* %10, %struct.mtx** %5, align 8
  %11 = load %struct.mtx*, %struct.mtx** %5, align 8
  %12 = call i32 @mtx_lock(%struct.mtx* %11)
  %13 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %14 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ch_softc*
  store %struct.ch_softc* %16, %struct.ch_softc** %3, align 8
  %17 = load %struct.ch_softc*, %struct.ch_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load %struct.ch_softc*, %struct.ch_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @KASSERT(i32 %21, i8* %26)
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %37, %1
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.ch_softc*, %struct.ch_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %36 = call i32 @cam_periph_release_locked(%struct.cam_periph* %35)
  br label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %28

40:                                               ; preds = %28
  %41 = load %struct.ch_softc*, %struct.ch_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %44 = call i32 @cam_periph_release_locked(%struct.cam_periph* %43)
  %45 = load %struct.mtx*, %struct.mtx** %5, align 8
  %46 = call i32 @mtx_unlock(%struct.mtx* %45)
  ret void
}

declare dso_local %struct.mtx* @cam_periph_mtx(%struct.cam_periph*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @cam_periph_release_locked(%struct.cam_periph*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
