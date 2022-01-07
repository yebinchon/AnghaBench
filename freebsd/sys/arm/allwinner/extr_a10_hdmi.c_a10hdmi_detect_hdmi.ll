; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmi.c_a10hdmi_detect_hdmi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmi.c_a10hdmi_detect_hdmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10hdmi_softc = type { i32 }
%struct.edid_info = type { i32 }

@EDID_LENGTH = common dso_local global i32 0, align 4
@CEA_DTD = common dso_local global i64 0, align 8
@DTD_BASIC_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a10hdmi_softc*, i32*, i32*)* @a10hdmi_detect_hdmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a10hdmi_detect_hdmi(%struct.a10hdmi_softc* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.a10hdmi_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.edid_info, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.a10hdmi_softc* %0, %struct.a10hdmi_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* @EDID_LENGTH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32*, i32** %6, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %4, align 8
  %19 = getelementptr inbounds %struct.a10hdmi_softc, %struct.a10hdmi_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @edid_parse(i32 %20, %struct.edid_info* %7)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  br label %54

24:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %25

25:                                               ; preds = %50, %24
  %26 = load i32, i32* %10, align 4
  %27 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sle i32 %26, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %25
  %31 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %4, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @a10hdmi_ddc_read(%struct.a10hdmi_softc* %31, i32 %32, i32* %15)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %11, align 4
  br label %54

36:                                               ; preds = %30
  %37 = call i64 @a10hdmi_detect_hdmi_vsdb(i32* %15)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i32*, i32** %5, align 8
  store i32 1, i32* %40, align 4
  %41 = load i64, i64* @CEA_DTD, align 8
  %42 = getelementptr inbounds i32, i32* %15, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DTD_BASIC_AUDIO, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  store i32 1, i32* %11, align 4
  br label %54

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %25

53:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %53, %39, %35, %23
  %55 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %11, align 4
  switch i32 %56, label %58 [
    i32 0, label %57
    i32 1, label %57
  ]

57:                                               ; preds = %54, %54
  ret void

58:                                               ; preds = %54
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @edid_parse(i32, %struct.edid_info*) #2

declare dso_local i64 @a10hdmi_ddc_read(%struct.a10hdmi_softc*, i32, i32*) #2

declare dso_local i64 @a10hdmi_detect_hdmi_vsdb(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
