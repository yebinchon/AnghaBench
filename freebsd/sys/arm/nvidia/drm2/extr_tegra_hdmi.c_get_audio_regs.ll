; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_get_audio_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_get_audio_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_reg = type { i32, i32, i32, i32 }

@audio_regs = common dso_local global %struct.audio_reg* null, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*)* @get_audio_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_audio_regs(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.audio_reg*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %53, %4
  %13 = load i32, i32* %10, align 4
  %14 = load %struct.audio_reg*, %struct.audio_reg** @audio_regs, align 8
  %15 = call i32 @nitems(%struct.audio_reg* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %12
  %18 = load %struct.audio_reg*, %struct.audio_reg** @audio_regs, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.audio_reg, %struct.audio_reg* %18, i64 %20
  store %struct.audio_reg* %21, %struct.audio_reg** %11, align 8
  %22 = load %struct.audio_reg*, %struct.audio_reg** %11, align 8
  %23 = getelementptr inbounds %struct.audio_reg, %struct.audio_reg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %17
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.audio_reg*, %struct.audio_reg** %11, align 8
  %32 = getelementptr inbounds %struct.audio_reg, %struct.audio_reg* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %27
  %36 = load i32*, i32** %8, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.audio_reg*, %struct.audio_reg** %11, align 8
  %40 = getelementptr inbounds %struct.audio_reg, %struct.audio_reg* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32*, i32** %9, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.audio_reg*, %struct.audio_reg** %11, align 8
  %48 = getelementptr inbounds %struct.audio_reg, %struct.audio_reg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %43
  store i32 0, i32* %5, align 4
  br label %58

52:                                               ; preds = %17
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %12

56:                                               ; preds = %12
  %57 = load i32, i32* @ERANGE, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %51
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @nitems(%struct.audio_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
