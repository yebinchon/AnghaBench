; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc.c_enc_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc.c_enc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64 }
%struct.thread = type { i32 }
%struct.cam_periph = type { i64 }
%struct.enc_softc = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@ENC_FLAG_INITIALIZED = common dso_local global i32 0, align 4
@ENC_FLAG_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @enc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enc_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.cam_periph*, align 8
  %11 = alloca %struct.enc_softc*, align 8
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.cdev*, %struct.cdev** %6, align 8
  %14 = getelementptr inbounds %struct.cdev, %struct.cdev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.cam_periph*
  store %struct.cam_periph* %16, %struct.cam_periph** %10, align 8
  %17 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %18 = call i64 @cam_periph_acquire(%struct.cam_periph* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %5, align 4
  br label %62

22:                                               ; preds = %4
  %23 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %24 = call i32 @cam_periph_lock(%struct.cam_periph* %23)
  %25 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %26 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.enc_softc*
  store %struct.enc_softc* %28, %struct.enc_softc** %11, align 8
  %29 = load %struct.enc_softc*, %struct.enc_softc** %11, align 8
  %30 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ENC_FLAG_INITIALIZED, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %12, align 4
  br label %47

37:                                               ; preds = %22
  %38 = load %struct.enc_softc*, %struct.enc_softc** %11, align 8
  %39 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ENC_FLAG_INVALID, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %12, align 4
  br label %47

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %44, %35
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %52 = call i32 @cam_periph_release_locked(%struct.cam_periph* %51)
  br label %58

53:                                               ; preds = %47
  %54 = load %struct.enc_softc*, %struct.enc_softc** %11, align 8
  %55 = getelementptr inbounds %struct.enc_softc, %struct.enc_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %53, %50
  %59 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %60 = call i32 @cam_periph_unlock(%struct.cam_periph* %59)
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %20
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i64 @cam_periph_acquire(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_release_locked(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
