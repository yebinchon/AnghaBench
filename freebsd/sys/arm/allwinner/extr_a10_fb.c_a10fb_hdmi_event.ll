; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_fb.c_a10fb_hdmi_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_fb.c_a10fb_hdmi_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videomode = type { i32, i64, i64, i64, i32, i32 }
%struct.a10fb_softc = type { i32 }
%struct.edid_info = type { %struct.videomode* }

@.str = private unnamed_addr constant [24 x i8] c"failed to get EDID: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to parse EDID: %d\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@FB_DEFAULT_W = common dso_local global i32 0, align 4
@FB_DEFAULT_H = common dso_local global i32 0, align 4
@FB_DEFAULT_REF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to find usable video mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"using %dx%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to configure FB: %d\0A\00", align 1
@VID_HSKEW = common dso_local global i32 0, align 4
@HDMI_ENABLE_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @a10fb_hdmi_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a10fb_hdmi_event(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.videomode*, align 8
  %6 = alloca %struct.videomode, align 8
  %7 = alloca %struct.a10fb_softc*, align 8
  %8 = alloca %struct.edid_info, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.a10fb_softc*
  store %struct.a10fb_softc* %13, %struct.a10fb_softc** %7, align 8
  store i32* null, i32** %9, align 8
  store i64 0, i64* %10, align 8
  store %struct.videomode* null, %struct.videomode** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @HDMI_GET_EDID(i32 %14, i32** %9, i64* %10)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.a10fb_softc*, %struct.a10fb_softc** %7, align 8
  %20 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 (i32, i8*, ...) @device_printf(i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %44

24:                                               ; preds = %2
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @edid_parse(i32* %25, %struct.edid_info* %8)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.a10fb_softc*, %struct.a10fb_softc** %7, align 8
  %31 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 (i32, i8*, ...) @device_printf(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %43

35:                                               ; preds = %24
  %36 = load i64, i64* @bootverbose, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @edid_print(%struct.edid_info* %8)
  br label %40

40:                                               ; preds = %38, %35
  %41 = getelementptr inbounds %struct.edid_info, %struct.edid_info* %8, i32 0, i32 0
  %42 = load %struct.videomode*, %struct.videomode** %41, align 8
  store %struct.videomode* %42, %struct.videomode** %5, align 8
  br label %43

43:                                               ; preds = %40, %29
  br label %44

44:                                               ; preds = %43, %18
  %45 = load %struct.videomode*, %struct.videomode** %5, align 8
  %46 = icmp eq %struct.videomode* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* @FB_DEFAULT_W, align 4
  %49 = load i32, i32* @FB_DEFAULT_H, align 4
  %50 = load i32, i32* @FB_DEFAULT_REF, align 4
  %51 = call %struct.videomode* @pick_mode_by_ref(i32 %48, i32 %49, i32 %50)
  store %struct.videomode* %51, %struct.videomode** %5, align 8
  br label %52

52:                                               ; preds = %47, %44
  %53 = load %struct.videomode*, %struct.videomode** %5, align 8
  %54 = icmp eq %struct.videomode* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.a10fb_softc*, %struct.a10fb_softc** %7, align 8
  %57 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, ...) @device_printf(i32 %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %114

60:                                               ; preds = %52
  %61 = load i64, i64* @bootverbose, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load %struct.a10fb_softc*, %struct.a10fb_softc** %7, align 8
  %65 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.videomode*, %struct.videomode** %5, align 8
  %68 = getelementptr inbounds %struct.videomode, %struct.videomode* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.videomode*, %struct.videomode** %5, align 8
  %71 = getelementptr inbounds %struct.videomode, %struct.videomode* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i8*, ...) @device_printf(i32 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %63, %60
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @HDMI_ENABLE(i32 %75, i32 0)
  %77 = load %struct.a10fb_softc*, %struct.a10fb_softc** %7, align 8
  %78 = call i32 @a10fb_enable_tcon(%struct.a10fb_softc* %77, i32 0)
  %79 = load %struct.a10fb_softc*, %struct.a10fb_softc** %7, align 8
  %80 = load %struct.videomode*, %struct.videomode** %5, align 8
  %81 = call i32 @a10fb_configure(%struct.a10fb_softc* %79, %struct.videomode* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %74
  %85 = load %struct.a10fb_softc*, %struct.a10fb_softc** %7, align 8
  %86 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 (i32, i8*, ...) @device_printf(i32 %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  br label %114

90:                                               ; preds = %74
  %91 = load %struct.videomode*, %struct.videomode** %5, align 8
  %92 = bitcast %struct.videomode* %6 to i8*
  %93 = bitcast %struct.videomode* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 40, i1 false)
  %94 = load %struct.videomode*, %struct.videomode** %5, align 8
  %95 = getelementptr inbounds %struct.videomode, %struct.videomode* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.videomode*, %struct.videomode** %5, align 8
  %98 = getelementptr inbounds %struct.videomode, %struct.videomode* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %96, %99
  %101 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 3
  store i64 %100, i64* %101, align 8
  %102 = load i32, i32* @VID_HSKEW, align 4
  %103 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %102
  store i32 %105, i32* %103, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @HDMI_SET_VIDEOMODE(i32 %106, %struct.videomode* %6)
  %108 = load %struct.a10fb_softc*, %struct.a10fb_softc** %7, align 8
  %109 = call i32 @a10fb_enable_tcon(%struct.a10fb_softc* %108, i32 1)
  %110 = load i32, i32* @HDMI_ENABLE_DELAY, align 4
  %111 = call i32 @DELAY(i32 %110)
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @HDMI_ENABLE(i32 %112, i32 1)
  br label %114

114:                                              ; preds = %90, %84, %55
  ret void
}

declare dso_local i32 @HDMI_GET_EDID(i32, i32**, i64*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @edid_parse(i32*, %struct.edid_info*) #1

declare dso_local i32 @edid_print(%struct.edid_info*) #1

declare dso_local %struct.videomode* @pick_mode_by_ref(i32, i32, i32) #1

declare dso_local i32 @HDMI_ENABLE(i32, i32) #1

declare dso_local i32 @a10fb_enable_tcon(%struct.a10fb_softc*, i32) #1

declare dso_local i32 @a10fb_configure(%struct.a10fb_softc*, %struct.videomode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @HDMI_SET_VIDEOMODE(i32, %struct.videomode*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
