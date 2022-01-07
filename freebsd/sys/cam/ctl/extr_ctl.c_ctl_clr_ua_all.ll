; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_clr_ua_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_clr_ua_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_lun = type { i32**, i32, %struct.ctl_softc* }
%struct.ctl_softc = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@CTL_MAX_INIT_PER_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_clr_ua_all(%struct.ctl_lun* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctl_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ctl_lun* %0, %struct.ctl_lun** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %11 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %10, i32 0, i32 2
  %12 = load %struct.ctl_softc*, %struct.ctl_softc** %11, align 8
  store %struct.ctl_softc* %12, %struct.ctl_softc** %7, align 8
  %13 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %14 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %13, i32 0, i32 1
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @mtx_assert(i32* %14, i32 %15)
  %17 = load %struct.ctl_softc*, %struct.ctl_softc** %7, align 8
  %18 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %69, %3
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.ctl_softc*, %struct.ctl_softc** %7, align 8
  %23 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %72

26:                                               ; preds = %20
  %27 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %28 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %69

36:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %65, %36
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @CTL_MAX_INIT_PER_PORT, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @CTL_MAX_INIT_PER_PORT, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %65

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %54 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %52
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %50, %49
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %37

68:                                               ; preds = %37
  br label %69

69:                                               ; preds = %68, %35
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %20

72:                                               ; preds = %20
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
