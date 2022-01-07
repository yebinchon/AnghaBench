; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_est_ua.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_est_ua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_lun = type { i32**, i32, %struct.ctl_softc* }
%struct.ctl_softc = type { i64, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@CTL_MAX_INIT_PER_PORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_est_ua(%struct.ctl_lun* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctl_softc*, align 8
  %8 = alloca i32*, align 8
  store %struct.ctl_lun* %0, %struct.ctl_lun** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %10 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %9, i32 0, i32 2
  %11 = load %struct.ctl_softc*, %struct.ctl_softc** %10, align 8
  store %struct.ctl_softc* %11, %struct.ctl_softc** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.ctl_softc*, %struct.ctl_softc** %7, align 8
  %14 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.ctl_softc*, %struct.ctl_softc** %7, align 8
  %20 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %3
  br label %49

24:                                               ; preds = %17
  %25 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %26 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %25, i32 0, i32 1
  %27 = load i32, i32* @MA_OWNED, align 4
  %28 = call i32 @mtx_assert(i32* %26, i32 %27)
  %29 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %30 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %29, i32 0, i32 0
  %31 = load i32**, i32*** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @CTL_MAX_INIT_PER_PORT, align 8
  %34 = udiv i64 %32, %33
  %35 = getelementptr inbounds i32*, i32** %31, i64 %34
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  br label %49

40:                                               ; preds = %24
  %41 = load i32, i32* %6, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @CTL_MAX_INIT_PER_PORT, align 8
  %45 = urem i64 %43, %44
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %41
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %40, %39, %23
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
