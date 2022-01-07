; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_hs20_supplicant.c_hs20_osu_icon_fetch_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_hs20_supplicant.c_hs20_osu_icon_fetch_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i64, %struct.osu_provider*, i32 }
%struct.osu_provider = type { i64, %struct.osu_icon* }
%struct.osu_icon = type { i32, i64 }
%struct.os_reltime = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"HS 2.0: Icon fetch dur=%d ms res=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, i32)* @hs20_osu_icon_fetch_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hs20_osu_icon_fetch_result(%struct.wpa_supplicant* %0, i32 %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.os_reltime, align 4
  %8 = alloca %struct.os_reltime, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.osu_provider*, align 8
  %11 = alloca %struct.osu_icon*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = call i32 @os_get_reltime(%struct.os_reltime* %7)
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 3
  %15 = call i32 @os_reltime_sub(%struct.os_reltime* %7, i32* %14, %struct.os_reltime* %8)
  %16 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %8, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 1000
  %19 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %8, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, 1000
  %22 = add nsw i32 %18, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @wpa_printf(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  store i64 0, i64* %5, align 8
  br label %27

27:                                               ; preds = %78, %2
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %30 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %81

33:                                               ; preds = %27
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %35 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %34, i32 0, i32 2
  %36 = load %struct.osu_provider*, %struct.osu_provider** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.osu_provider, %struct.osu_provider* %36, i64 %37
  store %struct.osu_provider* %38, %struct.osu_provider** %10, align 8
  store i64 0, i64* %6, align 8
  br label %39

39:                                               ; preds = %74, %33
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.osu_provider*, %struct.osu_provider** %10, align 8
  %42 = getelementptr inbounds %struct.osu_provider, %struct.osu_provider* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %77

45:                                               ; preds = %39
  %46 = load %struct.osu_provider*, %struct.osu_provider** %10, align 8
  %47 = getelementptr inbounds %struct.osu_provider, %struct.osu_provider* %46, i32 0, i32 1
  %48 = load %struct.osu_icon*, %struct.osu_icon** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.osu_icon, %struct.osu_icon* %48, i64 %49
  store %struct.osu_icon* %50, %struct.osu_icon** %11, align 8
  %51 = load %struct.osu_icon*, %struct.osu_icon** %11, align 8
  %52 = getelementptr inbounds %struct.osu_icon, %struct.osu_icon* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %45
  %56 = load %struct.osu_icon*, %struct.osu_icon** %11, align 8
  %57 = getelementptr inbounds %struct.osu_icon, %struct.osu_icon* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %45
  br label %74

61:                                               ; preds = %55
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.osu_icon*, %struct.osu_icon** %11, align 8
  %66 = getelementptr inbounds %struct.osu_icon, %struct.osu_icon* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %73

67:                                               ; preds = %61
  %68 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %69 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.osu_icon*, %struct.osu_icon** %11, align 8
  %72 = getelementptr inbounds %struct.osu_icon, %struct.osu_icon* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %67, %64
  br label %81

74:                                               ; preds = %60
  %75 = load i64, i64* %6, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %6, align 8
  br label %39

77:                                               ; preds = %39
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %5, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %5, align 8
  br label %27

81:                                               ; preds = %73, %27
  ret void
}

declare dso_local i32 @os_get_reltime(%struct.os_reltime*) #1

declare dso_local i32 @os_reltime_sub(%struct.os_reltime*, i32*, %struct.os_reltime*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
